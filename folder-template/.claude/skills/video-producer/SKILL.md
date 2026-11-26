---
name: "video-producer"
description: "End-to-end video production for personal, brand and client projects: reels, Shorts, YouTube long-form, ads, course lessons. Use when asked to make, edit, cut, caption or export a video."
---

# Video producer

## 0. Orient
Work in the `AI Video Editor` workspace (read its `CLAUDE.md`). Identify the brand folder and format. Read the brand `STYLE.md` and `_SYSTEM/platform-specs.md`. If STYLE.md is empty and References/ has videos, run `video-style-learner` first.

## 1. Project and brief
Create the project with `_SYSTEM/scripts/new_project.sh <brand> "<name>" <reel|short|youtube|longform|ad>` and fill `BRIEF.md`: goal, platform(s), length, hook, CTA, references to match. Ask once for anything missing that changes the edit; otherwise assume and write the assumption in the brief.

## 2. Pick the pipeline
| Material | Pipeline |
| --- | --- |
| Talking head, podcast, course lesson | FFmpeg: probe, silence and filler cut, captions (Whisper), punch-ins, loudness, export |
| Long video to Shorts/Reels | Transcript first, pick 3 to 5 moments with a self-contained hook and payoff, reframe 9:16 with the face centred, captions |
| Promo, launch, explainer, ad, title cards, animated captions | HyperFrames |
Voiceover: ElevenLabs connector if available. Music: licensed or generated, never trending copyrighted tracks.

## 3. Script before edit
Write the script or cut list in `script/` with timestamps: hook (0 to 2 s), body beats, CTA. Keep the speaker's own words. Fix brand names in captions.

## 4. Edit
Keep `RAW Footage/` and `References/` untouched; intermediates go in the project's `edit/`. Match STYLE.md: shot length, caption style and position, colour, logo rules. Render 3 to 5 stills at the busiest moments and check the safe zone before the full render.

## 5. QC and export
Check with ffprobe (size, fps, duration) and ebur128 (loudness) against platform-specs.md. Look at the hook frames and the last frame. Export to the brand's `Exports/` using the naming in platform-specs.md.

## 6. Report
Tell the user the export path, length, and anything assumed. Log the version in BRIEF.md. Never say a video was posted, approved or delivered unless the user said so.
