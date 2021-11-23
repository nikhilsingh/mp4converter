#!/bin/bash

echo Start Converting AVI files to mp4 
cd "${0%/*}/sourcefiles"
pwd
for i in *; do ffmpeg -i "$i" -c:v libx264 -c:a sac -vf format=yuv420p -crf 1 -movflags +faststart "${0%/*}"/convertedfiles/"${i%.*}.mp4"; done