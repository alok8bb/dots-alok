#! /bin/sh

wid=$1
class=$2

[[ "$class" = "jetbrains-studio" ]] && [[ $(xtitle "$wid") =~ ^win[0-9]*$ ]] && echo "manage=off";
