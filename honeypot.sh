#!/bin/bash

for port in $ports; 
do 
    if [ ! -e /app/banners/$port.txt ]; 
    then 
        echo "" > /app/banners/$port.txt; 
        chmod 664 /app/banners/$port.txt;
        chown $USER:$USER/app/banners/$port.txt;
    fi
done

for port in $ports; 
do 
    while true; do nc -vnlp $port < /app/banners/$port.txt 1>> log 2>> log; done&
done

tail -f /app/log