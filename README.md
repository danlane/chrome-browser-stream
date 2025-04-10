# Chrome Browser Stream

(This was 100% made by AI, including this README)

This Dockerised setup runs a headless Chromium browser in full-screen kiosk mode, renders any webpage in a virtual display (via Xvfb), and streams it live via RTSP to your home network. Perfect for dashboards, countdowns, signage, or anything else you want fullscreen on VLC, Apple TV, or a smart display.

---

## 🚀 Features

- Chromium browser in kiosk/fullscreen mode
- Virtual display with Xvfb
- RTSP video stream (H.264) using FFmpeg
- Watchable on VLC, Apple TV, or any RTSP-compatible device

---

## 📦 Requirements

- Docker
- Docker Compose
- RTSP viewer (VLC, Apple TV VLC app, etc)

---

## 🧰 Usage

```bash
git clone https://github.com/danlane/chrome-browser-stream.git
cd chrome-browser-stream
docker compose up --build
