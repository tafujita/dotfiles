#!/bin/bash
# modified from http://ficate.com/blog/2012/10/15/battery-life-in-the-land-of-tmux/

# Set battery icon: '♥ '
HEART='⦿ '
# Set maximum number of battery indicators
MAX_SLOTS=3
# Set color (UTF-8 chars)
color_active=colour181
color_inactive=colour236

if [[ `uname` == 'Linux' ]]; then
	current_charge=$(cat /proc/acpi/battery/BAT1/state | grep 'remaining capacity' | awk '{print $3}')
	total_charge=$(cat /proc/acpi/battery/BAT1/info | grep 'last full capacity' | awk '{print $4}')
else
	battery_info=`ioreg -rc AppleSmartBattery`
	current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
	total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
fi
# round up the charge with awk
charged_slots=$(echo "(($current_charge/$total_charge)*$MAX_SLOTS)" | bc -l | awk '{printf("%d\n",$1 + 0.5)}')
if [[ $charged_slots -gt $MAX_SLOTS ]]; then
	charged_slots=$MAX_SLOTS
fi

echo -n "#[fg=$color_active]"
for i in `seq 1 $charged_slots`; do echo -n "$HEART"; done

if [[ $charged_slots -lt $MAX_SLOTS ]]; then
	echo -n "#[fg=$color_inactive]"
	for i in `seq 1 $(echo "$MAX_SLOTS-$charged_slots" | bc)`; do echo -n "$HEART"; done
fi
