# raw-video-tools
scripts to help with Magic Lantern RAW video

# Instructions
Copy mlv-proj-tpl.sh to somewhere else (probably your project directory)
and edit it using the comments in the file.

Then run make-video.sh

It will look for all .MLV videos on your card.  It will extract them to .dng files,
then convert all those to TIFF using ufraw-batch. Finally, it calls ffmpeg
to create a video.
If a .wav file exists, that has the sound and it will be combined with the video.
