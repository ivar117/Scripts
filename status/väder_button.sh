#!/bin/sh

case "$1" in
	1) $TERMINAL -e w3m wttr.in/uppsala && sigdwmblocks 6;; #curl -sf wttr.in/uppsala | head -n 37 ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/väder ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/suckless/dwmblocks/config.h ;;
esac
