import { JsonRpc } from '@proton/js';

// Dynamic import for wallet SDK (required for mobile)
let ProtonWebSDK;
let sdkReady = null;

if (typeof window !== 'undefined') {
  sdkReady = Promise.all([
    import('@proton/web-sdk').then((mod) => {
      ProtonWebSDK = mod.default;
    }),
    import('@proton/link')
  ]).then(() => {});
}

async function waitForSdk() {
  if (sdkReady) await sdkReady;
}

// Audio Context and Sound Effects
let audioContext = null;
let soundEnabled = true;

function getAudioContext() {
  if (!audioContext) {
    audioContext = new (window.AudioContext || window.webkitAudioContext)();
  }
  return audioContext;
}

// Background Music System
let currentTrack = 'none';
let musicNodes = [];
let musicInterval = null;

function stopMusic() {
  musicNodes.forEach(node => {
    try {
      node.stop();
    } catch (e) {}
  });
  musicNodes = [];
  if (musicInterval) {
    clearInterval(musicInterval);
    musicInterval = null;
  }
  const musicBtn = document.getElementById('music-btn');
  if (musicBtn) musicBtn.classList.remove('playing');
}

function playChillMusic() {
  const ctx = getAudioContext();
  const masterGain = ctx.createGain();
  masterGain.gain.value = 0.15;
  masterGain.connect(ctx.destination);

  // Soft pad chord
  const chords = [
    [261.63, 329.63, 392.00], // C major
    [293.66, 369.99, 440.00], // D minor
    [349.23, 440.00, 523.25], // F major
    [392.00, 493.88, 587.33]  // G major
  ];
  let chordIndex = 0;

  function playChord() {
    const chord = chords[chordIndex % chords.length];
    chord.forEach(freq => {
      const osc = ctx.createOscillator();
      const gain = ctx.createGain();
      const filter = ctx.createBiquadFilter();

      osc.type = 'sine';
      osc.frequency.value = freq;
      filter.type = 'lowpass';
      filter.frequency.value = 800;

      osc.connect(filter);
      filter.connect(gain);
      gain.connect(masterGain);

      gain.gain.setValueAtTime(0, ctx.currentTime);
      gain.gain.linearRampToValueAtTime(0.3, ctx.currentTime + 0.5);
      gain.gain.linearRampToValueAtTime(0, ctx.currentTime + 4);

      osc.start(ctx.currentTime);
      osc.stop(ctx.currentTime + 4);
      musicNodes.push(osc);
    });
    chordIndex++;
  }

  playChord();
  musicInterval = setInterval(playChord, 4000);
}

function playAmbientMusic() {
  const ctx = getAudioContext();
  const masterGain = ctx.createGain();
  masterGain.gain.value = 0.1;
  masterGain.connect(ctx.destination);

  // Ethereal drone
  const baseFreqs = [110, 165, 220, 330];

  function createDrone() {
    baseFreqs.forEach((freq, i) => {
      const osc = ctx.createOscillator();
      const gain = ctx.createGain();
      const filter = ctx.createBiquadFilter();

      osc.type = 'sine';
      osc.frequency.value = freq;

      // Slow frequency modulation
      const lfo = ctx.createOscillator();
      const lfoGain = ctx.createGain();
      lfo.frequency.value = 0.1 + (i * 0.05);
      lfoGain.gain.value = freq * 0.02;
      lfo.connect(lfoGain);
      lfoGain.connect(osc.frequency);

      filter.type = 'lowpass';
      filter.frequency.value = 400;

      osc.connect(filter);
      filter.connect(gain);
      gain.connect(masterGain);

      gain.gain.setValueAtTime(0, ctx.currentTime);
      gain.gain.linearRampToValueAtTime(0.2, ctx.currentTime + 3);
      gain.gain.linearRampToValueAtTime(0.2, ctx.currentTime + 12);
      gain.gain.linearRampToValueAtTime(0, ctx.currentTime + 15);

      lfo.start(ctx.currentTime);
      osc.start(ctx.currentTime);
      osc.stop(ctx.currentTime + 15);
      lfo.stop(ctx.currentTime + 15);
      musicNodes.push(osc, lfo);
    });
  }

  createDrone();
  musicInterval = setInterval(createDrone, 14000);
}

