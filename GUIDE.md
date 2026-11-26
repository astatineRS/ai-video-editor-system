# Make Claude edit like a real video editor

Order matters. Each step feeds the next.

## Step 1. Use the desktop app, not the browser

The browser chat cannot read your folders or run tools on your computer. The Claude desktop app can work with files on your machine. Install it, sign in, and use that for everything below.

## Step 2. Make one folder for everything

Create a folder called `AI Video Editor`. Inside it, one folder per brand: your own name or brand, your company, and one per client.

Every brand folder has the same five parts:

```
MY-BRAND/
  STYLE.md        how your videos look and sound (Claude fills this in step 5)
  References/     reels you want to match
  RAW Footage/    your original clips. Claude never edits these
  Assets/         logos, fonts, music, LUTs
  Projects/       one folder per video
  Exports/        finished videos only
```

The ready-made version is in `folder-template/`. Copy it instead of building by hand.

Why one folder per brand: Claude reads the right STYLE.md and assets for that brand, so a client video never picks up your own brand's look.

## Step 3. Open a new chat and select the folder

Start a new chat in the desktop app and select `AI Video Editor` as the working folder. Claude can now see your files and read `CLAUDE.md` automatically.

## Step 4. Let Claude install the tools

Paste `prompts/01-setup.md`. It asks Claude to check what is installed and install what is missing: FFmpeg for cuts, audio and exports; a speech-to-text tool such as Whisper for captions; and HyperFrames for motion graphics and animated captions.

Ask Claude to show you the check results (versions, a test run) before you move on. If something fails, paste the error back to Claude.

## Step 5. Show it 3 to 5 reels you like

Put 3 to 5 reels from creators you like into `References/`. Then paste `prompts/02-learn-style.md`.

Claude measures them (cuts per minute, caption style, loudness, colours, pacing) and writes the result into `STYLE.md`. Read the summary it gives you and correct anything wrong. Your word overrides its measurement.

Use references to learn style only. Do not copy someone else's footage or script.

## Step 6. Give it a voice, assets and music

- **Voice:** use a voiceover tool such as ElevenLabs, with your own cloned voice or a stock one. Connect it to Claude if a connector is available.
- **Assets:** make images, icons and backgrounds with an image tool such as ChatGPT. Save them in `Assets/`.
- **Music:** use licensed music, or generate it. Do not use trending copyrighted tracks.

## Step 7. Add raw footage and write a detailed prompt

Drop your clips in `RAW Footage/`. Then give Claude a detailed brief, not "make a reel". Use `prompts/03-first-edit.md`. It covers goal, platform, length, hook, call to action and which references to match.

Expect 2 to 3 rounds. Watch the result, say what is wrong ("hook is slow, captions too low, music too loud") and let Claude fix only that.

## Last step: write your CLAUDE.md rules file

Most people skip this and then wonder why Claude repeats the same mistakes.

`CLAUDE.md` sits in the root of your folder. Claude reads it at the start of every session. Put your rules there once and never repeat them:

- Brand name spelling, so captions never write it wrong.
- Keep text out of the zones covered by app buttons and captions.
- Brand colours and fonts.
- Which assets to use.
- Check before you render, verify after.
- Never touch `RAW Footage/` or `References/`.

A working template is in `CLAUDE.md` in this repo. Whenever Claude makes a mistake, add one line to the file. After a few videos it stops making that mistake.

## Where Claude goes wrong, and the rule that fixes it

| Mistake | Rule to add |
| --- | --- |
| Brand name misspelt in captions | `Spell it "<Brand>" in every caption and on-screen text.` |
| Text hidden under Reels buttons or the caption area | `Keep text inside the safe zone in _SYSTEM/platform-specs.md.` |
| Edits your original clips | `Never modify or delete files in RAW Footage/ or References/.` |
| Renders the whole video before checking | `Render 3 to 5 still frames first and check text fits.` |
| Says the video is fine without checking | `After rendering, verify with ffprobe and loudness (ebur128).` |
| Hinglish captions come out wrong | `Check Hinglish output and fix names before rendering.` |
| Claims it posted or got approved | `Never say a video was posted or approved.` |

## Checks before you post

1. Watch it end to end, with sound, on your phone.
2. Look at the first 2 seconds and the last frame.
3. Check captions for brand and name spelling.
4. Confirm you have the right to use every clip, image, logo and track in it.
