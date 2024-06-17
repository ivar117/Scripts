#!/bin/sh

cat <<EOF | xmenu -i
[@] Spiral Layout	0
[]= Tiled Layout	1
><> Floating Layout	2
[M] Monocle Layout	3
[\\] dwindle Layout	4
H[]  deck 		5
TTT  bstack		6
===  bstackhoriz	7
HHH  grid 		8
###  nrowgrid 		9
---  horizgrid		10
:::  gaplessgrid	11
|M|  centeredmaster	12
>M>  centeredfloatingmaster	13
EOF