function playCasinoMusic() {
  const ctx = getAudioContext();

  // Master chain with compression for that polished sound
  const masterGain = ctx.createGain();
  const compressor = ctx.createDynamicsCompressor();
  masterGain.gain.value = 0.25;
  compressor.threshold.value = -20;
  compressor.knee.value = 10;
  compressor.ratio.value = 4;
  masterGain.connect(compressor);
  compressor.connect(ctx.destination);

  // Tempo: 125 BPM (480ms per beat) - upbeat casino groove
  const BPM = 125;
  const beatMs = 60000 / BPM;
  const sixteenth = beatMs / 4;

  // Musical constants (A minor / C major - classic game music keys)
  const NOTE = {
    A2: 110, B2: 123.47, C3: 130.81, D3: 146.83, E3: 164.81, F3: 174.61, G3: 196,
    A3: 220, B3: 246.94, C4: 261.63, D4: 293.66, E4: 329.63, F4: 349.23, G4: 392,
    A4: 440, B4: 493.88, C5: 523.25, D5: 587.33, E5: 659.25, F5: 698.46, G5: 784
  };

  // Funky walking bassline (inspired by Pokemon Game Corner)
  const bassPattern = [
    { note: NOTE.A2, time: 0 },
    { note: NOTE.C3, time: 1 },
    { note: NOTE.E3, time: 2 },
    { note: NOTE.G3, time: 2.5 },
    { note: NOTE.A3, time: 3 },
    { note: NOTE.G3, time: 4 },
    { note: NOTE.F3, time: 5 },
    { note: NOTE.E3, time: 6 },
    { note: NOTE.D3, time: 6.5 },
    { note: NOTE.E3, time: 7 }
  ];

  // Jazzy chord stabs (7th chords for that casino lounge vibe)
  const chordPattern = [
    { notes: [NOTE.A3, NOTE.C4, NOTE.E4, NOTE.G4], time: 0, dur: 0.3 },      // Am7
    { notes: [NOTE.A3, NOTE.C4, NOTE.E4, NOTE.G4], time: 0.75, dur: 0.15 },  // Am7 stab
    { notes: [NOTE.D4, NOTE.F4, NOTE.A4, NOTE.C5], time: 2, dur: 0.3 },      // Dm7
    { notes: [NOTE.G3, NOTE.B3, NOTE.D4, NOTE.F4], time: 4, dur: 0.3 },      // G7
    { notes: [NOTE.C4, NOTE.E4, NOTE.G4, NOTE.B4], time: 5.5, dur: 0.15 },   // Cmaj7 stab
    { notes: [NOTE.E4, NOTE.G4, NOTE.B4, NOTE.D5], time: 6, dur: 0.3 }       // Em7
  ];

  // Catchy lead melody (Sonic Casino Night Zone inspired hook)
  const melodyPattern = [
    { note: NOTE.E5, time: 0, dur: 0.5 },
    { note: NOTE.D5, time: 0.5, dur: 0.25 },
    { note: NOTE.C5, time: 0.75, dur: 0.25 },
    { note: NOTE.B4, time: 1, dur: 0.5 },
    { note: NOTE.A4, time: 1.5, dur: 0.25 },
    { note: NOTE.G4, time: 2, dur: 0.75 },
    { note: NOTE.A4, time: 3, dur: 0.25 },
    { note: NOTE.B4, time: 3.25, dur: 0.25 },
    { note: NOTE.C5, time: 3.5, dur: 0.5 },
    { note: NOTE.E5, time: 4, dur: 0.5 },
    { note: NOTE.D5, time: 4.5, dur: 0.25 },
    { note: NOTE.E5, time: 4.75, dur: 0.25 },
    { note: NOTE.G5, time: 5, dur: 0.75 },
    { note: NOTE.E5, time: 6, dur: 0.25 },
    { note: NOTE.D5, time: 6.5, dur: 0.25 },
    { note: NOTE.C5, time: 7, dur: 0.5 },
    { note: NOTE.B4, time: 7.5, dur: 0.5 }
  ];

  // Arpeggio sparkle pattern (slot machine vibes)
  const arpeggioPattern = [
    { note: NOTE.C5, time: 1.5 }, { note: NOTE.E5, time: 1.625 }, { note: NOTE.G5, time: 1.75 },
    { note: NOTE.A4, time: 3.5 }, { note: NOTE.C5, time: 3.625 }, { note: NOTE.E5, time: 3.75 },
    { note: NOTE.G4, time: 5.5 }, { note: NOTE.B4, time: 5.625 }, { note: NOTE.D5, time: 5.75 },
    { note: NOTE.E4, time: 7.5 }, { note: NOTE.G4, time: 7.625 }, { note: NOTE.B4, time: 7.75 }
  ];

  // Create synth bass sound
  function playBass(freq, startTime, duration = 0.4) {
    const osc1 = ctx.createOscillator();
    const osc2 = ctx.createOscillator();
    const gain = ctx.createGain();
    const filter = ctx.createBiquadFilter();

    osc1.type = 'sawtooth';
    osc2.type = 'square';
    osc1.frequency.value = freq;
    osc2.frequency.value = freq * 0.998; // slight detune for thickness

    filter.type = 'lowpass';
    filter.frequency.value = 400;
    filter.Q.value = 2;

    osc1.connect(filter);
    osc2.connect(filter);
    filter.connect(gain);
    gain.connect(masterGain);

    gain.gain.setValueAtTime(0.35, startTime);
    gain.gain.exponentialRampToValueAtTime(0.15, startTime + 0.1);
    gain.gain.exponentialRampToValueAtTime(0.01, startTime + duration);

    osc1.start(startTime);
    osc2.start(startTime);
    osc1.stop(startTime + duration);
    osc2.stop(startTime + duration);
    musicNodes.push(osc1, osc2);
  }

  // Create electric piano / Rhodes-like chord sound
  function playChord(freqs, startTime, duration = 0.3) {
    freqs.forEach((freq, i) => {
      const osc = ctx.createOscillator();
      const gain = ctx.createGain();
      const filter = ctx.createBiquadFilter();

      // FM synthesis for bell-like quality
      const modulator = ctx.createOscillator();
      const modGain = ctx.createGain();
      modulator.frequency.value = freq * 2;
      modGain.gain.value = freq * 0.5;
      modulator.connect(modGain);
      modGain.connect(osc.frequency);

      osc.type = 'sine';
      osc.frequency.value = freq;

      filter.type = 'lowpass';
      filter.frequency.setValueAtTime(2000, startTime);
      filter.frequency.exponentialRampToValueAtTime(500, startTime + duration);

      osc.connect(filter);
      filter.connect(gain);
      gain.connect(masterGain);

      const vol = 0.08 - (i * 0.015); // higher notes slightly quieter
      gain.gain.setValueAtTime(vol, startTime);
      gain.gain.exponentialRampToValueAtTime(0.001, startTime + duration);

      modulator.start(startTime);
      osc.start(startTime);
      modulator.stop(startTime + duration);
      osc.stop(startTime + duration);
      musicNodes.push(osc, modulator);
    });
  }

  // Create lead synth (square wave with filter sweep - very video game)
  function playLead(freq, startTime, duration = 0.2) {
    const osc = ctx.createOscillator();
    const gain = ctx.createGain();
    const filter = ctx.createBiquadFilter();

    osc.type = 'square';
    osc.frequency.value = freq;

    filter.type = 'lowpass';
    filter.frequency.setValueAtTime(3000, startTime);
    filter.frequency.exponentialRampToValueAtTime(800, startTime + duration * 0.8);
    filter.Q.value = 5;

    osc.connect(filter);
    filter.connect(gain);
    gain.connect(masterGain);

    gain.gain.setValueAtTime(0.12, startTime);
    gain.gain.setValueAtTime(0.1, startTime + 0.05);
    gain.gain.exponentialRampToValueAtTime(0.001, startTime + duration);

    osc.start(startTime);
    osc.stop(startTime + duration);
    musicNodes.push(osc);
  }

  // Create sparkly arpeggio sound
  function playArpeggio(freq, startTime) {
    const osc = ctx.createOscillator();
    const gain = ctx.createGain();

    osc.type = 'sine';
    osc.frequency.value = freq;

    osc.connect(gain);
    gain.connect(masterGain);

    gain.gain.setValueAtTime(0.08, startTime);
    gain.gain.exponentialRampToValueAtTime(0.001, startTime + 0.15);

    osc.start(startTime);
    osc.stop(startTime + 0.15);
    musicNodes.push(osc);
  }

  // Hi-hat rhythm for groove
  function playHiHat(startTime, accent = false) {
    const bufferSize = ctx.sampleRate * 0.05;
    const buffer = ctx.createBuffer(1, bufferSize, ctx.sampleRate);
    const data = buffer.getChannelData(0);
    for (let i = 0; i < bufferSize; i++) {
      data[i] = (Math.random() * 2 - 1) * Math.pow(1 - i / bufferSize, 3);
    }

    const noise = ctx.createBufferSource();
    const gain = ctx.createGain();
    const filter = ctx.createBiquadFilter();

    noise.buffer = buffer;
    filter.type = 'highpass';
    filter.frequency.value = 7000;

    noise.connect(filter);
    filter.connect(gain);
    gain.connect(masterGain);

    gain.gain.value = accent ? 0.06 : 0.03;

    noise.start(startTime);
    musicNodes.push(noise);
  }

  // 8-beat loop duration
  const loopDuration = beatMs * 8;
  let loopCount = 0;

  function playLoop() {
    if (currentTrack !== 'casino') return;

    const now = ctx.currentTime;

    // Play bass pattern
    bassPattern.forEach(b => {
      playBass(b.note, now + (b.time * beatMs / 1000));
    });

    // Play chord stabs
    chordPattern.forEach(c => {
      playChord(c.notes, now + (c.time * beatMs / 1000), c.dur * (beatMs / 1000) * 2);
    });

    // Play melody (alternate patterns for variation)
    if (loopCount % 2 === 0) {
      melodyPattern.forEach(m => {
        playLead(m.note, now + (m.time * beatMs / 1000), m.dur * (beatMs / 1000));
      });
    } else {
      // Variation: melody an octave lower, slightly different
      melodyPattern.slice(0, 8).forEach(m => {
        playLead(m.note / 2, now + (m.time * beatMs / 1000), m.dur * (beatMs / 1000));
      });
    }

    // Play arpeggios
    arpeggioPattern.forEach(a => {
      playArpeggio(a.note, now + (a.time * beatMs / 1000));
    });

    // Hi-hat pattern (16th notes with accents on 1 and 3)
    for (let i = 0; i < 32; i++) {
      const accent = (i % 8 === 0) || (i % 8 === 4);
      playHiHat(now + (i * sixteenth / 1000), accent);
    }

    loopCount++;
  }

  playLoop();
  musicInterval = setInterval(playLoop, loopDuration);
}

