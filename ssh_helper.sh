#!/bin/sh
local_ip=$(ipconfig getifaddr en0)

if [[  $local_ip == "192.168.1.162" ]]
then
    echo "using lan"
    ssh phil@192.168.1.159;
else
    echo "using website"
    ssh phil@walter.plabrum.com
fi
