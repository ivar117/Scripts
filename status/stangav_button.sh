#!/bin/sh

case "$1" in
	1) xmenu_shutdown ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/stangav ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