function playDnBMusic() {
  const ctx = getAudioContext();

  // Master chain
  const masterGain = ctx.createGain();
  const compressor = ctx.createDynamicsCompressor();
  masterGain.gain.value = 0.22;
  compressor.threshold.value = -18;
  compressor.knee.value = 8;
  compressor.ratio.value = 6;
  compressor.attack.value = 0.003;
  compressor.release.value = 0.1;
  masterGain.connect(compressor);
  compressor.connect(ctx.destination);

  // DnB tempo: 174 BPM
  const BPM = 174;
  const beatMs = 60000 / BPM;
  const sixteenth = beatMs / 4;

  // Notes
  const NOTE = {
    E1: 41.2, A1: 55, B1: 61.74, C2: 65.41, D2: 73.42, E2: 82.41, F2: 87.31, G2: 98,
    A2: 110, B2: 123.47, C3: 130.81, D3: 146.83, E3: 164.81, F3: 174.61, G3: 196,
    A3: 220, B3: 246.94, C4: 261.63, D4: 293.66, E4: 329.63, F4: 349.23, G4: 392,
    A4: 440, B4: 493.88, C5: 523.25, D5: 587.33, E5: 659.25, F5: 698.46, G5: 784,
    A5: 880, C6: 1046.5, E6: 1318.5
  };

  // Reese bass pattern (dark, wobbly DnB bass)
  const bassPattern = [
    { note: NOTE.E1, time: 0, dur: 1.5 },
    { note: NOTE.E1, time: 2, dur: 0.5 },
    { note: NOTE.G2, time: 2.75, dur: 0.25 },
    { note: NOTE.E1, time: 3, dur: 0.75 },
    { note: NOTE.D2, time: 4, dur: 1.5 },
    { note: NOTE.E1, time: 6, dur: 0.5 },
    { note: NOTE.A1, time: 6.75, dur: 0.25 },
    { note: NOTE.E1, time: 7, dur: 0.75 }
  ];

  // Casino-style synth stabs (video game vibes)
  const stabPattern = [
    { notes: [NOTE.E4, NOTE.G4, NOTE.B4], time: 0.5, dur: 0.15 },
    { notes: [NOTE.E4, NOTE.G4, NOTE.B4], time: 1.25, dur: 0.1 },
    { notes: [NOTE.D4, NOTE.F4, NOTE.A4], time: 2.5, dur: 0.15 },
    { notes: [NOTE.E4, NOTE.G4, NOTE.B4], time: 4.5, dur: 0.15 },
    { notes: [NOTE.G4, NOTE.B4, NOTE.D5], time: 5.25, dur: 0.1 },
    { notes: [NOTE.A4, NOTE.C5, NOTE.E5], time: 6.5, dur: 0.2 }
  ];

  // Slot machine arpeggio (ascending coin sounds)
  const coinArp = [
    { note: NOTE.E5, time: 1.5 }, { note: NOTE.G5, time: 1.5625 }, { note: NOTE.B4, time: 1.625 }, { note: NOTE.E6, time: 1.6875 },
    { note: NOTE.A4, time: 3.5 }, { note: NOTE.C5, time: 3.5625 }, { note: NOTE.E5, time: 3.625 }, { note: NOTE.A5, time: 3.6875 },
    { note: NOTE.G4, time: 5.5 }, { note: NOTE.B4, time: 5.5625 }, { note: NOTE.D5, time: 5.625 }, { note: NOTE.G5, time: 5.6875 },
    { note: NOTE.E5, time: 7.5 }, { note: NOTE.G5, time: 7.5625 }, { note: NOTE.B4, time: 7.625 }, { note: NOTE.E6, time: 7.6875 }
  ];

  // 8-bit lead melody (video game style)
  const melodyPattern = [
    { note: NOTE.E5, time: 0, dur: 0.25 },
    { note: NOTE.G5, time: 0.5, dur: 0.25 },
    { note: NOTE.A5, time: 0.75, dur: 0.5 },
    { note: NOTE.G5, time: 1.5, dur: 0.25 },
    { note: NOTE.E5, time: 2, dur: 0.5 },
    { note: NOTE.D5, time: 2.75, dur: 0.25 },
    { note: NOTE.E5, time: 3, dur: 0.75 },
    { note: NOTE.E5, time: 4, dur: 0.25 },
    { note: NOTE.G5, time: 4.5, dur: 0.25 },
    { note: NOTE.A5, time: 5, dur: 0.5 },
    { note: NOTE.C6, time: 5.75, dur: 0.25 },
    { note: NOTE.B4, time: 6, dur: 0.5 },
    { note: NOTE.A5, time: 6.75, dur: 0.25 },
    { note: NOTE.G5, time: 7, dur: 0.75 }
  ];

  // Reese bass with wobble
  function playReeseBass(freq, startTime, duration) {
    const osc1 = ctx.createOscillator();
    const osc2 = ctx.createOscillator();
    const gain = ctx.createGain();
    const filter = ctx.createBiquadFilter();

    // LFO for wobble
    const lfo = ctx.createOscillator();
    const lfoGain = ctx.createGain();
    lfo.frequency.value = 4 + Math.random() * 2; // Wobble speed
    lfoGain.gain.value = 300;
    lfo.connect(lfoGain);
    lfoGain.connect(filter.frequency);

    osc1.type = 'sawtooth';
    osc2.type = 'sawtooth';
    osc1.frequency.value = freq;
    osc2.frequency.value = freq * 1.005; // Detune for thickness

    filter.type = 'lowpass';
    filter.frequency.value = 600;
    filter.Q.value = 8;

    osc1.connect(filter);
    osc2.connect(filter);
    filter.connect(gain);
    gain.connect(masterGain);

    gain.gain.setValueAtTime(0.4, startTime);
    gain.gain.setValueAtTime(0.35, startTime + 0.05);
    gain.gain.exponentialRampToValueAtTime(0.01, startTime + duration);

    lfo.start(startTime);
    osc1.start(startTime);
    osc2.start(startTime);
    lfo.stop(startTime + duration);
    osc1.stop(startTime + duration);
    osc2.stop(startTime + duration);
    musicNodes.push(osc1, osc2, lfo);
  }

  // Punchy synth stab
  function playStab(freqs, startTime, duration) {
    freqs.forEach((freq, i) => {
      const osc = ctx.createOscillator();
      const gain = ctx.createGain();
      const filter = ctx.createBiquadFilter();

      osc.type = 'square';
      osc.frequency.value = freq;

      filter.type = 'lowpass';
      filter.frequency.setValueAtTime(4000, startTime);
      filter.frequency.exponentialRampToValueAtTime(800, startTime + duration);
      filter.Q.value = 3;

      osc.connect(filter);
      filter.connect(gain);
      gain.connect(masterGain);

      gain.gain.setValueAtTime(0.12, startTime);
      gain.gain.exponentialRampToValueAtTime(0.001, startTime + duration);

      osc.start(startTime);
      osc.stop(startTime + duration);
      musicNodes.push(osc);
    });
  }

  // 8-bit lead with pitch bend
  function playLead8bit(freq, startTime, duration) {
    const osc = ctx.createOscillator();
    const gain = ctx.createGain();

    osc.type = 'square';
    osc.frequency.setValueAtTime(freq * 0.98, startTime);
    osc.frequency.linearRampToValueAtTime(freq, startTime + 0.02);

    osc.connect(gain);
    gain.connect(masterGain);

    gain.gain.setValueAtTime(0.08, startTime);
    gain.gain.setValueAtTime(0.06, startTime + 0.03);
    gain.gain.exponentialRampToValueAtTime(0.001, startTime + duration);

    osc.start(startTime);
    osc.stop(startTime + duration);
    musicNodes.push(osc);
  }

  // Coin/arpeggio sound
  function playCoin(freq, startTime) {
    const osc = ctx.createOscillator();
    const gain = ctx.createGain();

    osc.type = 'sine';
    osc.frequency.value = freq;

    osc.connect(gain);
    gain.connect(masterGain);

    gain.gain.setValueAtTime(0.1, startTime);
    gain.gain.exponentialRampToValueAtTime(0.001, startTime + 0.1);

    osc.start(startTime);
    osc.stop(startTime + 0.1);
    musicNodes.push(osc);
  }

  // DnB breakbeat kick
  function playKick(startTime) {
    const osc = ctx.createOscillator();
    const gain = ctx.createGain();

    osc.type = 'sine';
    osc.frequency.setValueAtTime(150, startTime);
    osc.frequency.exponentialRampToValueAtTime(40, startTime + 0.1);

    osc.connect(gain);
    gain.connect(masterGain);

    gain.gain.setValueAtTime(0.5, startTime);
    gain.gain.exponentialRampToValueAtTime(0.001, startTime + 0.15);

    osc.start(startTime);
    osc.stop(startTime + 0.15);
    musicNodes.push(osc);
  }

  // Snappy snare
  function playSnare(startTime) {
    // Noise component
    const bufferSize = ctx.sampleRate * 0.1;
    const buffer = ctx.createBuffer(1, bufferSize, ctx.sampleRate);
    const data = buffer.getChannelData(0);
    for (let i = 0; i < bufferSize; i++) {
      data[i] = (Math.random() * 2 - 1) * Math.pow(1 - i / bufferSize, 2);
    }

    const noise = ctx.createBufferSource();
    const noiseGain = ctx.createGain();
    const noiseFilter = ctx.createBiquadFilter();

    noise.buffer = buffer;
    noiseFilter.type = 'highpass';
    noiseFilter.frequency.value = 2000;

    noise.connect(noiseFilter);
    noiseFilter.connect(noiseGain);
    noiseGain.connect(masterGain);
    noiseGain.gain.value = 0.25;

    // Tonal component
    const osc = ctx.createOscillator();
    const oscGain = ctx.createGain();
    osc.type = 'triangle';
    osc.frequency.setValueAtTime(200, startTime);
    osc.frequency.exponentialRampToValueAtTime(80, startTime + 0.05);
    osc.connect(oscGain);
    oscGain.connect(masterGain);
    oscGain.gain.setValueAtTime(0.2, startTime);
    oscGain.gain.exponentialRampToValueAtTime(0.001, startTime + 0.08);

    noise.start(startTime);
    osc.start(startTime);
    osc.stop(startTime + 0.08);
    musicNodes.push(noise, osc);
  }

  // Fast hi-hats
  function playHat(startTime, open = false) {
    const bufferSize = ctx.sampleRate * (open ? 0.15 : 0.04);
    const buffer = ctx.createBuffer(1, bufferSize, ctx.sampleRate);
    const data = buffer.getChannelData(0);
    for (let i = 0; i < bufferSize; i++) {
      data[i] = (Math.random() * 2 - 1) * Math.pow(1 - i / bufferSize, open ? 1.5 : 4);
    }

    const noise = ctx.createBufferSource();
    const gain = ctx.createGain();
    const filter = ctx.createBiquadFilter();

    noise.buffer = buffer;
    filter.type = 'highpass';
    filter.frequency.value = 8000;

    noise.connect(filter);
    filter.connect(gain);
    gain.connect(masterGain);
    gain.gain.value = open ? 0.08 : 0.05;

    noise.start(startTime);
    musicNodes.push(noise);
  }

  // DnB breakbeat pattern (amen-style)
  // Pattern: K---S--K--S-K-S- (16 sixteenths per bar)
  const drumPattern = [
    { type: 'kick', pos: 0 },
    { type: 'snare', pos: 4 },
    { type: 'kick', pos: 8 },
    { type: 'kick', pos: 10 },
    { type: 'snare', pos: 12 },
    { type: 'kick', pos: 14 },
    // Second bar variation
    { type: 'kick', pos: 16 },
    { type: 'snare', pos: 20 },
    { type: 'kick', pos: 22 },
    { type: 'snare', pos: 24 },
    { type: 'kick', pos: 26 },
    { type: 'snare', pos: 28 },
    { type: 'kick', pos: 30 }
  ];

  const loopDuration = beatMs * 8;
  let loopCount = 0;

  function playLoop() {
    if (currentTrack !== 'dnb') return;

    const now = ctx.currentTime;

    // Bass
    bassPattern.forEach(b => {
      playReeseBass(b.note, now + (b.time * beatMs / 1000), b.dur * (beatMs / 1000));
    });

    // Synth stabs
    stabPattern.forEach(s => {
      playStab(s.notes, now + (s.time * beatMs / 1000), s.dur * (beatMs / 1000) * 2);
    });

    // Melody (every other loop for variation)
    if (loopCount % 2 === 0) {
      melodyPattern.forEach(m => {
        playLead8bit(m.note, now + (m.time * beatMs / 1000), m.dur * (beatMs / 1000));
      });
    }

    // Coin arpeggios
    coinArp.forEach(c => {
      playCoin(c.note, now + (c.time * beatMs / 1000));
    });

    // Drums - 32 sixteenths (8 beats)
    drumPattern.forEach(d => {
      const time = now + (d.pos * sixteenth / 1000);
      if (d.type === 'kick') playKick(time);
      else if (d.type === 'snare') playSnare(time);
    });

    // Hi-hats (every other 16th with some variation)
    for (let i = 0; i < 32; i++) {
      if (i % 2 === 0 || Math.random() > 0.6) {
        const open = (i % 8 === 6);
        playHat(now + (i * sixteenth / 1000), open);
      }
    }

    loopCount++;
  }

  playLoop();
  musicInterval = setInterval(playLoop, loopDuration);
}

