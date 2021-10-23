#!/bin/bash
today=$(date -d +1day +%Y-%m-%d)

while read expired
do
	user=$(echo $expired | awk '{print $1}')
	ipuser=$(echo $expired | awk '{print $2}')
	exp=$(echo $expired | awk '{print $3}')

	if [[ $exp < $today ]]; then
		mv /etc/v2ray-agent/config-url/00-trial-ip /etc/v2ray-agent/config-url/00-trial-ip.txt
        sed -i "/\b$user\b/d" /etc/v2ray-agent/config-url/00-trial-ip.txt
        mv /etc/v2ray-agent/config-url/00-trial-ip.txt /etc/v2ray-agent/config-url/00-trial-ip
        sed -i "/\b$user\b/d" /root/trialip.txt
	fi
done < /root/trialip.txt

