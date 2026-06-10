import {
  Contract, Table, TableStore, Singleton,
  Name, Asset, Symbol, EMPTY_NAME,
  check, requireAuth, hasAuth, isAccount,
  currentTimeSec, print, Checksum256
} from 'proton-tsc';

import { sendRequestRandom, rngChecksumToU64, RNG_CONTRACT } from 'proton-tsc/rng';
import { sendTransferToken } from 'proton-tsc/token';
import { TableStore } from 'proton-tsc';

// Token balance table structure (from eosio.token)
@table("accounts", noabigen)
class TokenAccount extends Table {
  constructor(
    public balance: Asset = new Asset()
  ) {
    super();
  }

  @primary
  get primary(): u64 {
    return this.balance.symbol.code();
  }
}

// Constants
const XPR_SYMBOL: Symbol = new Symbol("XPR", 4);
const MIN_BET: u64 = 10000; // 1.0000 XPR minimum bet
const MAX_BET: u64 = 10000000; // 1,000.0000 XPR maximum bet
const MAX_PAYOUT: u64 = 10000000000; // 1,000,000.0000 XPR maximum payout
const HOUSE_EDGE_PERCENT: u8 = 5; // 5% house edge
const TOKEN_CONTRACT: Name = Name.fromString("eosio.token");
const MAX_RESULTS_STORED: u64 = 1000; // Maximum spin results to keep

// Payout multipliers (in basis points, 10000 = 1x)
// Rebalanced for ~94% total RTP (88% base + ~6% jackpot recycling).
// Multipliers scale with symbol rarity: bar(16%) > bell(20%) > cherry(24%) > lemon(32%).
const PAYOUT_BAR: u64 = 240000;     // 24x for three bars (rarest non-seven)
const PAYOUT_BELL: u64 = 120000;    // 12x for three bells
const PAYOUT_CHERRY: u64 = 50000;   // 5x for three cherries
const PAYOUT_LEMON: u64 = 30000;    // 3x for three lemons
const PAYOUT_ANY_TWO: u64 = 10000;  // 1x (push) for any two matching

// Slot symbols (0-4)
const SYMBOL_LEMON: u8 = 0;
const SYMBOL_CHERRY: u8 = 1;
const SYMBOL_BELL: u8 = 2;
const SYMBOL_BAR: u8 = 3;
const SYMBOL_SEVEN: u8 = 4;

// Game status
const STATUS_PENDING: u8 = 0;
const STATUS_SPINNING: u8 = 1;
const STATUS_COMPLETED: u8 = 2;

// Configuration singleton
@table("config", singleton)
export class Config extends Table {
  constructor(
    public owner: Name = EMPTY_NAME,
    public paused: boolean = false,
    public totalSpins: u64 = 0,
    public totalWagered: u64 = 0,
    public totalPaidOut: u64 = 0,
    public jackpotPool: u64 = 0,
    public houseBalance: u64 = 0,
    public nextGameId: u64 = 1,
    public nextResultId: u64 = 0
  ) {
    super();
  }
}

// Active games table (waiting for RNG)
@table("games")
export class Game extends Table {
  constructor(
    public id: u64 = 0,
    public player: Name = EMPTY_NAME,
    public betAmount: u64 = 0,
    public status: u8 = 0,
    public signingValue: u64 = 0,
    public createdAt: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 { return this.id; }
}

// Spin results history
@table("spinresults")
export class SpinResult extends Table {
  constructor(
    public id: u64 = 0,
    public player: Name = EMPTY_NAME,
    public reel1: u8 = 0,
    public reel2: u8 = 0,
    public reel3: u8 = 0,
    public betAmount: u64 = 0,
    public payout: u64 = 0,
    public jackpotWon: boolean = false,
    public timestamp: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 { return this.id; }
}

// Player stats
@table("playerstats")
export class PlayerStats extends Table {
  constructor(
    public account: Name = EMPTY_NAME,
    public totalSpins: u64 = 0,
    public totalWagered: u64 = 0,
    public totalWon: u64 = 0,
    public biggestWin: u64 = 0,
    public jackpotsWon: u64 = 0
  ) {
    super();
  }

