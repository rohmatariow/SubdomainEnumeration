#!/bin/bash

green = "\033[0;32m"
lightblueb = "\033[1;36m"
banner(){
    clear
    echo
    echo
    echo -e $lightblueb"  ###########################"
    echo -e $lightblueb"  #  Subdomain Enumeration  #"
    echo -e $lightblueb"  #  Coded by @rohmatariow  #"
    echo -e $lightblueb"  #  Example : \e[m\033[0;33mtwitter.com\e[m  $lightblueb#"
    echo -e $lightblueb"  ###########################\e[m"
}
banner
echo
read -p '   Enter your domain : ' domain
echo -e $green
echo -e "Result : "
echo
curl "http://104.238.183.134:3000/find?domain=${domain}" -s | grep -oE "[a-zA-Z0-9._-]+\.${domain}"
