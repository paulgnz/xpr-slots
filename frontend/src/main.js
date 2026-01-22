import ProtonWebSDK from '@proton/web-sdk';
import { JsonRpc } from '@proton/js';

// Audio Context and Sound Effects
let audioContext = null;
let soundEnabled = true;

function getAudioContext() {
  if (!audioContext) {
    audioContext = new (window.AudioContext || window.webkitAudioContext)();
  }
  return audioContext;
}

function playTone(frequency, duration, type = 'sine', volume = 0.3) {
  if (!soundEnabled) return;
  const ctx = getAudioContext();
  const oscillator = ctx.createOscillator();
  const gainNode = ctx.createGain();

  oscillator.connect(gainNode);
  gainNode.connect(ctx.destination);

  oscillator.frequency.value = frequency;
  oscillator.type = type;

  gainNode.gain.setValueAtTime(volume, ctx.currentTime);
  gainNode.gain.exponentialRampToValueAtTime(0.01, ctx.currentTime + duration);

  oscillator.start(ctx.currentTime);
  oscillator.stop(ctx.currentTime + duration);
}

function playSpinSound() {
  if (!soundEnabled) return;
  const ctx = getAudioContext();
  // Whoosh sound using noise
  const bufferSize = ctx.sampleRate * 0.3;
  const buffer = ctx.createBuffer(1, bufferSize, ctx.sampleRate);
  const data = buffer.getChannelData(0);

  for (let i = 0; i < bufferSize; i++) {
    data[i] = (Math.random() * 2 - 1) * Math.exp(-i / (bufferSize * 0.3));
  }

  const source = ctx.createBufferSource();
  const filter = ctx.createBiquadFilter();
  const gainNode = ctx.createGain();

  source.buffer = buffer;
  filter.type = 'bandpass';
  filter.frequency.value = 800;
  filter.Q.value = 1;

  source.connect(filter);
  filter.connect(gainNode);
  gainNode.connect(ctx.destination);

  gainNode.gain.setValueAtTime(0.2, ctx.currentTime);
  filter.frequency.exponentialRampToValueAtTime(2000, ctx.currentTime + 0.3);

  source.start();

  // Add ascending tones
  [440, 550, 660].forEach((freq, i) => {
    setTimeout(() => playTone(freq, 0.1, 'square', 0.1), i * 50);
  });
}

function playReelStopSound(reelIndex) {
  // Mechanical click sound
  setTimeout(() => {
    playTone(200 + reelIndex * 50, 0.08, 'square', 0.15);
    playTone(100, 0.05, 'sawtooth', 0.1);
  }, 0);
}

function playWinSound() {
  // Triumphant ascending arpeggio
  const notes = [523, 659, 784, 1047]; // C5, E5, G5, C6
  notes.forEach((freq, i) => {
    setTimeout(() => {
      playTone(freq, 0.3, 'sine', 0.2);
      playTone(freq * 1.5, 0.3, 'triangle', 0.1);
    }, i * 100);
  });
}

function playJackpotSound() {
  // Epic celebration fanfare
  const fanfare = [
    { freq: 523, delay: 0 },
    { freq: 659, delay: 100 },
    { freq: 784, delay: 200 },
    { freq: 1047, delay: 300 },
    { freq: 1319, delay: 400 },
    { freq: 1047, delay: 600 },
    { freq: 1319, delay: 700 },
    { freq: 1568, delay: 800 },
  ];

  fanfare.forEach(note => {
    setTimeout(() => {
      playTone(note.freq, 0.4, 'sine', 0.25);
      playTone(note.freq * 0.5, 0.4, 'triangle', 0.15);
      playTone(note.freq * 2, 0.2, 'sine', 0.1);
    }, note.delay);
  });

  // Add shimmer effect
  for (let i = 0; i < 20; i++) {
    setTimeout(() => {
      playTone(2000 + Math.random() * 2000, 0.1, 'sine', 0.05);
    }, 400 + i * 80);
  }
}

function playLoseSound() {
  // Descending tone
  playTone(300, 0.2, 'sine', 0.1);
  setTimeout(() => playTone(200, 0.3, 'sine', 0.08), 150);
}

