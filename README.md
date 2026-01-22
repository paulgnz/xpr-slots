# XPR Slots - Blockchain Slot Machine

A provably fair slot machine game built on XPR Network (testnet) with a ThreeJS 3D frontend.

## Features

- **100 XPR per spin** - Fixed spin cost
- **100,000 XPR Jackpot** - Win the entire jackpot pool
- **Provably fair** - Uses XPR Network's on-chain RNG oracle
- **5% House edge** - Transparent fee structure
- **3D Graphics** - ThreeJS powered slot machine visualization
- **WebAuth Wallet** - Connect with any XPR Network wallet

## Payouts

| Combination | Payout |
|-------------|--------|
| 7️⃣ 7️⃣ 7️⃣ | JACKPOT (100,000 XPR) |
| 🍒 🍒 🍒 | 500 XPR (5x) |
| 📊 📊 📊 | 300 XPR (3x) |
| 🔔 🔔 🔔 | 200 XPR (2x) |
| 🍋 🍋 🍋 | 150 XPR (1.5x) |
| Any 2 Match | 50 XPR (0.5x) |

## Project Structure

```
xpr-slots/
├── contract/
│   └── assembly/
│       ├── index.ts        # Smart contract source
│       └── target/         # Compiled WASM + ABI
├── frontend/
│   ├── index.html          # Main HTML page
│   └── src/
│       └── main.js         # ThreeJS + blockchain integration
├── scripts/
│   └── deploy.js           # Deployment script
├── vite.config.js          # Frontend build config
└── package.json
```

## Quick Start

### 1. Install Dependencies

```bash
npm install
cd contract && npm install && cd ..
```

### 2. Build the Smart Contract

```bash
cd contract
npx proton-asc assembly/index.ts
```

This creates `assembly/target/index.wasm` and `assembly/target/index.abi`.

### 3. Create Testnet Account

Set up the CLI for testnet:
```bash
npx proton chain:set proton-test
```

Create an account interactively:
```bash
npx proton account:create xprslots1111
```

When prompted:
- Enter or generate a private key
- Enter any email (e.g., `test@test.com`)
- Enter verification code: `000000`
- Enter display name: `XPR Slots`

### 4. Deploy the Contract

After creating the account, deploy:

```bash
# Add your private key
npx proton key:add YOUR_PRIVATE_KEY

# Buy RAM for contract (needs ~50KB)
npx proton ram:buy xprslots1111 xprslots1111 50000 -p xprslots1111@active

# Deploy WASM and ABI
npx proton contract:set xprslots1111 ./contract/assembly/target

# Enable inline actions (required for payouts)
npx proton contract:enableinline xprslots1111

# Initialize the contract
npx proton action xprslots1111 init '{"owner":"xprslots1111"}' xprslots1111
```

### 5. Fund the Contract

The contract needs XPR for payouts:

```bash
# Get testnet XPR from faucet
npx proton faucet:claim XPR xprslots1111

# Or transfer from another account
npx proton action eosio.token transfer '{"from":"youraccount","to":"xprslots1111","quantity":"10000.0000 XPR","memo":"deposit"}' youraccount
```

### 6. Start the Frontend

```bash
npm run dev
```

Visit `http://localhost:3000` in your browser.

## Smart Contract Actions

| Action | Description | Auth |
|--------|-------------|------|
| `init(owner)` | Initialize contract | Contract |
| `setpaused(paused)` | Pause/unpause | Owner |
| `transfer` (notify) | Handle incoming XPR | - |
| `receiverand` | RNG callback | RNG contract |
| `withdraw(amount, to)` | Withdraw house profits | Owner |
| `cleanup(gameId)` | Clean up stuck games | Owner |

## Smart Contract Tables

| Table | Description |
|-------|-------------|
| `config` | Contract configuration (singleton) |
| `games` | Active games waiting for RNG |
| `spinresults` | Historical spin results |
| `playerstats` | Per-player statistics |

## How It Works

1. **Player sends 100 XPR** to the contract with memo "spin"
2. **Contract records the game** and requests a random number from the RNG oracle
3. **RNG oracle generates** a cryptographically secure random value
4. **Contract receives random** and determines the spin outcome
5. **Winnings are paid** automatically via inline token transfer

### Distribution per Spin

- 85 XPR → Prize pool (for immediate payouts)
- 10 XPR → Jackpot pool (accumulates until won)
- 5 XPR → House edge

## Security Features

- **RNG Oracle verification**: Only the `rng` contract can call `receiverand`
- **Owner-only admin functions**: Pause, withdraw, cleanup
- **Automatic refunds**: Stuck games older than 1 hour can be cleaned up
- **No prediction possible**: Random numbers generated after bet is placed

## Configuration

Edit `frontend/src/main.js` to change:

```javascript
const CONFIG = {
  chainId: '71ee83bcf52142d61019d95f9cc5427ba6a0d7ff8accd9e2088ae2abeaf3d3dd', // Testnet
  endpoints: ['https://api-xprnetwork-test.saltant.io'],
  contractAccount: 'xprslots1111',  // Your contract account
  tokenContract: 'eosio.token',
  appName: 'XPR Slots',
  spinCost: '100.0000 XPR'
};
```

## CLI Commands Reference

```bash
# Check contract config
npx proton table xprslots1111 config

# Check recent spins
npx proton table xprslots1111 spinresults

# Check active games
npx proton table xprslots1111 games

# Check player stats
npx proton table xprslots1111 playerstats

# Pause contract
npx proton action xprslots1111 setpaused '{"paused":true}' xprslots1111

# Withdraw house profits
npx proton action xprslots1111 withdraw '{"amount":"100.0000 XPR","to":"youraccount"}' xprslots1111
```

## Testnet Resources

- **Explorer**: https://testnet.explorer.xprnetwork.org
- **API Endpoint**: https://api-xprnetwork-test.saltant.io
- **Faucet**: Use `npx proton faucet:claim XPR accountname`

## License

MIT

## Disclaimer

This is a demonstration project for educational purposes. Gambling may be illegal in your jurisdiction. This code is provided as-is without warranty.
