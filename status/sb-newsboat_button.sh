#!/bin/sh

case "$1" in
	1) st -e newsboat && sigdwmblocks 4 ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/sb-newsboat ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