function playCoinSound() {
  // Coin insert sound
  playTone(1200, 0.05, 'square', 0.1);
  setTimeout(() => playTone(1800, 0.08, 'square', 0.1), 50);
  setTimeout(() => playTone(2400, 0.1, 'sine', 0.08), 100);
}

function toggleSound() {
  soundEnabled = !soundEnabled;
  const soundBtn = document.getElementById('sound-btn');
  if (soundBtn) {
    soundBtn.textContent = soundEnabled ? '🔊' : '🔇';
    soundBtn.title = soundEnabled ? 'Mute sounds' : 'Unmute sounds';
  }
}

// Bet selection
function selectBet(amount) {
  selectedBet = amount;
  updateBetButtons();
  updateSpinButton();
}

function updateBetButtons() {
  document.querySelectorAll('.bet-btn').forEach(btn => {
    const amount = parseInt(btn.dataset.amount);
    btn.classList.toggle('active', amount === selectedBet);
  });
}

function updateSpinButton() {
  if (spinBtn) {
    spinBtn.textContent = `SPIN (${selectedBet} XPR)`;
  }
}

function initBetSelector() {
  const betSelector = document.getElementById('bet-selector');
  if (!betSelector) return;

  betSelector.innerHTML = CONFIG.betOptions.map(amount =>
    `<button class="bet-btn ${amount === selectedBet ? 'active' : ''}" data-amount="${amount}">${amount} XPR</button>`
  ).join('');

  betSelector.querySelectorAll('.bet-btn').forEach(btn => {
    btn.addEventListener('click', () => selectBet(parseInt(btn.dataset.amount)));
  });

  updateSpinButton();
}

// Configuration - MAINNET
const CONFIG = {
  chainId: '384da888112027f0321850a169f737c33e53b388aad48b5adace4bab97f437e0', // Mainnet
  endpoints: ['https://proton.greymass.com', 'https://proton.eosusa.io'],
  contractAccount: 'xprslots',
  tokenContract: 'eosio.token',
  appName: 'XPR Slots',
  betOptions: [1, 10, 100, 1000], // Available bet amounts in XPR
  defaultBet: 10
};

// Current selected bet amount
let selectedBet = CONFIG.defaultBet;

// Symbol mapping
const SYMBOLS = ['🍋', '🍒', '🔔', '📊', '7️⃣'];
// Calculate symbol height dynamically for responsive support
function getSymbolHeight() {
  const reel = document.getElementById('reel-0');
  if (reel && reel.children.length > 0) {
    const symbol = reel.children[0];
    const style = window.getComputedStyle(symbol);
    const height = symbol.offsetHeight;
    const marginTop = parseFloat(style.marginTop) || 0;
    const marginBottom = parseFloat(style.marginBottom) || 0;
    return height + marginTop + marginBottom;
  }
  return 110; // Fallback to desktop value
}

// Get the offset to center a symbol on the win line
function getCenterOffset() {
  const wrapper = document.querySelector('.reel-wrapper');
  const symbolHeight = getSymbolHeight();
  if (wrapper) {
    // Win line is at 50% of wrapper height
    // We want symbol center at win line
    // Symbol center = offset + symbolHeight/2
    // Wrapper center = wrapperHeight/2
    // So: offset + symbolHeight/2 = wrapperHeight/2
    // offset = (wrapperHeight - symbolHeight) / 2
    const wrapperHeight = wrapper.offsetHeight;
    return (wrapperHeight - symbolHeight) / 2;
  }
  return 95; // Fallback to desktop value
}

// Global state
let session = null;
let link = null;
let rpc = null;
let isSpinning = false;

// Initialize RPC
rpc = new JsonRpc(CONFIG.endpoints[0]);

// DOM Elements
const connectBtn = document.getElementById('connect-btn');
const spinBtn = document.getElementById('spin-btn');
const resultDisplay = document.getElementById('result-display');
const balanceValue = document.getElementById('balance-value');
const jackpotValue = document.getElementById('jackpot-value');
const loadingOverlay = document.getElementById('loading-overlay');
const spinHistory = document.getElementById('spin-history');

