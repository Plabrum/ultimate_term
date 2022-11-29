#!/bin/sh
local_ip=$(ipconfig getifaddr en0)

if [[  $local_ip == "192.168.1.162" ]]
then
    echo "using lan"
    ip="192.168.1.159"
else
    echo "using website"
    ip="@walter.plabrum.com"
fi

if [[ $1 == "" ]];
then
    ssh phil@$ip
elif [[ $1 == "jupyter" ]];
then 
    echo "Applying port forwarding on 8080";
    ssh -L 8080:localhost:8080 phil@$ip
else
    echo "Unknown kwarg: $1"
fi