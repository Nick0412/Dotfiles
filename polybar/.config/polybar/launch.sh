#!/bin/bash

killall -q polybar

# polybar -c ${HOME}/.config/polybar/config bar1 &
polybar top 2>&1 | tee -a /tmp/polybar1.log & disown
