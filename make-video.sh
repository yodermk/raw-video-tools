#!/bin/bash

# This is a quickie script to turn every MLV video on your card into a
# watchable video with the highest possible quality.
# It may not have ideal RAW conversion settings like color temperature
# or exposure.

for mlvfile in $CARDPATH/DCIM/*/*.MLV
do
  echo Processing $mlvfile
  base=$(basename $mlvfile .MLV)
  destdir=$VIDEOPATH/$base
  if [ ! -d $destdir ]
  then
    mkdir -p $destdir
    $MLVDUMP -o $destdir/ --dng $MLVDUMPOPTS $mlvfile
    ufraw-batch --out-type=tiff $UFRAWOPTS $destdir/*.dng
    sound=
    [ -f $destdir/.wav ] && sound="-i $destdir/.wav"
    ffmpeg -i $destdir/%6d.tif -r 24 -vcodec mjpeg $sound -qscale 1 $destdir/video.avi
  fi
done