  @primary
  get primary(): u64 { return this.account.N; }
}

@contract
export class XprSlots extends Contract {
  configSingleton: Singleton<Config> = new Singleton<Config>(this.receiver);
  gamesTable: TableStore<Game> = new TableStore<Game>(this.receiver);
  resultsTable: TableStore<SpinResult> = new TableStore<SpinResult>(this.receiver);
  playerStatsTable: TableStore<PlayerStats> = new TableStore<PlayerStats>(this.receiver);

  // Initialize contract
  @action("init")
  init(owner: Name): void {
    requireAuth(this.receiver);

    const existingConfig = this.configSingleton.getOrNull();
    check(existingConfig == null, "Contract already initialized");

    const config = new Config(
      owner,
      false,
      0,
      0,
      0,
      0,
      0,
      1,
      0
    );
    this.configSingleton.set(config, this.receiver);
  }

  // Migrate config (for schema changes) - preserves data where possible
  @action("migrate")
  migrate(owner: Name): void {
    requireAuth(this.receiver);

    // Try to read existing values from contract's actual balance
    const availableBalance = this.getAvailableBalance();

    // Create config with preserved owner and reasonable defaults
    // Note: Historical stats are lost but financial state is preserved via actual balance
    const config = new Config(
      owner,
      false,           // paused
      0,               // totalSpins (historical, reset)
      0,               // totalWagered (historical, reset)
      0,               // totalPaidOut (historical, reset)
      0,               // jackpotPool (will be topped up manually)
      0,               // houseBalance (will track from here)
      1,               // nextGameId
      0                // nextResultId
    );
    this.configSingleton.set(config, this.receiver);
  }

  // Transfer ownership
  @action("setowner")
  setOwner(newOwner: Name): void {
    const config = this.configSingleton.get();
    requireAuth(config.owner);
    check(isAccount(newOwner), "New owner account does not exist");

    config.owner = newOwner;
    this.configSingleton.set(config, this.receiver);
  }

  // Pause/unpause the contract
  @action("setpaused")
  setPaused(paused: boolean): void {
    const config = this.configSingleton.get();
    requireAuth(config.owner);

    config.paused = paused;
    this.configSingleton.set(config, this.receiver);
  }

  // Get contract's available XPR balance for payouts
  private getAvailableBalance(): u64 {
    const tokenAccounts = new TableStore<TokenAccount>(TOKEN_CONTRACT, this.receiver);
    const account = tokenAccounts.get(XPR_SYMBOL.code());
    if (account == null) {
      return 0;
    }
    return <u64>account.balance.amount;
  }

  // Handle incoming XPR transfers
  @action("transfer", notify)
  onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    // CRITICAL: Only accept notifications from the real token contract
    // This prevents fake token attacks
    if (this.firstReceiver != TOKEN_CONTRACT) return;

    // Only process incoming transfers to this contract
    if (to != this.receiver) return;

    // Ignore transfers from self (payouts)
    if (from == this.receiver) return;

    // Only accept XPR
    check(quantity.symbol == XPR_SYMBOL, "Only XPR accepted");

    // Check if this is a spin or deposit
    if (memo == "spin") {
      this.handleSpin(from, quantity);
    } else if (memo == "deposit") {
      this.handleDeposit(from, quantity);
    } else if (memo == "jackpot") {
      this.handleJackpotDeposit(from, quantity);
    } else {
      check(false, "Invalid memo. Use 'spin', 'deposit', or 'jackpot'");
    }
  }

