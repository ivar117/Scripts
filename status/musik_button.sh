#!/bin/sh
case "$1" in
	1) mpc toggle ;;
	2) st ncmpcpp ;;
	#3) mpc next ;;
	3) notify-send -t 3500 "  $(mpc status | head -n 1)" ;;
	#3) echo " $(mpc status | head -n 1)" | xmenunonint ;;
	4) mpc seek +00:00:01 ;;
	5) mpc seek -00:00:01 ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/musik ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
