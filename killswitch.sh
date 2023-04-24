#!/bin/bash

                                     

while true 
do 
sleep 1

#Check killswitch state : ON/OFF
killswitch="$(nordvpn settings | grep -oP '(?<=Kill Switch: ).*')"

#Turn on Killswitch if OFF
killswitch_on="$(nordvpn set killswitch on)"



#Check if Killswitch is Enabled
if [[ $killswitch == *disabled* ]]; then

  $killswitch_on >> /dev/null 2>&1 

  echo "Killswitch was turned ON" 

  
  else

  echo "Killswitch is ON" 

  

fi
done