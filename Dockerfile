FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        chromium \
        xvfb \
        ffmpeg \
        fluxbox \
        curl \
        ca-certificates \
        unclutter && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ffmpeg-stream.sh /usr/bin/ffmpeg-stream.sh
RUN chmod +x /usr/bin/ffmpeg-stream.sh

ENTRYPOINT ["/bin/bash", "/usr/bin/ffmpeg-stream.sh"]
