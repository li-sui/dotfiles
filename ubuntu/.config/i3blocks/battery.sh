#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9][0-9]?%')
DISCHARGE=$(acpi -b | grep -E -o 'Discharging')
CHARGE=$(acpi -b | grep -E -o 'Charging')

if [ $DISCHARGE == 'Discharging' ]
then 
  echo "🔌BAT:$BAT"
fi

if [ $CHARGE == 'Charging' ]
then 
  echo "⚡CHAR:$BAT"
fi

if [  -z $DISCHARGE ] && [  -z $CHARGE ]
then
  echo "🔋FULL:$BAT"
fi