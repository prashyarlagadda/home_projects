#!/bin/bash

#Script to re-boot the device after 5 days

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
SET='\033[0m'
max_days_without_reboot=4
days_without_reboot=$(uptime | awk '{ print $3 }')
time_remaining=$(expr $max_days_without_reboot - $days_without_reboot)
if  [ "$days_without_reboot" -ge 4 ]
    then
        echo -e "${RED}Device has been up for $days_without_reboot days & needs a reboot${SET}"
#        sudo reboot
elif [ "$time_remaining" -le 2 ]
    then
        echo -e "${RED}You still have $time_remaining days to Reboot${SET}"
elif [ "$time_remaining" == 3 ]
    then
        echo -e "${YELLOW}You still have $time_remaining days to Reboot${SET}"
else
        echo -e "${GREEN}You still have $time_remaining days to Reboot${SET}"
fi
