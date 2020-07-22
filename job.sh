#!/bin/sh
wget -qO job.mp4 $1 && \
time ./video2hls --poster-quality 90 job.mp4;
