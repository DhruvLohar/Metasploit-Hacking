#!/bin/bash

printf "\e[34;5mChecking requirements..."
echo ""
pkg upgrade && pkg update && pkg install apache2 && pkg install metasploit && pkg install openssh && pkg install php && pkg install ruby && pkg upgrade && pkg update
echo ""
printf "\e[34;5mDone!!HAPPY HACKING!!\e[0m\n"
echo ""

