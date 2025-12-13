#!/usr/bin/env bash
set -e

export DISPLAY=:1
export HOME=/root

mkdir -p ~/.vnc
echo "password" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

Xvfb :1 -screen 0 1280x720x24 &
sleep 2

startxfce4 &
sleep 2

x11vnc \
  -display :1 \
  -rfbport 5900 \
  -forever \
  -shared \
  -nopw \
  -noxdamage &
sleep 2

cd /opt/novnc
./utils/novnc_proxy --vnc 0.0.0.0:5900 --listen 0.0.0.0:6080
