#!/usr/bin/bash

status="$1"
timer="$2"
blocklist=()
websites=("www.zoomg.ir" "www.ninisite.com" "www.zoomit.ir" )
ips=()
current_ip=$(ifconfig | grep 'inet ' | awk '{print $2}')


	for ip in "$ips" ;do
	    if [ "$current_ip" != "$ip" ] ; then
		ips+=($(ifconfig | grep 'inet ' | awk '{print $2 }'))

	    fi
	done


	  for ip in "${ips[@]}" ; do
	      for website in "${websites[@]}";do

                   blocklist+=("${ip}  ${website}")
	      done
	  done

          for item in "${blocklist[@]}" ; do
		case "$1" in
		"web_block")
                echo "$item" | sudo tee -a /etc/hosts >/dev/null
		;; 
		"web_unlock")
                sudo sed -i "/$item/d" /etc/hosts
		;;
		esac
	  done





