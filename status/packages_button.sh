#!/bin/sh

case "$1" in
	1) setsid -f $TERMINAL -e uppgradera ;;
	#2) setsid -f st -n spterm -g 100x20 doas pacman -Sy && sigdwmblocks 11 ;;
	2) doas pacman -Sy && sigdwmblocks 5 ;; #Gör så att kör detta i bakgrunden då och då lol
	3) setsid -f $TERMINAL -e pacman -Qu | bat ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/packages ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
