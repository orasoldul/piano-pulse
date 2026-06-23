# PianoPulse 🎹

**➡️ [Try the live demo](https://orasoldul.github.io/piano-pulse) — no install needed, works in any modern browser**

A fun, browser-based piano training game that listens to your microphone and gives you real-time feedback on your playing.

## How to use (live version)

1. Open the [live demo](https://orasoldul.github.io/piano-pulse) in **Chrome** or **Edge** (recommended).
2. Click **Enable Mic** and allow microphone access.
3. Place your laptop / phone mic about 30–70 cm from the piano (pointing at the strings or soundboard).
4. Play notes on your piano.
5. Watch the big **Target Note** and try to match it.
6. Press **Start 60s Challenge** for a proper game.

**Tip:** The live version (HTTPS) usually gives the best microphone experience.

## What it trains

- Note name fluency (C4, D#4, etc.)
- Intonation / tuning awareness (see cents deviation)
- Sustained tone control
- Quick ear-to-finger response

## New: Learn Real Songs!

Click **"Learn a Song"** or press **S** to open the song library:

- Twinkle Twinkle Little Star
- Mary Had a Little Lamb
- Jingle Bells
- Happy Birthday
- Ode to Joy

The app shows the exact sequence. Play the highlighted note on your piano (hold until it advances). You can also **Play Full Song** to hear the melody first.

Your mic listens and advances automatically when you play correctly!

## Controls & Features

- **Target note** + visual keyboard (blue = target, green = good match)
- Live detection with cents gauge
- **Play Reference** tone to hear what you should play
- Adjustable **Tolerance** (how close is good enough)
- Choose note range and whether to include black keys
- **Challenge mode**: 60 seconds — hit as many correct notes in a row as possible
- Score + combo system
- Local high score saved

## Tips for best accuracy

- Middle register (C4–C6) gives the most reliable results with most laptop mics
- Hold notes clearly for at least ~400ms
- Avoid playing too softly
- Turn off echo cancellation / noise suppression if possible (the app requests raw audio)
- Use headphones when using the reference tone button to prevent feedback
- Reduce room reverb if you can

## Keyboard shortcuts

- `Space` or `/` → New random target
- `R` → Play reference tone
- `C` or `Enter` → Start challenge

## Running locally (optional)

Prefer the [live demo](https://orasoldul.github.io/piano-pulse) for the easiest experience.

If you want to run it locally:

```powershell
# From the piano-pulse folder
python -m http.server 8000
# Then open http://localhost:8000 in your browser
```

Or use any simple static server (e.g. `npx serve .`).

## Tech

- Pure HTML + Tailwind + vanilla JavaScript
- Web Audio API + Analyser + autocorrelation pitch detection (based on proven ACF2+ implementation)
- No backend, no tracking, everything runs in your browser

## Contributing

Found a bug or have an idea? Feel free to open an issue or pull request.

If you enjoy PianoPulse, consider starring the repo — it helps others discover it!

---

Have fun practicing! The more you play, the better your note recognition and control will become.