#!/bin/sh

case "$1" in
	#1) notify-send -t 11111 "This month" "$(cal --color=always | sed "s/..7m/<b><span color=\"red\">/;s/..27m/<\/span><\/b>/")" && sigdwmblocks 1 ;; #&& notify-send "Appointments" "$(calcurse -d3)" ;; 
	1) kalender ;;
	2) xdotool key super+t && sigdwmblocks 1 ;;
	3) xdotool key super+shift+c && sigdwmblocks 1 ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/tid ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
