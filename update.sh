#!/bin/bash
# Update by RARE
Font_Red="\033[31m";
Font_Green="\033[32m";
Font_Yellow="\033[33m";
Font_Blue="\033[34m";
Font_Purple="\033[35m";
Font_SkyBlue="\033[36m";
Font_White="\033[37m";
Font_Suffix="\033[0m";
clear
echo -e ""
echo -e ""
echo -e "${Font_Red}   Auoto Script Removed Expired IP by RARE.${Font_Suffix}"
sleep 5
cd /usr/bin
# menu
wget -O addip "https://raw.githubusercontent.com/shopeevpn/auto-removed-ip/main/addip.sh"
wget -O xp-ip "https://raw.githubusercontent.com/shopeevpn/auto-removed-ip/main/xp-ip.sh"
chmod +x addip
chmod +x xp-ip
cd
echo "55 21 * * * root /usr/bin/xp-ip # delete expired ip" >> /etc/crontab
echo -e ""
echo -e ""
echo -e "         MENU UPDATE SELESAI"
sleep 1
echo -e ""
rm /root/update.sh