function setMusic(track) {
  stopMusic();
  currentTrack = track;

  // Update UI
  document.querySelectorAll('.music-option').forEach(btn => {
    btn.classList.toggle('active', btn.dataset.track === track);
  });

  const musicBtn = document.getElementById('music-btn');

  if (track === 'none') {
    return;
  }

  if (musicBtn) musicBtn.classList.add('playing');

  // Need user interaction to start audio
  const ctx = getAudioContext();
  if (ctx.state === 'suspended') {
    ctx.resume();
  }

  switch (track) {
    case 'chill':
      playChillMusic();
      break;
    case 'ambient':
      playAmbientMusic();
      break;
    case 'casino':
      playCasinoMusic();
      break;
    case 'dnb':
      playDnBMusic();
      break;
  }
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
  // Generic win - ascending arpeggio
  const notes = [523, 659, 784, 1047]; // C5, E5, G5, C6
  notes.forEach((freq, i) => {
    setTimeout(() => {
      playTone(freq, 0.3, 'sine', 0.2);
      playTone(freq * 1.5, 0.3, 'triangle', 0.1);
    }, i * 100);
  });
}

// Different sounds for different win types
function playThreeCherriesSound() {
  // Big win! Bright, exciting fanfare
  const notes = [659, 784, 880, 1047, 1319]; // E5, G5, A5, C6, E6
  notes.forEach((freq, i) => {
    setTimeout(() => {
      playTone(freq, 0.25, 'sine', 0.22);
      playTone(freq * 0.5, 0.25, 'triangle', 0.12);
    }, i * 80);
  });
  // Sparkle effect
  for (let i = 0; i < 8; i++) {
    setTimeout(() => playTone(1500 + Math.random() * 1500, 0.08, 'sine', 0.06), 300 + i * 60);
  }
}

