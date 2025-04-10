#!/bin/bash

echo "Starting Xvfb..."
Xvfb :99 -screen 0 1280x720x24 &
export DISPLAY=:99

# Wait for X to be available
until xdpyinfo -display :99 > /dev/null 2>&1; do
  echo "Waiting for X server..."
  sleep 1
done

unclutter -idle 0 -root &

chromium --no-sandbox \
  --kiosk \
  --start-fullscreen \
  --window-size=1280,720 \
  --window-position=0,0 \
  --force-device-scale-factor=1 \
  https://invalid.name/countdown &

sleep 10

ffmpeg -f x11grab -r 30 -s 1280x720 -i :99 \
  -vcodec libx264 -preset ultrafast -tune zerolatency \
  -f rtsp rtsp://rtsp-server:8554/live.stream
