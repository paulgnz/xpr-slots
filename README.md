# XPR Slots

Provably fair blockchain slot machine on XPR Network.

**Live:** https://xprslots.com
**Contract:** `xprslots` (mainnet)
**Owner:** `protonnz`
**GitHub:** https://github.com/paulgnz/xpr-slots (private)

## Architecture

```
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│    Frontend     │────▶│   xprslots      │────▶│   rng oracle    │
│   (Vite/JS)     │     │   (contract)    │◀────│   (randomness)  │
└─────────────────┘     └─────────────────┘     └─────────────────┘
```

### Flow
1. User sends XPR to `xprslots` with memo `spin`
2. Contract requests random number from RNG oracle
3. Oracle calls `receiverand` with random value
4. Contract calculates result and pays out winnings

## Payouts

| Combination | Payout |
|-------------|--------|
| 7️⃣ 7️⃣ 7️⃣ | Jackpot (min 10,000 XPR) |
| 🍒 🍒 🍒 | 5x bet |
| 📊 📊 📊 | 3x bet |
| 🔔 🔔 🔔 | 2x bet |
| 🍋 🍋 🍋 | 1.5x bet |
| Any 2 match | 0.5x bet |

### Symbol Mapping
| Index | Symbol |
|-------|--------|
| 0 | 🍋 Lemon |
| 1 | 🍒 Cherry |
| 2 | 🔔 Bell |
| 3 | 📊 Bar |
| 4 | 7️⃣ Seven |

### Bet Limits
- **Minimum:** 1 XPR
- **Maximum:** 1,000 XPR
- **Max Payout Cap:** 1,000,000 XPR

## Bet Distribution

Every spin distributes the bet as follows:
- **5%** → House balance (profit)
- **10%** → Jackpot pool
- **85%** → Available for payouts

## Jackpot

**To win:** Get 7️⃣7️⃣7️⃣ (three Sevens)

**Probability:**
- Seven has 10/125 (8%) chance per reel
- Three Sevens = (10/125)³ = **0.051%** or ~**1 in 1,953 spins**

**Payout:**
- Winner receives the entire `jackpotPool`
- **Minimum guaranteed: 10,000 XPR** (even if pool is smaller)
- Capped at MAX_PAYOUT (1,000,000 XPR) and available contract balance

**Pool growth:**
- 10% of every bet automatically goes to jackpot pool
- Owner can top up via transfer with memo `jackpot`

## Transfer Memos

| Memo | Action |
|------|--------|
| `spin` | Play the slot machine |
| `deposit` | Add to house balance |
| `jackpot` | Add directly to jackpot pool |

---

## IMPORTANT: Accounting Notes

### Internal vs Actual Balance

The contract tracks two internal balances in the `config` table:
- `jackpotPool` - XPR reserved for jackpot
- `houseBalance` - House profits

**These are just numbers in a table, NOT actual token balances.**

The actual XPR is held in the `xprslots` eosio.token balance. These must stay in sync.

### Checking Balance Integrity

```bash
# Internal accounting
proton table xprslots config

# Actual XPR balance
proton account xprslots -t | grep XPR
```

**Rule:** `actual balance` must be >= `jackpotPool` (at minimum)

### RAM Purchase Incident (2026-01-22)

Bought 2MB RAM for the contract which cost ~4,660 XPR from the token balance. This created a mismatch because the internal accounting wasn't updated:

- Internal accounting: ~100,963 XPR
- Actual balance: ~98,485 XPR
- **Shortfall:** ~2,477 XPR

**Resolution:** Deposited 2,500 XPR with memo "deposit" to cover the shortfall.

**Lesson:** When buying RAM or doing anything that spends XPR from the contract account externally, you must deposit equivalent XPR to maintain accounting integrity.

---

## Admin Actions

All require `xprslots@owner` or `protonnz@active` authorization:

| Action | Description |
|--------|-------------|
| `pause` | Emergency stop - blocks new spins |
| `unpause` | Resume operations |
| `withdraw(to, amount)` | Withdraw from house balance only |
| `setowner(newowner)` | Transfer ownership |
| `cleanup(maxGames)` | Clear old pending games (>1hr) |
| `refund(gameId)` | Refund a specific stuck game |

## Security Features

- Oracle-based RNG (can't manipulate randomness)
- Owner-only admin functions with `requireAuth`
- MAX_PAYOUT cap (1,000,000 XPR)
- Minimum jackpot threshold (10,000 XPR)
- Pending spin tracking (prevents replay attacks)
- Balance checks before payouts
- Contract can only spend via defined actions

---

## Project Structure

```
xpr-slots/
├── contract/
│   └── assembly/
│       ├── index.ts          # Smart contract source
│       └── target/           # Compiled WASM + ABI
├── frontend/
│   ├── index.html            # UI + all CSS
│   ├── public/
│   │   └── og-image.png      # Social sharing image
│   └── src/
│       └── main.js           # Frontend logic
├── README.md
└── .gitignore
```

## Development

### Build Contract
```bash
cd contract
npm install
npm run build
```

### Deploy Contract
```bash
proton contract:set xprslots ./contract/assembly/target -p xprslots@owner
```

### Run Frontend Locally
```bash
cd frontend
npm install
npm run dev
```

---

## CLI Quick Reference

```bash
# Check account status
proton account xprslots -t

# Check contract config (jackpot, house balance, stats)
proton table xprslots config

# Check recent spin results
proton table xprslots spinresults

# Check player stats
proton table xprslots playerstats

# Check pending games (should be empty normally)
proton table xprslots games

# Buy RAM (if needed) - 2MB example
proton ram:buy xprslots xprslots 2097152 -p xprslots@owner

# Pause contract (emergency)
proton action xprslots pause '{}' xprslots@owner

# Unpause contract
proton action xprslots unpause '{}' xprslots@owner

# Withdraw house profits to protonnz
proton action xprslots withdraw '{"to":"protonnz","amount":"1000.0000 XPR"}' xprslots@owner

# Cleanup old stuck games
proton action xprslots cleanup '{"maxGames":10}' xprslots@owner
```

---

## Resources

- **Block Explorer:** https://explorer.xprnetwork.org/account/xprslots
- **RAM Portal:** https://resources.xprnetwork.org
- **XPR Network Docs:** https://docs.xprnetwork.org

## Changelog

### 2026-01-22 - Initial Mainnet Launch
- Deployed to `xprslots` on mainnet
- Owner set to `protonnz`
- Initial funding: 100,000 XPR
- RAM: 2.36 MB (enough for ~20k games)
- Mobile responsive UI
- Social meta tags (og:image)
- Fixed small amount display (0.5 XPR was showing as 0)
- Fixed logout button event listener
- Deposited 2,500 XPR to cover RAM purchase accounting gap
- Deposited 10,000 XPR buffer to protect jackpot reserve from regular payouts

### Known Issues / TODO
- No admin action to adjust internal balances (jackpotPool/houseBalance) - must deposit to correct any discrepancies
- Consider adding `adjustbalance` action for accounting corrections after RAM purchases
- **IMPORTANT:** `getAvailableBalance()` does not reserve jackpot pool - regular payouts can theoretically drain below jackpot. Mitigated by maintaining 10k+ XPR buffer above jackpot. Proper fix: modify function to return `totalBalance - jackpotPool`

---

## Disclaimer

This is a demonstration of blockchain-based gaming. Users must be 21+ years old. Do not use in jurisdictions where online gaming is prohibited. The software is provided "AS IS" without warranty. The developers assume no responsibility for any losses.

## License

MIT
