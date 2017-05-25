#!/bin/sh -e
DEVICE=$1
[ "$DEVICE" = "" ] && DEVICE=fenix5_sim

killall simulator || true
connectiq
./build.sh $DEVICE
monkeydo bin/activity-widget.prg $DEVICE
