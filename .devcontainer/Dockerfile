FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    xfce4 xfce4-goodies \
    dbus-x11 \
    tigervnc-standalone-server \
    novnc python3-websockify \
    wget curl git \
    htop \
    papirus-icon-theme \
    arc-theme \
    plank \
    && apt-get clean