// Initialize reels with enough symbols for smooth spinning
function initReels() {
  const reels = [
    document.getElementById('reel-0'),
    document.getElementById('reel-1'),
    document.getElementById('reel-2')
  ];

  reels.forEach((reel, reelIndex) => {
    // Add many symbol sets for smooth spinning (need enough for full animation)
    reel.innerHTML = '';
    // 50 sets of 5 symbols = 250 symbols total, enough for any spin
    for (let set = 0; set < 50; set++) {
      for (let i = 0; i < 5; i++) {
        const symbol = document.createElement('div');
        symbol.className = 'symbol';
        symbol.textContent = SYMBOLS[i];
        reel.appendChild(symbol);
      }
    }
    console.log(`Reel ${reelIndex} initialized with ${reel.children.length} symbols`);
    // Start with symbol at index 1 (cherry) centered on win line
    const symbolHeight = getSymbolHeight();
    const centerOffset = getCenterOffset();
    const initialOffset = 1 * symbolHeight - centerOffset;
    reel.style.transform = `translateY(-${initialOffset}px)`;
  });
}

// Create sparkle particles
function createSparkles() {
  const sparklesContainer = document.getElementById('sparkles');
  for (let i = 0; i < 30; i++) {
    const sparkle = document.createElement('div');
    sparkle.className = 'sparkle';
    sparkle.style.left = Math.random() * 100 + '%';
    sparkle.style.top = Math.random() * 100 + '%';
    sparkle.style.animationDelay = Math.random() * 3 + 's';
    sparkle.style.animationDuration = (2 + Math.random() * 2) + 's';
    sparklesContainer.appendChild(sparkle);
  }
}

// Exciting messages shown during spin
const SPIN_MESSAGES = [
  '🎰 Spinning... Good luck! 🎰',
  '🍀 Feeling lucky? 🍀',
  '✨ Here we go! ✨',
  '🎲 Round and round! 🎲',
  '💫 Big win coming? 💫',
  '🔥 Let it ride! 🔥',
  '⭐ Stars aligning... ⭐',
  '🎯 Almost there! 🎯'
];

let spinMessageInterval = null;

// Start continuous spinning animation (while waiting for blockchain result)
function startContinuousSpin() {
  isSpinning = true;
  spinBtn.classList.add('spinning');
  playSpinSound();

  const reels = [
    document.getElementById('reel-0'),
    document.getElementById('reel-1'),
    document.getElementById('reel-2')
  ];

  reels.forEach((reel, index) => {
    // Add spinning class for CSS animation
    reel.classList.add('continuous-spin');
    reel.style.transition = 'none';
    reel.style.transform = 'translateY(0)';
  });

  // Cycle through exciting messages
  let messageIndex = 0;
  spinMessageInterval = setInterval(() => {
    messageIndex = (messageIndex + 1) % SPIN_MESSAGES.length;
    showResult(SPIN_MESSAGES[messageIndex], 'pending');
  }, 700);
}

// Land reels on final result (called when blockchain result arrives)
function landReelsOnResult(results) {
  // Stop the cycling messages
  if (spinMessageInterval) {
    clearInterval(spinMessageInterval);
    spinMessageInterval = null;
  }
  showResult('🎯 Landing... 🎯', 'pending');

  console.log('Landing on results:', results, '→', results.map(r => SYMBOLS[r]).join(' '));

  const reels = [
    document.getElementById('reel-0'),
    document.getElementById('reel-1'),
    document.getElementById('reel-2')
  ];

  // Stagger when each reel starts slowing down
  // Reel 1 stops first, then 2, then 3 - like a real slot machine
  const stopDelays = [0, 800, 1600];
  const slowDownDuration = 1200; // Time to decelerate to stop

  const symbolHeight = getSymbolHeight();
  const centerOffset = getCenterOffset();

  reels.forEach((reel, index) => {
    const targetSymbol = results[index];

    // Calculate final position to center target symbol on win line
    // We need enough rotations to keep spinning forward
    const baseRotations = 8 + index * 3; // More rotations for later reels
    const symbolsPerSet = 5;
    const finalSymbolIndex = baseRotations * symbolsPerSet + targetSymbol;
    const finalOffset = finalSymbolIndex * symbolHeight - centerOffset;

    setTimeout(() => {
      // Stop the CSS animation and capture current visual position
      reel.classList.remove('continuous-spin');

      // Get computed transform to know where we are in the spin
      const computedStyle = window.getComputedStyle(reel);
      const matrix = new DOMMatrix(computedStyle.transform);
      const currentY = matrix.m42; // Current translateY value (negative)

      // Set current position without transition
      reel.style.transition = 'none';
      reel.style.transform = `translateY(${currentY}px)`;
      reel.offsetHeight; // Force reflow

      // Calculate final position that's ALWAYS further down (more negative) than current
      // This ensures we never spin backwards
      const currentOffset = Math.abs(currentY);
      const minOffset = currentOffset + (3 * symbolsPerSet * symbolHeight); // At least 3 more full rotations

      // Find the next valid position for our target symbol that's past minOffset
      let targetOffset = finalOffset;
      while (targetOffset < minOffset) {
        targetOffset += symbolsPerSet * symbolHeight; // Add one full rotation
      }

      // Now animate smoothly to final position (always forward/down)
      // Use easeOut for realistic deceleration
      reel.style.transition = `transform ${slowDownDuration}ms cubic-bezier(0.1, 0.4, 0.2, 1)`;
      reel.style.transform = `translateY(-${targetOffset}px)`;

      console.log(`Reel ${index}: from ${currentY}px to -${targetOffset}px, target=${SYMBOLS[targetSymbol]}`);

      // Play reel stop sound when this reel stops
      setTimeout(() => {
        playReelStopSound(index);
      }, slowDownDuration);
    }, stopDelays[index]);
  });

  // Total animation time: last reel delay + slow down + buffer
  const totalTime = stopDelays[2] + slowDownDuration + 300;

  setTimeout(() => {
    isSpinning = false;
    spinBtn.classList.remove('spinning');
    spinBtn.disabled = false;
    highlightWinningSymbols(results);
  }, totalTime);

  return totalTime;
}

function highlightWinningSymbols(results) {
  // Check if all three match
  if (results[0] === results[1] && results[1] === results[2]) {
    // All three match - highlight all
    document.querySelectorAll('.reel-wrapper').forEach(wrapper => {
      wrapper.style.boxShadow = `
        inset 0 0 20px rgba(0, 0, 0, 0.9),
        0 0 30px rgba(255, 215, 0, 0.8),
        0 0 60px rgba(255, 107, 0, 0.5)
      `;
    });

    setTimeout(() => {
      document.querySelectorAll('.reel-wrapper').forEach(wrapper => {
        wrapper.style.boxShadow = '';
      });
    }, 3000);
  }
}

// Wallet connection
async function connectWallet() {
  try {
    showLoading();

    const result = await ProtonWebSDK({
      linkOptions: {
        chainId: CONFIG.chainId,
        endpoints: CONFIG.endpoints,
        restoreSession: false
      },
      transportOptions: {
        requestAccount: CONFIG.contractAccount
      },
      selectorOptions: {
        appName: CONFIG.appName,
        appLogo: `${window.location.origin}/avatar.png`
      }
    });

    link = result.link;
    session = result.session;

    if (session) {
      onWalletConnected();
    }
  } catch (error) {
    console.error('Connection error:', error);
    showResult('Failed to connect: ' + error.message, 'error');
  } finally {
    hideLoading();
  }
}

async function logout(e) {
  if (e) {
    e.preventDefault();
    e.stopPropagation();
  }

  if (link && session) {
    try {
      await link.removeSession(CONFIG.appName, session.auth, CONFIG.chainId);
    } catch (error) {
      console.error('Logout error:', error);
    }
  }

  session = null;
  link = null;

  connectBtn.textContent = 'Connect Wallet';
  spinBtn.disabled = true;
  balanceValue.textContent = '0 XPR';

  const accountMenu = document.getElementById('account-menu');
  if (accountMenu) {
    accountMenu.classList.add('hidden');
  }

  showResult('Connect your wallet and spin to win!', 'normal');
}

async function switchAccount(e) {
  if (e) {
    e.preventDefault();
    e.stopPropagation();
  }

  const accountMenu = document.getElementById('account-menu');
  if (accountMenu) {
    accountMenu.classList.add('hidden');
  }

  if (link && session) {
    try {
      await link.removeSession(CONFIG.appName, session.auth, CONFIG.chainId);
    } catch (error) {
      console.error('Switch account error:', error);
    }
  }

  session = null;
  // Keep link for reconnecting

  await connectWallet();
}

