# Documentation Update Suggestions for xpr-network-dev Skill

## Issue Discovered: Mobile Wallet Signing Requires @proton/link

**Date**: 2026-01-22
**Project**: xpr-slots (https://github.com/paulgnz/xpr-slots)
**Affected File**: `web-sdk.md`

### Problem

When building a dApp with `@proton/web-sdk`, mobile wallet signing (WebAuth mobile app) does not work without also installing and importing `@proton/link`. The symptoms are:

- Signing gets stuck on "processing" forever in mobile browser
- WebAuth mobile app doesn't open for authorization
- Shows "unknown requestor" error
- Desktop browser works fine

### Root Cause

The `@proton/link` package provides the transport layer for mobile deep linking. Without it, the SDK cannot communicate with the WebAuth mobile app to request transaction signatures.

### Solution

Install and import `@proton/link` alongside `@proton/web-sdk`:

```bash
npm install @proton/web-sdk @proton/link
```

```javascript
import ProtonWebSDK from '@proton/web-sdk';
import '@proton/link'; // Required for mobile wallet transport
```

The import doesn't need to be used directly - just loading the module enables the mobile transport.

### Suggested Documentation Updates

#### 1. Update Installation Section in `web-sdk.md`

Change from:
```bash
npm install @proton/web-sdk
```

To:
```bash
npm install @proton/web-sdk @proton/link
```

#### 2. Update Quick Start Code Examples

Add the import:
```typescript
import ProtonWebSDK from '@proton/web-sdk';
import '@proton/link'; // Required for mobile wallet support
```

#### 3. Add New Section: "Mobile Wallet Support"

Suggested content:

```markdown
## Mobile Wallet Support

For mobile wallet signing to work (WebAuth iOS/Android app), you must install and import `@proton/link`:

### Installation

\`\`\`bash
npm install @proton/web-sdk @proton/link
\`\`\`

### Import

\`\`\`typescript
import ProtonWebSDK from '@proton/web-sdk';
import '@proton/link'; // Required - enables mobile deep linking transport
\`\`\`

**Note**: The `@proton/link` import doesn't expose any API you need to call directly. Simply importing it registers the transport handlers needed for mobile wallet communication.

### Symptoms of Missing @proton/link

If you forget to install/import `@proton/link`:
- Desktop signing works normally
- Mobile browser shows "processing" indefinitely
- WebAuth mobile app never opens for authorization
- May show "unknown requestor" error

### Recommended Version

Use `@proton/link@^3.2.3-27` or later for best compatibility.
```

#### 4. Update Key Packages Table in Main Skill File

Add `@proton/link` to the packages table:

| Package | Purpose | Install |
|---------|---------|---------|
| `@proton/cli` | Command-line tools | `npm i -g @proton/cli` |
| `proton-tsc` | Contract development | `npm i proton-tsc` |
| `@proton/web-sdk` | Frontend wallet integration | `npm i @proton/web-sdk` |
| `@proton/link` | Mobile wallet transport | `npm i @proton/link` |
| `@proton/js` | RPC queries | `npm i @proton/js` |

#### 5. Update Troubleshooting Section (if exists) or Add to Known Issues

```markdown
### Mobile Signing Not Working

**Symptom**: Transaction signing works on desktop but hangs on mobile, WebAuth app doesn't open.

**Cause**: Missing `@proton/link` package which provides mobile transport.

**Solution**:
\`\`\`bash
npm install @proton/link
\`\`\`

Then add import:
\`\`\`typescript
import '@proton/link';
\`\`\`
```

---

## Issue Discovered: Safari iOS Blocks WebAuth Popups by Default

**Date**: 2026-01-22
**Project**: xpr-slots (https://github.com/paulgnz/xpr-slots)
**Affected File**: `web-sdk.md`

### Problem

On Safari iOS, the WebAuth browser wallet signing flow doesn't work by default. Users see:
- "Processing..." spinner that never completes
- "Unknown requestor" message
- WebAuth popup window never opens

Desktop browsers (Chrome, Safari on macOS) work fine.

### Root Cause

Safari iOS blocks popups by default. The `@proton/web-sdk` uses popup windows to open webauth.com for transaction signing. When popups are blocked, the signing request never reaches WebAuth.

### Solution

Users must **allow popups for the dApp domain** in Safari iOS settings:

1. Open **Settings** app on iPhone/iPad
2. Scroll to **Safari**
3. Turn **OFF** the "Block Pop-ups" toggle

Or allow popups for a specific site when prompted.

### Suggested Documentation Updates

#### Add to "Known Issues" or "Troubleshooting" section in `web-sdk.md`:

```markdown
### Safari iOS: Signing Stuck on "Processing"

**Symptom**: On Safari iOS, clicking actions that require wallet signing shows "Processing..." forever. The WebAuth popup never opens.

**Cause**: Safari iOS blocks popups by default, and WebAuth uses popups for signing.

**Solution**:
1. Go to **Settings** > **Safari** on your iOS device
2. Turn **OFF** "Block Pop-ups"

Alternatively, users can use:
- The WebAuth mobile app (deep links work without popups)
- A different browser like Chrome on iOS
- Desktop browser

**Note for developers**: Consider showing a help message after a few seconds of "processing" to guide users to check their popup blocker settings.
```

#### Add to "Mobile Wallet Support" section:

```markdown
### Safari iOS Popup Blocker

Safari iOS blocks popups by default, which prevents the WebAuth browser wallet from opening. Users on Safari iOS should either:

1. Disable popup blocker: **Settings** > **Safari** > **Block Pop-ups** OFF
2. Use the WebAuth mobile app instead of the browser wallet
3. Use a different browser (Chrome, Firefox)

Your dApp should display helpful guidance when signing appears stuck.
```

---

## Complete Mobile Wallet Integration Guide

**Date**: 2026-01-23
**Projects**: xpr-slots, simple-dex

This section consolidates all lessons learned from debugging mobile wallet issues across multiple projects.

### The 6 Critical Requirements

| # | Requirement | Why It Matters |
|---|-------------|----------------|
| 1 | Install both packages | `@proton/link` provides mobile transport layer |
| 2 | Use dynamic imports with Promise.all | Static imports don't reliably initialize mobile handlers |
| 3 | Set `requestAccount` | Identifies your dApp for deep link callbacks |
| 4 | Set `enabledWalletTypes` | Shows both browser and mobile wallet options |
| 5 | Set `requestStatus: true` | Enables proper callback handling |
| 6 | Set meaningful `appName` | Shows in WebAuth app during approval |

### Complete Working Configuration

```typescript
// 1. INSTALL BOTH PACKAGES
// npm install @proton/web-sdk @proton/link

// 2. DYNAMIC IMPORTS (Critical for mobile!)
let ProtonWebSDK: any;
let sdkReady: Promise<void> | null = null;

if (typeof window !== 'undefined') {
  sdkReady = Promise.all([
    import('@proton/web-sdk').then((mod) => {
      ProtonWebSDK = mod.default;
    }),
    import('@proton/link')  // Critical for mobile deep linking
  ]).then(() => {});
}

async function waitForSdk() {
  if (sdkReady) await sdkReady;
}

// 3. LOGIN FUNCTION WITH ALL REQUIRED OPTIONS
async function login() {
  await waitForSdk();  // MUST await before using SDK

  const { link, session } = await ProtonWebSDK({
    linkOptions: {
      chainId: '384da888112027f0321850a169f737c33e53b388aad48b5adace4bab97f437e0',
      endpoints: ['https://proton.greymass.com', 'https://proton.eosusa.io'],
      restoreSession: false
    },
    transportOptions: {
      requestAccount: 'xprslots',   // Your contract/app account name
      requestStatus: true           // Enable callback status
    },
    selectorOptions: {
      appName: 'XPR Slots',         // Shows in WebAuth app
      enabledWalletTypes: ['webauth', 'proton']  // Show both options
    }
  });

  return { link, session };
}

// 4. SESSION RESTORE (same options)
async function restoreSession() {
  await waitForSdk();

  const { link, session } = await ProtonWebSDK({
    linkOptions: {
      chainId: '384da888112027f0321850a169f737c33e53b388aad48b5adace4bab97f437e0',
      endpoints: ['https://proton.greymass.com', 'https://proton.eosusa.io'],
      restoreSession: true  // Only difference
    },
    transportOptions: {
      requestAccount: 'xprslots',
      requestStatus: true
    },
    selectorOptions: {
      appName: 'XPR Slots',
      enabledWalletTypes: ['webauth', 'proton']
    }
  });

  return { link, session };
}
```

### Troubleshooting Quick Reference

| Symptom | Cause | Fix |
|---------|-------|-----|
| Mobile stuck on "Processing...", app never opens | Missing `@proton/link` or using static import | Use dynamic import with Promise.all pattern |
| Shows "Unknown requestor" | `requestAccount` is empty or missing | Set `requestAccount` to your contract name |
| Mobile app signs but doesn't return to browser | `requestAccount` wrong or `requestStatus` missing | Verify account exists, add `requestStatus: true` |
| Only browser wallet option shown | `enabledWalletTypes` not set | Add `enabledWalletTypes: ['webauth', 'proton']` |
| Safari iOS popup blocked | Safari blocks popups by default | User: Settings > Safari > Block Pop-ups OFF |
| WebAuth iOS caches wrong session | iOS app bug | Force quit WebAuth app before switching accounts |

### Why Static Imports Don't Work

```typescript
// BAD - May not work on mobile
import ProtonWebSDK from '@proton/web-sdk';
import '@proton/link';

// The problem: Module initialization order is not guaranteed.
// @proton/link's transport handlers may not be registered
// before ProtonWebSDK is called.

// GOOD - Works reliably on mobile
const sdkReady = Promise.all([
  import('@proton/web-sdk').then(mod => { ProtonWebSDK = mod.default; }),
  import('@proton/link')
]).then(() => {});

// Promise.all ensures BOTH modules are fully loaded
// before any SDK calls are made.
```

### Wallet Types Explained

| Type | Description | When to Use |
|------|-------------|-------------|
| `'webauth'` | webauth.com browser wallet | Web-based, no app install needed |
| `'proton'` | WebAuth mobile app | Native mobile experience, more secure |
| `'anchor'` | Anchor desktop wallet | Power users, desktop only |

**Recommendation**: Always include both `'webauth'` and `'proton'` to give users choice.

### Testnet Limitations

The WebAuth mobile app is primarily designed for mainnet. On testnet:
- Mobile callbacks may not work reliably
- Use webauth.com browser wallet for testnet testing
- Test mobile flow on mainnet with small amounts
- File issues at https://github.com/XPRNetwork/

### Reference Implementations

- **xpr-slots**: `/frontend/src/main.js` (this project)
- **simple-dex**: `/src/lib/proton.ts`
- **protonlink**: `/service/proton.ts`

---

## Web Audio Memory Leak (Mobile Performance)

**Date**: 2026-01-23
**Issue**: Procedural music causes browser slowdown on mobile after multiple transactions

### Problem

Web Audio API nodes (oscillators, filters, gains) were accumulating without cleanup:
- Only oscillators were tracked for cleanup
- Filters, gains, compressors stayed connected in audio graph
- Each music loop iteration added more orphaned nodes
- Mobile browsers ran out of resources faster

### Solution

Track ALL connected nodes and disconnect them when oscillator ends:

```javascript
// Helper to register oscillator with auto-cleanup
function registerMusicOsc(osc, connectedNodes = []) {
  const entry = { osc, nodes: connectedNodes };
  musicNodes.push(entry);

  // Auto-cleanup when oscillator ends
  osc.onended = () => {
    connectedNodes.forEach(node => {
      try { node.disconnect(); } catch (e) {}
    });
    try { osc.disconnect(); } catch (e) {}
    // Remove from array
    const idx = musicNodes.indexOf(entry);
    if (idx > -1) musicNodes.splice(idx, 1);
  };
}

// Usage: register osc with its connected filter and gain
const osc = ctx.createOscillator();
const filter = ctx.createBiquadFilter();
const gain = ctx.createGain();
osc.connect(filter);
filter.connect(gain);
gain.connect(destination);
osc.start(ctx.currentTime);
osc.stop(ctx.currentTime + duration);
registerMusicOsc(osc, [filter, gain]);  // Track for cleanup
```

### Key Pattern

Always disconnect nodes, not just stop oscillators:

```javascript
function stopMusic() {
  musicNodes.forEach(entry => {
    try {
      if (entry.osc) {
        entry.osc.onended = null;  // Prevent double cleanup
        entry.osc.stop();
        entry.osc.disconnect();
      }
      if (entry.nodes) {
        entry.nodes.forEach(node => {
          try { node.disconnect(); } catch (e) {}
        });
      }
    } catch (e) {}
  });
  musicNodes = [];
}
