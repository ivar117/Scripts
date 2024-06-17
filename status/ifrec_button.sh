#!/bin/sh

case "$1" in 
	1) echo "" > ~/.local/share/recfile && sigdwmblocks 6 && pkill -n ffmpeg
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/ifrec ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
