#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
clear
echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e "             AUTO REBOOT"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
echo -e "    1)  Auto Reboot 30 minutes"
echo -e "    2)  Auto Reboot 1 hours"
echo -e "    3)  Auto Reboot 12 hours"
echo -e "    4)  Auto Reboot 1 days"
echo -e "    5)  Auto Reboot 1 weeks"
echo -e "    6)  Auto Reboot 1 months"
echo -e ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e "    x)   MENU"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -p "     Please Input Number  [1-6 or x] :  "  autoreboot
echo -e ""
case $autoreboot in
1)
echo "*/30 * * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
;;
2)
echo "0 * * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
;;
3)
echo "0 */12 * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
;;
4)
echo "0 0 * * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
;;
5)
echo "0 0 */7 * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
;;
6)
echo "0 0 1 * * root /usr/bin/reboot" > /etc/cron.d/auto_reboot && chmod +x /etc/cron.d/auto_reboot
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac

