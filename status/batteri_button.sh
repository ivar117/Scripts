#!/bin/sh

case "$1" in
	2) notify-send "$(acpi -b)" ;;
	#2) notify-send "$(acpi -b | awk '{print $3 " " $5 " " $6}')" ;;
	4) doas xbacklight -inc 2 && brightness_notif ;;
	5) doas xbacklight -dec 2 && brightness_notif ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/batteri ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
