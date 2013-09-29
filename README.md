BBBdisablesleds
===============

Init script to stop lets of BBB on command and boot.
Steps to install:

1) Copy disableleds.sh as root to /etc/init.d/
2) Chmod the file with +x
3) Insserv as root the file with "insserv /etc/init.d/disableled.sh"
4) Install complete, Leds should be off next boot

Manual use:

Start: /etc/init.d/diasbleleds.sh start	(Stops Leds)
Stop: /etc/init.d/diasbleleds.sh stop	(Sets Leds back to Heartbeat)


