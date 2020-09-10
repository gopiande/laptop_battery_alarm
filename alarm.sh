percent=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | awk '{ print $2 }'| grep -o '[0-9]*')

status=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state" | awk '{ print $2 }')

export XDG_RUNTIME_DIR="/run/user/1000"

if [ $percent -le 10 ]
then
	if [ $status = "discharging" ]
	then
		echo "low battery"
		/usr/bin/paplay /home/gopi/softwares/battery_alarm/low_battery.ogg
	fi
fi
