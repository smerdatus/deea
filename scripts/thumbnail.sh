#!/bin/bash

# mp4 version
FILES=*.mp4
SEEK_POINT=00:00:00
IMG_FORMAT=png

for f in $FILES
do
  # echo "Converting $f ..."
  # ffmpeg -fflags +genpts -i "$f" -r 24 "${f%.*}".mp4
  echo "Generating thumbnail for $f ..."
  ffmpeg -i "$f" -y -an -ss $SEEK_POINT -vcodec $IMG_FORMAT -r 1 -vframes 1 "${f%.*}".mp4.png
  echo "===================================================="
done

# ffmpeg -y -an -ss 00:00:00 -vcodec png -r 1 -vframes 1 43sunday.mp4.png -i 


# for f in $FILES
# do
#   echo "Deleting $f ..."
#   rm $f
# done


# ffmpeg -i 2.mp4 -y -an -ss 00:00:01 -vcodec png -r 1 -vframes 1 2.png


# webm version
# FILES=*.webm
# SEEK_POINT=00:00:00
# IMG_FORMAT=png

# for f in $FILES
# do
#   echo "Converting $f ..."
#   ffmpeg -fflags +genpts -i "$f" -r 24 "${f%.*}".mp4
#   echo "Generating thumbnail for $f ..."
#   ffmpeg -i "$f" -y -an -ss $SEEK_POINT -vcodec $IMG_FORMAT -r 1 -vframes 1 "${f%.*}".mp4.png
#   echo "===================================================="
# done

# for f in $FILES
# do
#   echo "Deleting $f ..."
#   rm $f
# done