function toggleAccountMenu(e) {
  if (e) {
    e.preventDefault();
    e.stopPropagation();
  }
  const accountMenu = document.getElementById('account-menu');
  accountMenu.classList.toggle('hidden');
}

function showAccountMenu() {
  const accountMenu = document.getElementById('account-menu');
  if (accountMenu && session) {
    accountMenu.classList.remove('hidden');
  }
}

function hideAccountMenu() {
  const accountMenu = document.getElementById('account-menu');
  if (accountMenu) {
    accountMenu.classList.add('hidden');
  }
}

function onWalletConnected() {
  const accountName = session.auth.actor.toString();
  connectBtn.textContent = accountName.toUpperCase();
  spinBtn.disabled = false;

  const accountMenu = document.getElementById('account-menu');
  if (accountMenu) {
    accountMenu.classList.add('hidden');
  }

  // Update result display to show ready state
  showResult('Ready to spin! Good luck! 🍀', 'normal');

  updateBalance();
  updateContractStats();
  loadRecentSpins();
}

async function updateBalance() {
  if (!session) return;

  try {
    const result = await rpc.get_table_rows({
      code: CONFIG.tokenContract,
      scope: session.auth.actor.toString(),
      table: 'accounts',
      limit: 10
    });

    const xprBalance = result.rows.find(row => row.balance?.includes('XPR'));
    if (xprBalance) {
      const amount = Math.floor(parseFloat(xprBalance.balance));
      balanceValue.textContent = amount.toLocaleString() + ' XPR';
    } else {
      balanceValue.textContent = '0 XPR';
    }
  } catch (error) {
    console.error('Error fetching balance:', error);
  }
}

async function updateContractStats() {
  try {
    try {
      await rpc.get_account(CONFIG.contractAccount);
    } catch (accountError) {
      showResult(`Contract "${CONFIG.contractAccount}" not deployed yet.`, 'error');
      jackpotValue.textContent = 'Not deployed';
      return;
    }

    const result = await rpc.get_table_rows({
      code: CONFIG.contractAccount,
      scope: CONFIG.contractAccount,
      table: 'config',
      limit: 1
    });

    if (result.rows.length > 0) {
      const config = result.rows[0];
      document.getElementById('stat-total-spins').textContent = config.totalSpins || 0;
      document.getElementById('stat-total-wagered').textContent = formatXPR(config.totalWagered || 0);
      document.getElementById('stat-total-paid').textContent = formatXPR(config.totalPaidOut || 0);
      jackpotValue.textContent = formatXPR(config.jackpotPool || 0);
    } else {
      showResult('Contract not initialized.', 'error');
      jackpotValue.textContent = 'Not initialized';
    }
  } catch (error) {
    console.error('Error fetching contract stats:', error);
  }
}

async function loadRecentSpins() {
  try {
    const result = await rpc.get_table_rows({
      code: CONFIG.contractAccount,
      scope: CONFIG.contractAccount,
      table: 'spinresults',
      limit: 10,
      reverse: true
    });

    if (result.rows.length > 0) {
      spinHistory.innerHTML = result.rows.map(spin => `
        <div class="spin-item ${spin.payout > 0 ? 'win' : ''}">
          <span class="symbols">${SYMBOLS[spin.reel1]} ${SYMBOLS[spin.reel2]} ${SYMBOLS[spin.reel3]}</span>
          <span>${spin.player}</span>
          <span class="payout-amount ${spin.payout > 0 ? '' : 'loss'}">${spin.payout > 0 ? '+' + formatXPR(spin.payout) : 'No win'}</span>
        </div>
      `).join('');
    }
  } catch (error) {
    console.error('Error loading recent spins:', error);
  }
}

// Get the latest result ID for this player (to detect new results)
async function getLatestResultId(player) {
  try {
    const result = await rpc.get_table_rows({
      code: CONFIG.contractAccount,
      scope: CONFIG.contractAccount,
      table: 'spinresults',
      limit: 10,
      reverse: true
    });

    // Find the latest result for this player
    const playerResult = result.rows.find(r => r.player === player);
    return playerResult ? playerResult.id : -1;
  } catch (error) {
    return -1;
  }
}

