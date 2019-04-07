#!/bin/bash

killall -q polybar

while pgrep -x polybar > /dev/null; do sleep 1; done

polybar top 2> $HOME/polybarlog.txt &

echo "Bars launched"
