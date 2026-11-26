# AI Video Editor System

A folder + rules system that makes Claude edit videos the way a real editor works: it knows your style, your assets and your rules before it touches a frame.

Start here: **[GUIDE.md](GUIDE.md)** (10 minutes to read, about an hour to set up).

## What is inside

| Path | What it is |
| --- | --- |
| `GUIDE.md` | The full step-by-step setup, in the same order as the reel |
| `CLAUDE.md` | The rules file. This is the most important file. It is also inside `folder-template/` |
| `folder-template/` | Copy this to your Desktop. It has the folder structure, `CLAUDE.md`, blank `STYLE.md`, `BRIEF.md`, platform specs, `new_project.sh` and two skills in `.claude/skills/`: `video-producer` (runs a job end to end) and `video-style-learner` (learns style from your reference reels) |
| `prompts/` | Copy-paste prompts for each step |

## Quick start

1. Install the Claude desktop app (not the browser version).
2. Copy `folder-template/` to your Desktop and rename it `AI Video Editor`. Rename `MY-BRAND` to your brand or your own name.
3. Open `CLAUDE.md` in that folder and fill the brackets.
4. Open a new chat in Claude, select the folder, and paste `prompts/01-setup.md`.

## Not included, on purpose

- Anyone's reference reels, logos or fonts. Add your own.
- Music. Use licensed or generated music only.
- Any client footage or brand material.

Use this on your own work. Do not post other creators' footage as yours.
