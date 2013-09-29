
#! /bin/sh
### BEGIN INIT INFO
# Provides:          disablesleds
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Disables leds on boot
# Description:       Disables leds on boot
### END INIT INFO

# Author: Flufsor <flufsor@gmail.com>

case "$1" in
  start) 
    echo -n "Stopping Leds: "
    echo none > /sys/class/leds/beaglebone\:green\:usr0/trigger
    echo none > /sys/class/leds/beaglebone\:green\:usr1/trigger
    echo none > /sys/class/leds/beaglebone\:green\:usr2/trigger
    echo none > /sys/class/leds/beaglebone\:green\:usr3/trigger
    echo "Leds Stopped"
    ;;
  stop)
    echo -n "Reseting all leds to heartbeat: "
    echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
    echo heartbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
    echo hearbeat > /sys/class/leds/beaglebone\:green\:usr0/trigger
    echo "Leds reset"
    ;;
  restart|reload|force-reload)
    echo "WARNING restart, reload and force-reload not supported by this script"
esac
