# AI Video Editor workspace

Instructions for any Claude (Claude Code, Cowork) opened in this folder. Fill the [brackets] once.

## Layout
- One folder per brand: `[MY-BRAND]/`, `CLIENTS/<client>/`. Every brand has:
  `STYLE.md` (how its videos look and sound), `References/` (example videos to match), `RAW Footage/`, `Assets/` (logos, fonts, music, LUTs), `Projects/<date_slug>/`, `Exports/`.
- New client: copy `CLIENTS/_CLIENT-TEMPLATE/` or run `_SYSTEM/scripts/new_project.sh CLIENTS/<client> "<name>" reel`.
- `_SYSTEM/`: `platform-specs.md` (sizes, loudness, safe zones, export naming), `scripts/new_project.sh`, `templates/`.
- `.claude/skills/`: `video-producer`, `video-style-learner`, plus any editing skills you install (FFmpeg, HyperFrames).

## Rules
1. Before making or editing any video, read the brand's `STYLE.md` and `_SYSTEM/platform-specs.md`. If STYLE.md is empty and References/ has videos, run the `video-style-learner` skill first.
2. Never modify or delete files in `RAW Footage/` or `References/`. Work in `Projects/<slug>/`; final files go to `Exports/` with the naming in platform-specs.md.
3. One project = one folder from `new_project.sh`, with a filled `BRIEF.md`. Ask for missing brief fields (goal, platform, length, CTA) once, then proceed.
4. Tool choice:
   - Talking-head / course footage: FFmpeg (cuts, silence removal, captions, loudness, reframe, exports).
   - Motion graphics, promos, explainers, title cards, lower thirds, animated captions: HyperFrames.
   - Captions: Whisper. Check the output and fix names. Spell the brand "[Brand]", never a sound-alike.
   - Voiceover: ElevenLabs connector when available. Music: licensed or generated only.
5. Text safety: keep all text inside the safe zone in platform-specs.md. Never place text under platform buttons or the caption area.
6. Before a full render, render 3 to 5 still frames at the busiest moments and check text fits. After rendering, verify with ffprobe (size, fps, duration) and loudness (ebur128) against platform-specs.md.
7. Log every version in the project's BRIEF.md feedback log. Never claim a video was posted or approved.

## Brand facts
- [Brand]: [one line on what it is and who it is for]. Spell it "[Brand]".
- Colours: [hex codes]. Fonts: [names]. Logo: `Assets/[file]`.
- Always use these assets: [list]. Never use: [list].

## Mistake log
Add one line here every time Claude gets something wrong. Example:
- [date] Captions wrote the brand name wrong. Fixed by rule 4. Check every caption for it.
