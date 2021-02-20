#!/bin/bash

sh ~/.fehbg

arr=("sxhkd" "xfce4-power-manager" "copyq" "fcitx5" "dunst" "xdman" "qv2ray" "redshift-gtk" "mpd" "picom" "conky" "~/.config/bspwm/bin/bspbar")

for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | grep -v grep | wc -l`
    if [ $isExist == 0 ]
    then
        exec "$value" &
    fi
done