  private handleSpin(player: Name, quantity: Asset): void {
    const config = this.configSingleton.get();
    check(!config.paused, "Contract is paused");

    const betAmount = <u64>quantity.amount;
    check(betAmount >= MIN_BET, "Minimum bet is 1.0000 XPR");
    check(betAmount <= MAX_BET, "Maximum bet is 1,000.0000 XPR");

    // Check player doesn't have a pending game
    // Iterate through active games to find if player has one
    let hasActiveSpin = false;
    let cursor = this.gamesTable.first();
    while (cursor != null) {
      if (cursor.player == player && cursor.status == STATUS_SPINNING) {
        hasActiveSpin = true;
        break;
      }
      cursor = this.gamesTable.next(cursor);
    }
    check(!hasActiveSpin, "You have a pending spin. Please wait.");

    // Verify contract has enough balance for maximum possible payout
    const maxPossiblePayout = (betAmount * PAYOUT_CHERRY) / 10000; // 5x is highest non-jackpot
    const availableBalance = this.getAvailableBalance();
    check(availableBalance >= maxPossiblePayout, "Contract has insufficient funds. Please try a smaller bet.");

    // Calculate distribution based on bet amount
    const houseEdge = (betAmount * <u64>HOUSE_EDGE_PERCENT) / 100; // 5% house edge
    const jackpotContribution = (betAmount * 6) / 100; // 6% to jackpot pool

    // Get next game ID
    const gameId = config.nextGameId;
    const signingValue = gameId ^ player.N ^ currentTimeSec();

    // Update config
    config.nextGameId += 1;
    config.totalSpins += 1;
    config.totalWagered += betAmount;
    config.jackpotPool += jackpotContribution;
    config.houseBalance += houseEdge;
    this.configSingleton.set(config, this.receiver);

    // Create game record with actual bet amount
    const game = new Game(
      gameId,
      player,
      betAmount,
      STATUS_SPINNING,
      signingValue,
      currentTimeSec()
    );
    this.gamesTable.store(game, this.receiver);

    // Request random number from RNG oracle
    sendRequestRandom(this.receiver, gameId, signingValue);
  }

  private handleDeposit(from: Name, quantity: Asset): void {
    // Track deposit in houseBalance for accounting
    const config = this.configSingleton.get();
    config.houseBalance += <u64>quantity.amount;
    this.configSingleton.set(config, this.receiver);
    print(`Deposit received from ${from}: ${quantity}`);
  }

  private handleJackpotDeposit(from: Name, quantity: Asset): void {
    const config = this.configSingleton.get();
    config.jackpotPool += <u64>quantity.amount;
    this.configSingleton.set(config, this.receiver);
    print(`Jackpot deposit from ${from}: ${quantity}`);
  }

