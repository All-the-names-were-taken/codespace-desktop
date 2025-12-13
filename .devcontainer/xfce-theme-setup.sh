#!/bin/bash

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml

xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
xfconf-query -c xsettings -p /Gtk/FontName -s "Sans 10"

xfconf-query -c xfwm4 -p /general/theme -s "Arc-Dark"
xfconf-query -c xfwm4 -p /general/use_compositing -s false

plank &
