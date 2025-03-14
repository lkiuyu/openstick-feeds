#!/bin/sh
grep gadget /sys/class/udc/ci_hdrc.0/device/driver/ci_hdrc.0/role
if [ $? -eq 0 ]
then
/etc/init.d/gc restart
fi
