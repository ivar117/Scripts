#!/bin/sh

case "$1" in
	1) pactl set-sink-mute @DEFAULT_SINK@ toggle ;;
	3) xdotool key super+p ;;
	#4) pamixer --allow-boost --set-limit 150 -i 1 ;;
	#5) pamixer --allow-boost --set-limit 150 -d 1 ;;
	4) audiolimit || pactl -- set-sink-volume @DEFAULT_SINK@ +1% ;;
	5) pactl -- set-sink-volume @DEFAULT_SINK@ -1% ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/volym ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/suckless/dwmblocks/config.h ;;
esac

#case "$1" in
#	1) pactl set-sink-mute @DEFAULT_SINK@ toggle && sigdwmblocks 9 ;;
#	3) xdotool key super+p && sigdwmblocks 9 ;;
#	#4) pamixer --allow-boost --set-limit 150 -i 1 && sigdwmblocks 9 ;;
#	#5) pamixer --allow-boost --set-limit 150 -d 1 && sigdwmblocks 9 ;;
#	4) audiolimit || pactl -- set-sink-volume @DEFAULT_SINK@ +1% && sigdwmblocks 9 ;;
#	5) pactl -- set-sink-volume @DEFAULT_SINK@ -1% && sigdwmblocks 9 ;;
#	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
#	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/volym ;;
#	8) "$TERMINAL" -e "$EDITOR" ~/.local/suckless/dwmblocks/config.h ;;
#esac
