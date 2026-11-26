---
name: "video-style-learner"
description: "Learn a brand's or creator's video style from reference videos and write it into STYLE.md. Use when asked to learn, copy or match the style of reference videos, or when a brand's STYLE.md is empty."
---

# Video style learner

Goal: turn 3 to 10 reference videos into a STYLE.md specific enough that a new edit can be checked against it.

## 1. Find the brand folder
Use the brand folder the user names (each has `References/` and `STYLE.md`). If they name none, ask which one.

## 2. Measure every reference
For each video in `References/`, get:
- Size, fps, duration: `ffprobe`.
- Cuts: `ffmpeg -i f.mp4 -vf "select='gt(scene,0.27)',showinfo" -f null -`
- Loudness: `ffmpeg -i f.mp4 -af ebur128=peak=true -f null -`
- Frames: one per shot, plus frames at 0.2 s, 1 s and 2 s (the hook).
- Transcript with Whisper if available.
Write the working files to `References/_analysis/`, which is the only place you add files inside References.

## 3. Look, do not guess
Open the frames. Note caption style (word by word, phrase, none), font weight and case, caption position and highlight colour, face size, B-roll versus talking-head ratio, colour grade, logo use, text density, transitions, emoji. Read transcripts for hook wording, pace (words per minute), language mix and CTA.

## 4. Write STYLE.md
Fill every section: Identity, Visual, Edit rhythm, Captions, Audio, Do/Don't, Reference log. Use numbers from the analysis (median shot length, cuts per minute, LUFS, first-cut time) and concrete values. Where references disagree, write the majority pattern and note the exception. Label anything inferred from a single video "(1 ref)". Never invent fonts or hex values you cannot see; write "unknown - ask".

## 5. Confirm
Show a 5-line summary (hook, pace, captions, look, audio) and ask what to correct. Apply corrections to STYLE.md; the user's word overrides the analysis.