// Spin action
async function spin() {
  if (!session || isSpinning) return;

  try {
    showLoading();
    spinBtn.disabled = true;
    playCoinSound();

    // Get current latest result ID BEFORE spinning
    const previousResultId = await getLatestResultId(session.auth.actor.toString());
    console.log('Previous result ID:', previousResultId);

    const betQuantity = `${selectedBet.toFixed(4)} XPR`;
    const result = await session.transact({
      actions: [{
        account: CONFIG.tokenContract,
        name: 'transfer',
        authorization: [session.auth],
        data: {
          from: session.auth.actor.toString(),
          to: CONFIG.contractAccount,
          quantity: betQuantity,
          memo: 'spin'
        }
      }]
    }, {
      broadcast: true
    });

    hideLoading();

    // Transaction confirmed - start the exciting spin animation immediately!
    startContinuousSpin();
    showResult('🎰 Spinning... Good luck! 🎰', 'pending');

    // Record when we started spinning
    const spinStartTime = Date.now();
    const MIN_SPIN_DURATION = 4000; // Minimum 4 seconds of spinning for entertainment

    // Wait for blockchain result (must be newer than previousResultId)
    const spinResult = await waitForSpinResult(session.auth.actor.toString(), previousResultId);

    if (spinResult) {
      // Calculate how long we've been spinning
      const elapsedTime = Date.now() - spinStartTime;
      const remainingTime = Math.max(0, MIN_SPIN_DURATION - elapsedTime);

      // Wait remaining time to ensure minimum spin duration
      if (remainingTime > 0) {
        await new Promise(resolve => setTimeout(resolve, remainingTime));
      }

      // Now land on the result
      const spinResults = [spinResult.reel1, spinResult.reel2, spinResult.reel3];
      const landingTime = landReelsOnResult(spinResults);

      // Show result after landing animation completes
      setTimeout(() => {
        if (spinResult.jackpotWon) {
          playJackpotSound();
          showResult(`🎉 JACKPOT! You won ${formatXPR(spinResult.payout)}! 🎉`, 'jackpot');
          createWinExplosion();
        } else if (spinResult.payout > 0) {
          playWinSound();
          showResult(`Winner! ${SYMBOLS[spinResult.reel1]} ${SYMBOLS[spinResult.reel2]} ${SYMBOLS[spinResult.reel3]} = +${formatXPR(spinResult.payout)}`, 'win');
        } else {
          playLoseSound();
          showResult(`${SYMBOLS[spinResult.reel1]} ${SYMBOLS[spinResult.reel2]} ${SYMBOLS[spinResult.reel3]} - No match. Try again!`, 'normal');
        }
        updateBalance();
        updateContractStats();
        loadRecentSpins();
      }, landingTime);
    }

  } catch (error) {
    console.error('Spin error:', error);
    resetSpinState();

    // Check if user cancelled/closed the signing window
    const errorMsg = error.message?.toLowerCase() || '';
    if (errorMsg.includes('cancel') || errorMsg.includes('reject') || errorMsg.includes('closed') || errorMsg.includes('denied') || errorMsg.includes('user')) {
      showResult('Ready to spin! Click the button to try your luck.', 'normal');
    } else {
      showResult('Spin failed: ' + (error.message || 'Unknown error'), 'error');
    }
  }
}

// Reset all spin-related state
function resetSpinState() {
  hideLoading();

  // Clear cycling messages if running
  if (spinMessageInterval) {
    clearInterval(spinMessageInterval);
    spinMessageInterval = null;
  }

  // Reset button state
  spinBtn.disabled = false;
  isSpinning = false;
  spinBtn.classList.remove('spinning');

  // Stop any spinning animation
  document.querySelectorAll('.reel').forEach(reel => {
    reel.classList.remove('continuous-spin');
  });
}

