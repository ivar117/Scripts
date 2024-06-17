#!/bin/sh

case "$1" in
	1) setsid -f networkmanager_dmenu && sigdwmblocks 2 ;;
	2) togglewifi ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/nätverk ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
