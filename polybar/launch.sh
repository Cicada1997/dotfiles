#!/bin/bash

# Stoppa alla tidigare Polybar-instanser
killall -q polybar

# Vänta tills alla Polybar-processer har avslutats
while pgrep -u "$UID" -x polybar >/dev/null; do
    sleep 1
done

# Starta Polybar på varje ansluten skärm
if type "xrandr" >/dev/null 2>&1; then
    for monitor in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR="$monitor" polybar --reload main &
    done
else
    polybar --reload main &
fi

echo "Polybar har startats på alla skärmar..."
