#! /bin/sh

echo "Hello"
user_volume=$(zenity --scale --value=50 --text="Set volume" --title="Default Sink Volume Control")

if [ $user_volume -ge 0 ]
then
  volume_converted=$(awk "BEGIN {print $user_volume / 100}")
	wpctl set-volume @DEFAULT_SINK@ $volume_converted
else
	zenity --info --text="No Number Given"
fi
echo it is $var2
