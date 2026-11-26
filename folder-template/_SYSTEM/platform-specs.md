# Platform specs

Values below are a starting point. Check the platform's current help pages before a big campaign, and edit this file if they change.

## Instagram Reels (9:16)
- Size: 1080x1920. Frame rate: 30 fps. Format: MP4, H.264, AAC audio.
- Loudness: about -14 LUFS integrated, true peak -1.5 dBTP or lower.
- Safe zone (keep all text inside): leave roughly the top 14%, bottom 25% and right 12% free. Buttons, caption and username sit there. Adjust after you check a real post on your own phone.
- Length: short is fine. Hook inside the first 2 seconds.

## YouTube Shorts (9:16)
- Same size, frame rate and loudness as Reels. Keep text out of the bottom 25%.

## YouTube long-form (16:9)
- 1920x1080, 30 fps (or match the source). About -14 LUFS.

## Export naming
`<YYYY-MM-DD>_<slug>_<platform>_<WxH>_v<N>.mp4`
Example: `2026-11-26_my-first-reel_reel_1080x1920_v1.mp4`

## Check commands
- Size, fps, duration: `ffprobe -v error -show_entries stream=width,height,r_frame_rate:format=duration -of default=nw=1 file.mp4`
- Loudness: `ffmpeg -i file.mp4 -af ebur128=peak=true -f null - 2>&1 | tail -12`