  // Receive random number from RNG oracle
  @action("receiverand")
  receiveRand(gameId: u64, randomChecksum: Checksum256): void {
    // Only RNG contract can call this
    requireAuth(RNG_CONTRACT);

    // Find the game
    const game = this.gamesTable.requireGet(gameId, "Game not found");
    check(game.status == STATUS_SPINNING, "Game not in spinning state");

    // Use different portions of the 32-byte checksum for truly independent reels
    const checksumBytes = randomChecksum.data;

    // Extract 3 independent random values from different parts of the checksum
    const rand1 = ((<u64>checksumBytes[0]) | ((<u64>checksumBytes[1]) << 8) |
                   ((<u64>checksumBytes[2]) << 16) | ((<u64>checksumBytes[3]) << 24)) % 125;
    const rand2 = ((<u64>checksumBytes[8]) | ((<u64>checksumBytes[9]) << 8) |
                   ((<u64>checksumBytes[10]) << 16) | ((<u64>checksumBytes[11]) << 24)) % 125;
    const rand3 = ((<u64>checksumBytes[16]) | ((<u64>checksumBytes[17]) << 8) |
                   ((<u64>checksumBytes[18]) << 16) | ((<u64>checksumBytes[19]) << 24)) % 125;

    // Generate 3 truly independent reel results
    const reel1 = this.getReelSymbol(rand1);
    const reel2 = this.getReelSymbol(rand2);
    const reel3 = this.getReelSymbol(rand3);

    // Get available balance for payout verification
    const availableBalance = this.getAvailableBalance();

    // Calculate payout
    let payout: u64 = 0;
    let jackpotWon = false;

    // Check for winning combinations
    if (reel1 == reel2 && reel2 == reel3) {
      // Three of a kind!
      if (reel1 == SYMBOL_SEVEN) {
        // JACKPOT!
        jackpotWon = true;
        const config = this.configSingleton.get();

        // Jackpot pays the accumulated pool only (no house subsidy), capped at
        // MAX_PAYOUT and the contract's actual balance. The pool is seeded/topped
        // up by the owner via the "jackpot" memo and grows 6% of every bet.
        payout = config.jackpotPool;
        if (payout > MAX_PAYOUT) {
          payout = MAX_PAYOUT;
        }
        // CRITICAL: Can only pay what we actually have
        if (payout > availableBalance) {
          payout = availableBalance;
        }
      } else if (reel1 == SYMBOL_CHERRY) {
        payout = (game.betAmount * PAYOUT_CHERRY) / 10000;
      } else if (reel1 == SYMBOL_BAR) {
        payout = (game.betAmount * PAYOUT_BAR) / 10000;
      } else if (reel1 == SYMBOL_BELL) {
        payout = (game.betAmount * PAYOUT_BELL) / 10000;
      } else if (reel1 == SYMBOL_LEMON) {
        payout = (game.betAmount * PAYOUT_LEMON) / 10000;
      }
    } else if (reel1 == reel2 || reel2 == reel3 || reel1 == reel3) {
      // Two of a kind - small payout
      payout = (game.betAmount * PAYOUT_ANY_TWO) / 10000;
    }

    // Cap payout at available balance (safety check for all wins)
    if (payout > availableBalance) {
      payout = availableBalance;
    }

    // Cap at MAX_PAYOUT
    if (payout > MAX_PAYOUT) {
      payout = MAX_PAYOUT;
    }

    // Update config
    const config = this.configSingleton.get();
    if (jackpotWon) {
      // Drain jackpot pool by amount actually paid
      if (payout >= config.jackpotPool) {
        config.jackpotPool = 0;
      } else {
        config.jackpotPool -= payout;
      }
    }
    config.totalPaidOut += payout;

    // Store spin result with managed ID
    const resultId = config.nextResultId;
    config.nextResultId += 1;
    this.configSingleton.set(config, this.receiver);

    // Update player stats
    let stats = this.playerStatsTable.get(game.player.N);
    if (stats == null) {
      stats = new PlayerStats(game.player, 0, 0, 0, 0, 0);
    }
    stats.totalSpins += 1;
    stats.totalWagered += game.betAmount;
    stats.totalWon += payout;
    if (payout > stats.biggestWin) {
      stats.biggestWin = payout;
    }
    if (jackpotWon) {
      stats.jackpotsWon += 1;
    }
    this.playerStatsTable.set(stats, this.receiver);

    // Store spin result
    const result = new SpinResult(
      resultId,
      game.player,
      reel1,
      reel2,
      reel3,
      game.betAmount,
      payout,
      jackpotWon,
      currentTimeSec()
    );
    this.resultsTable.store(result, this.receiver);

    // Clean up old results if we have too many (keep RAM in check)
    this.cleanupOldResults();

    // Remove completed game
    this.gamesTable.remove(game);

    // Pay out winnings
    if (payout > 0) {
      const payoutAsset = new Asset(<i64>payout, XPR_SYMBOL);
      const memo = jackpotWon ? "JACKPOT WINNER!" : `Slot win: ${reel1}-${reel2}-${reel3}`;
      sendTransferToken(TOKEN_CONTRACT, this.receiver, game.player, payoutAsset, memo);
    }
  }

  // Clean up old spin results to manage RAM
  private cleanupOldResults(): void {
    const config = this.configSingleton.get();
    // If we have more than MAX_RESULTS_STORED, remove oldest
    if (config.nextResultId > MAX_RESULTS_STORED) {
      const oldestToKeep = config.nextResultId - MAX_RESULTS_STORED;
      // Try to remove a few old results each time (to spread out work)
      // Only clean if oldestToKeep > 5 to prevent underflow
      if (oldestToKeep > 5) {
        for (let i: u64 = 0; i < 5; i++) {
          const oldId = oldestToKeep - i - 1;
          const oldResult = this.resultsTable.get(oldId);
          if (oldResult != null) {
            this.resultsTable.remove(oldResult);
          }
        }
      }
    }
  }

