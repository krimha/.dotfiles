#!/bin/bash

killall -q polybar


while pgrep -x polybar > /dev/null; do sleep 1; done

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d' ' -f1); do
	MONITOR=$m polybar --reload top 2> $HOME/polybarlog.txt &
    done
else
    polybar --reload top 2> $HOME/polybarlog.txt &
fi


echo "Bars launched"