async function waitForSpinResult(player, previousResultId) {
  const maxAttempts = 30;

  console.log(`Waiting for new result (previous ID: ${previousResultId})`);

  for (let attempts = 0; attempts < maxAttempts; attempts++) {
    // Wait before checking (first check after 1 second)
    await new Promise(resolve => setTimeout(resolve, 1000));

    try {
      const result = await rpc.get_table_rows({
        code: CONFIG.contractAccount,
        scope: CONFIG.contractAccount,
        table: 'spinresults',
        limit: 1,
        reverse: true
      });

      if (result.rows.length > 0) {
        const latestSpin = result.rows[0];
        // Must be from this player AND be a NEW result (higher ID than before)
        if (latestSpin.player === player && latestSpin.id > previousResultId) {
          console.log(`Found new result ID ${latestSpin.id}:`, latestSpin);
          return latestSpin;
        }
      }
    } catch (error) {
      console.error('Error checking spin result:', error);
    }
  }

  // Timeout - no result found
  showResult('Spin result not received. Check your transaction history.', 'error');
  spinBtn.disabled = false;
  isSpinning = false;
  document.querySelectorAll('.reel').forEach(reel => {
    reel.classList.remove('continuous-spin');
  });
  return null;
}

function createWinExplosion() {
  const sparklesContainer = document.getElementById('sparkles');
  for (let i = 0; i < 50; i++) {
    const sparkle = document.createElement('div');
    sparkle.className = 'sparkle';
    sparkle.style.left = '50%';
    sparkle.style.top = '30%';
    sparkle.style.animation = `explode${i % 8} 1s ease-out forwards`;
    sparklesContainer.appendChild(sparkle);
    setTimeout(() => sparkle.remove(), 1000);
  }
}

function formatXPR(amount) {
  const xprAmount = Number(amount) / 10000;
  // Show decimals for small amounts, whole numbers for large
  if (xprAmount < 10) {
    return xprAmount.toLocaleString(undefined, { minimumFractionDigits: 0, maximumFractionDigits: 2 }) + ' XPR';
  }
  return Math.floor(xprAmount).toLocaleString() + ' XPR';
}

function showResult(message, type = 'normal') {
  resultDisplay.className = 'result-display';
  if (type === 'win') resultDisplay.classList.add('win');
  if (type === 'jackpot') resultDisplay.classList.add('jackpot');
  resultDisplay.innerHTML = `<p>${message}</p>`;
}

function showLoading() {
  loadingOverlay.classList.remove('hidden');
}

function hideLoading() {
  loadingOverlay.classList.add('hidden');
}

// Initialize
document.addEventListener('DOMContentLoaded', () => {
  // Event listeners - must be inside DOMContentLoaded
  spinBtn.addEventListener('click', spin);

  // Connect button - handle click based on session state
  connectBtn.addEventListener('click', (e) => {
    if (session) {
      toggleAccountMenu(e);
    } else {
      connectWallet();
    }
  });

  const walletContainer = document.querySelector('.wallet-container');
  const accountMenu = document.getElementById('account-menu');
  const switchAccountBtn = document.getElementById('switch-account-btn');
  const logoutBtn = document.getElementById('logout-btn');
  const soundBtn = document.getElementById('sound-btn');

  // Hover support for account menu
  if (walletContainer && accountMenu) {
    walletContainer.addEventListener('mouseenter', () => {
      if (session) {
        accountMenu.classList.remove('hidden');
      }
    });
    walletContainer.addEventListener('mouseleave', () => {
      accountMenu.classList.add('hidden');
    });
  }

  if (switchAccountBtn) switchAccountBtn.addEventListener('click', switchAccount);
  if (logoutBtn) logoutBtn.addEventListener('click', logout);
  if (soundBtn) soundBtn.addEventListener('click', toggleSound);

  // Close menu when clicking outside
  document.addEventListener('click', (e) => {
    const accountMenu = document.getElementById('account-menu');
    const walletContainer = document.querySelector('.wallet-container');
    if (accountMenu && walletContainer && !walletContainer.contains(e.target)) {
      accountMenu.classList.add('hidden');
    }
  });
  initReels();
  createSparkles();
  initBetSelector();
  updateContractStats();

  // Try to restore previous session
  ProtonWebSDK({
    linkOptions: {
      chainId: CONFIG.chainId,
      endpoints: CONFIG.endpoints,
      restoreSession: true
    },
    transportOptions: {
      requestAccount: CONFIG.contractAccount
    },
    selectorOptions: {
      appName: CONFIG.appName
    }
  }).then(result => {
    if (result.session) {
      link = result.link;
      session = result.session;
      onWalletConnected();
    }
  }).catch(() => {
    // No session to restore
  });
});
