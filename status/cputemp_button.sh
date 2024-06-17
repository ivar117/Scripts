#!/bin/sh

case "$1" in
	1) [ $(cpupower frequency-info | g The | awk '{print $3}') = "powersave" ] && doas cpupower frequency-set -g schedutil || [ $(cpupower frequency-info | g The | awk '{print $3}') = "schedutil" ] && doas cpupower frequency-set -g powersave ;;
	2) cpupower frequency-info | grep The | awk '{print"Governor="$3}' | sed 's/"//g' ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	7) "$TERMINAL" -e "$EDITOR" ~/.local/bin/status/cputemp ;;
	8) "$TERMINAL" -e "$EDITOR" ~/.local/src/dwmblocks/config.h ;;
esac