function playThreeBarsSound() {
  // Medium-big win - punchy triumphant sound
  const notes = [392, 494, 587, 784]; // G4, B4, D5, G5
  notes.forEach((freq, i) => {
    setTimeout(() => {
      playTone(freq, 0.2, 'square', 0.15);
      playTone(freq * 2, 0.15, 'sine', 0.08);
    }, i * 90);
  });
}

function playThreeBellsSound() {
  // Bell-like chime for bells win
  const notes = [880, 1109, 1319]; // A5, C#6, E6 - bright chord
  notes.forEach((freq, i) => {
    setTimeout(() => {
      playTone(freq, 0.4, 'sine', 0.18);
      playTone(freq * 2, 0.3, 'sine', 0.06);
    }, i * 50);
  });
}

function playThreeLemonsSound() {
  // Smaller win - cheerful quick melody
  const notes = [523, 587, 659]; // C5, D5, E5
  notes.forEach((freq, i) => {
    setTimeout(() => {
      playTone(freq, 0.15, 'sine', 0.15);
    }, i * 70);
  });
}

function playTwoMatchSound() {
  // Small win but still exciting - quick celebratory jingle
  const notes = [523, 659, 784, 880]; // C5, E5, G5, A5
  notes.forEach((freq, i) => {
    setTimeout(() => {
      playTone(freq, 0.12, 'sine', 0.15);
      playTone(freq * 1.5, 0.1, 'triangle', 0.06);
    }, i * 50);
  });
  // Add a little shimmer
  setTimeout(() => playTone(1200, 0.08, 'sine', 0.05), 180);
  setTimeout(() => playTone(1400, 0.08, 'sine', 0.05), 220);
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
const spinBtnMobile = document.getElementById('spin-btn-mobile');
const resultDisplay = document.getElementById('result-display');
const balanceValue = document.getElementById('balance-value');
const jackpotValue = document.getElementById('jackpot-value');
const loadingOverlay = document.getElementById('loading-overlay');
const spinHistory = document.getElementById('spin-history');

// Helper to sync both spin buttons
function setSpinButtonDisabled(disabled) {
  spinBtn.disabled = disabled;
  if (spinBtnMobile) spinBtnMobile.disabled = disabled;
}

function setSpinButtonSpinning(spinning) {
  if (spinning) {
    spinBtn.classList.add('spinning');
    if (spinBtnMobile) spinBtnMobile.classList.add('spinning');
  } else {
    spinBtn.classList.remove('spinning');
    if (spinBtnMobile) spinBtnMobile.classList.remove('spinning');
  }
}

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
    setSpinButtonSpinning(false);
    setSpinButtonDisabled(false);
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
    await waitForSdk();

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
        appName: CONFIG.appName
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
  setSpinButtonDisabled(true);
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
  setSpinButtonDisabled(false);

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
    setSpinButtonDisabled(true);
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
          // Play different sounds based on win type
          const r1 = spinResult.reel1, r2 = spinResult.reel2, r3 = spinResult.reel3;
          const isThreeOfAKind = (r1 === r2 && r2 === r3);
          if (isThreeOfAKind) {
            // Symbol indices: 0=Lemon, 1=Cherry, 2=Bell, 3=Bar, 4=Seven
            if (r1 === 1) playThreeCherriesSound();      // Cherry - 5x
            else if (r1 === 3) playThreeBarsSound();     // Bar - 3x
            else if (r1 === 2) playThreeBellsSound();    // Bell - 2x
            else if (r1 === 0) playThreeLemonsSound();   // Lemon - 1.5x
            else playWinSound();
          } else {
            playTwoMatchSound(); // Two matching - 0.5x
          }
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
  setSpinButtonDisabled(false);
  isSpinning = false;
  setSpinButtonSpinning(false);

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
  setSpinButtonDisabled(false);
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

let loadingHelpTimeout = null;

function showLoading() {
  loadingOverlay.classList.remove('hidden');
  const loadingHelp = document.getElementById('loading-help');
  if (loadingHelp) {
    loadingHelp.classList.add('hidden');
    // Show help after 6 seconds if still loading
    loadingHelpTimeout = setTimeout(() => {
      loadingHelp.classList.remove('hidden');
    }, 9000);
  }
}

function hideLoading() {
  loadingOverlay.classList.add('hidden');
  const loadingHelp = document.getElementById('loading-help');
  if (loadingHelp) {
    loadingHelp.classList.add('hidden');
  }
  if (loadingHelpTimeout) {
    clearTimeout(loadingHelpTimeout);
    loadingHelpTimeout = null;
  }
}

// Initialize
document.addEventListener('DOMContentLoaded', () => {
  // Event listeners - must be inside DOMContentLoaded
  spinBtn.addEventListener('click', spin);
  if (spinBtnMobile) spinBtnMobile.addEventListener('click', spin);

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

  // Music controls
  const musicBtn = document.getElementById('music-btn');
  const musicMenu = document.getElementById('music-menu');
  const musicOptions = document.querySelectorAll('.music-option');

  if (musicBtn && musicMenu) {
    musicBtn.addEventListener('click', (e) => {
      e.stopPropagation();
      musicMenu.classList.toggle('hidden');
    });
  }

  if (musicOptions) {
    musicOptions.forEach(option => {
      option.addEventListener('click', () => {
        const track = option.dataset.track;
        setMusic(track);
        // Update active state
        musicOptions.forEach(opt => opt.classList.remove('active'));
        option.classList.add('active');
        // Update button state
        if (musicBtn) {
          musicBtn.classList.toggle('playing', track !== 'none');
        }
        // Hide menu
        if (musicMenu) {
          musicMenu.classList.add('hidden');
        }
      });
    });
  }

  // Cancel sign button
  const cancelSignBtn = document.getElementById('cancel-sign-btn');
  if (cancelSignBtn) {
    cancelSignBtn.addEventListener('click', () => {
      hideLoading();
      setSpinButtonDisabled(false);
      isSpinning = false;
      showResult('Transaction cancelled', 'error');
    });
  }

  // Close menus when clicking outside
  document.addEventListener('click', (e) => {
    const accountMenu = document.getElementById('account-menu');
    const walletContainer = document.querySelector('.wallet-container');
    if (accountMenu && walletContainer && !walletContainer.contains(e.target)) {
      accountMenu.classList.add('hidden');
    }
    // Close music menu when clicking outside
    const musicSelector = document.querySelector('.music-selector');
    const musicMenuEl = document.getElementById('music-menu');
    if (musicMenuEl && musicSelector && !musicSelector.contains(e.target)) {
      musicMenuEl.classList.add('hidden');
    }
  });
  initReels();
  createSparkles();
  initBetSelector();
  updateContractStats();

  // Try to restore previous session
  waitForSdk().then(() => ProtonWebSDK({
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
  })).then(result => {
    if (result.session) {
      link = result.link;
      session = result.session;
      onWalletConnected();
    }
  }).catch(() => {
    // No session to restore
  });
});
