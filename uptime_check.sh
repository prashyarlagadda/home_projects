#!/bin/bash
#script to re-boot the device after 5 days
max_days_without_reboot=5
days_without_reboot=$(uptime | awk '{ print $3 }')
if  [ "$days_without_reboot" -ge 5 ]
    then
        echo "device has been up for $days_without_reboot days & needs a reboot" 
        sudo reboot
else
    time_remaining=$(expr $max_days_without_reboot - $days_without_reboot)
    echo "You still have $time_remaining days"
fi
