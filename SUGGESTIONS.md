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

## Reference Implementation

See working implementation in protonlink project:
- `/Users/paulgrey/Documents/projects/protonlink/service/proton.ts`

Key pattern (lines 10-17):
```typescript
if (typeof window !== 'undefined') {
  sdkReady = Promise.all([
    import('@proton/web-sdk').then((mod) => {
      ConnectWallet = mod.default;
    }),
    import('@proton/link')  // <-- Critical for mobile
  ]).then(() => {});
}
```
