#!/bin/bash
if [[ -z "$INTERFACE" ]] ; then
    INTERFACE="wlp82s0"
fi

[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] && exit

# If the wifi interface exists but no connection is active, "down" shall be displayed.
if [[ "$()" = 'down' ]]; then
    echo "🌐down"
    echo "🌐down"
    echo "#FF0000"
    exit
fi

#------------------------------------------------------------------------

QUALITY=$(grep $INTERFACE /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')
NAME=$(iwconfig ${INTERFACE} 2> /dev/null | awk -F\" '{print $2}')

#------------------------------------------------------------------------

echo "🌏 $NAME $QUALITY%" # full text
echo "🌏 $NAME $QUALITY%" # short text

# color
if [[ $QUALITY -ge 80 ]]; then
    echo "#00FF00"
elif [[ $QUALITY -ge 60 ]]; then
    echo "#FFF600"
elif [[ $QUALITY -ge 40 ]]; then
    echo "#FFAE00"
else
    echo "#FF0000"
fi