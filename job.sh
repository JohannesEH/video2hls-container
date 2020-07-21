#!/bin/sh
wget -qO job.mp4 $1 && \
./video2hls --poster-quality 90 job.mp4;