#!/bin/bash
if [[ $(ping -q -c 1 checkip.dyndns.com) ]]
	then
		wget -q -O - checkip.dyndns.com/ | awk '{print $6}' | sed 's/<.*$//g'
	else
		echo "Not available"
fi
exit 0
