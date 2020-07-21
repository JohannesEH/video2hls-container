FROM python:3-alpine

COPY ./job.sh ./

RUN apk add ffmpeg wget && \
  wget -q https://raw.githubusercontent.com/vincentbernat/video2hls/master/video2hls && \
  chmod +x ./video2hls && \
  chmod +x ./job.sh && \
  ls

ENTRYPOINT [ "./job.sh" ]