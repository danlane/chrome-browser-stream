# Chrome Browser Stream

(This was entirely made by AI, including this README)

This Dockerised setup runs a headless Chromium browser in full-screen kiosk mode, renders any webpage in a virtual display (via Xvfb), and streams it live via RTSP to your home network. Perfect for dashboards, countdowns, signage, or anything else you want fullscreen on VLC, Apple TV, or a smart display.

## 🚀 Features

- Chromium browser in kiosk/fullscreen mode  
- Virtual display with Xvfb  
- RTSP video stream (H.264) using FFmpeg  
- Watchable on VLC, Apple TV, or any RTSP-compatible device

## 📦 Requirements

- Docker  
- Docker Compose  
- RTSP viewer (e.g. VLC, Apple TV VLC app)

## 🧰 Usage

```bash
git clone https://github.com/danlane/chrome-browser-stream.git
cd chrome-browser-stream
docker compose up --build
```

Then open the stream in VLC:

```
rtsp://<your-host-ip>:8555/live.stream
```

## 🌐 Customisation

To change the webpage being rendered, edit the Chromium launch line in `ffmpeg-stream.sh`:

```bash
chromium --no-sandbox --kiosk --start-fullscreen \
  --window-size=1280,720 --window-position=0,0 \
  --force-device-scale-factor=1 \
  https://your-url-here.com &
```

## 💡 Extras

- Mouse is hidden via `unclutter`
- Default resolution is 1280x720 (adjust in both `Xvfb` and Chromium launch args)
- RTSP server exposed on port `8555`

## 📝 License

MIT — use, modify, deploy freely.
