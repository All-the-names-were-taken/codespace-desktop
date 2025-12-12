FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
    tigervnc-standalone-server \
    tigervnc-xorg-extension \
    xfce4 \
    xfce4-goodies \
    dbus-x11 \
    xterm \
    novnc \
    websockify \
    python3-websockify \
    python3-numpy \
    cabextract \
    htop \
    software-properties-common

RUN apt-get remove -y firefox && \
    echo 'Package: firefox*\nPin: release o=LP-PPA-mozillateam\nPin-Priority: 1001' | tee /etc/apt/preferences.d/Mozilla && \
    add-apt-repository ppa:mozillateam/ppa && \
    apt-get update && \
    apt-get install -y firefox

RUN mkdir -p /root/.vnc && \
    printf "password\n" | vncpasswd -f > /root/.vnc/passwd && \
    chmod 600 /root/.vnc/passwd

COPY xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup
