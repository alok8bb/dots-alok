#!/bin/bash
#ash
# You can call this script like this:
# $./bright.sh up
# $./bright.sh down

function get_value {
	light
}

function send_notification {
DIR=`dirname "$0"`
bright=`get_value`
icon_name="/usr/share/icons/Faba/48x48/notifications/notification-display-brightness.svg"
bar=" "
# Send the notification
$DIR/notify-send.sh "$bright""     ""$bar" -i "$icon_name" -t 2000 -h double:value:"$bright" -h string:synchronous:"$bar" --replace=555

}

case $1 in
    up)
        light -A 5 > /dev/null
	send_notification
	;;
    down)
	light -U 5 > /dev/null
	send_notification
	;;
esac
