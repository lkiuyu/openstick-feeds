#!/bin/sh
if [ ! $1 ]

then
echo "Run with the slot you want to switch to"
exit

else

if [ $1 == 1 ]
then
echo 1 > /sys/class/leds/sim:sel/brightness
echo 0 > /sys/class/leds/sim:en/brightness
echo 0 > /sys/class/leds/sim:sel2/brightness
echo 0 > /sys/class/leds/sim:en2/brightness
fi

if [ $1 == 2 ]
then
echo 0 > /sys/class/leds/sim:sel/brightness
echo 1 > /sys/class/leds/sim:en/brightness
echo 0 > /sys/class/leds/sim:sel2/brightness
echo 0 > /sys/class/leds/sim:en2/brightness
fi

if [ $1 == 3 ]
then
echo 0 > /sys/class/leds/sim:sel/brightness
echo 0 > /sys/class/leds/sim:en/brightness
echo 1 > /sys/class/leds/sim:sel2/brightness
echo 0 > /sys/class/leds/sim:en2/brightness
fi

if [ $1 == 4 ]
then
echo 0 > /sys/class/leds/sim:sel/brightness
echo 0 > /sys/class/leds/sim:en/brightness
echo 0 > /sys/class/leds/sim:sel2/brightness
echo 1 > /sys/class/leds/sim:en2/brightness
fi

rmmod qcom-q6v5-mss
modprobe qcom-q6v5-mss
service rmtfs restart
service modemmanager restart

fi