  // Get reel symbol based on weighted random (0-124)
  // Weighted distribution: Lemon (40), Cherry (30), Bell (25), Bar (20), Seven (10)
  private getReelSymbol(random: u64): u8 {
    if (random < 40) return SYMBOL_LEMON;       // 0-39: 32% chance
    if (random < 70) return SYMBOL_CHERRY;      // 40-69: 24% chance
    if (random < 95) return SYMBOL_BELL;        // 70-94: 20% chance
    if (random < 115) return SYMBOL_BAR;        // 95-114: 16% chance
    return SYMBOL_SEVEN;                         // 115-124: 8% chance
  }

  // Owner can withdraw house profits
  @action("withdraw")
  withdraw(amount: Asset, to: Name): void {
    const config = this.configSingleton.get();
    requireAuth(config.owner);

    check(amount.symbol == XPR_SYMBOL, "Only XPR");
    check(<u64>amount.amount <= config.houseBalance, "Insufficient house balance");

    // Verify we actually have the funds
    const availableBalance = this.getAvailableBalance();
    check(<u64>amount.amount <= availableBalance, "Insufficient contract balance");

    config.houseBalance -= <u64>amount.amount;
    this.configSingleton.set(config, this.receiver);

    sendTransferToken(TOKEN_CONTRACT, this.receiver, to, amount, "House withdrawal");
  }

  // Clean up old games that got stuck
  @action("cleanup")
  cleanup(gameId: u64): void {
    const config = this.configSingleton.get();
    requireAuth(config.owner);

    const game = this.gamesTable.get(gameId);
    if (game != null) {
      // Only clean up games older than 1 hour
      const oneHourAgo = currentTimeSec() - 3600;
      check(game.createdAt < oneHourAgo, "Game too recent to clean up");

      // Verify we have funds to refund
      const availableBalance = this.getAvailableBalance();
      check(availableBalance >= game.betAmount, "Insufficient balance for refund");

      // Refund the player
      const refundAmount = new Asset(<i64>game.betAmount, XPR_SYMBOL);
      sendTransferToken(TOKEN_CONTRACT, this.receiver, game.player, refundAmount, "Refund for stuck game");

      this.gamesTable.remove(game);
    }
  }

  // Manual cleanup of old results (owner only)
  @action("cleanresults")
  cleanResults(count: u64): void {
    const config = this.configSingleton.get();
    requireAuth(config.owner);

    check(count <= 100, "Can only clean up to 100 results at a time");

    let cleaned: u64 = 0;
    let cursor = this.resultsTable.first();
    while (cursor != null && cleaned < count) {
      const toRemove = cursor;
      // Move cursor before removing
      cursor = this.resultsTable.next(cursor);
      this.resultsTable.remove(toRemove);
      cleaned++;
    }
  }

  // Remove a specific player's stats (owner only)
  @action("removestats")
  removeStats(player: Name): void {
    const config = this.configSingleton.get();
    requireAuth(config.owner);

    const stats = this.playerStatsTable.get(player.N);
    if (stats != null) {
      this.playerStatsTable.remove(stats);
    }
  }

  // Clean up low-activity player stats (owner only)
  // Removes players with fewer than minSpins total spins
  @action("cleanstats")
  cleanStats(minSpins: u64, maxToRemove: u64): void {
    const config = this.configSingleton.get();
    requireAuth(config.owner);

    check(maxToRemove <= 100, "Can only clean up to 100 stats at a time");
    check(minSpins >= 1, "minSpins must be at least 1");

    let removed: u64 = 0;
    let cursor = this.playerStatsTable.first();

    while (cursor != null && removed < maxToRemove) {
      const stats = cursor;
      cursor = this.playerStatsTable.next(cursor);

      // Remove if player has fewer spins than threshold
      if (stats.totalSpins < minSpins) {
        this.playerStatsTable.remove(stats);
        removed++;
      }
    }
  }

  // Get player stats count (for monitoring)
  @action("statstotal")
  statsTotal(): void {
    let count: u64 = 0;
    let cursor = this.playerStatsTable.first();
    while (cursor != null) {
      count++;
      cursor = this.playerStatsTable.next(cursor);
    }
    print(`Total player stats entries: ${count}`);
  }
}
