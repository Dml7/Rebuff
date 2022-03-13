#!/bin/bash
# #Colors
# cyan='\e[0;36m'
# green='\e[0;34m'
# lightgreen='\e[1;32m'
# white='\e[1;37m'
# red='\e[1;31m'
# yellow='\e[0;33m'
# orange='\e[38;5;166m'

# clear

echo "
 ______     ______     ______     __  __     ______   ______  
/\  == \   /\  ___\   /\  == \   /\ \/\ \   /\  ___\ /\  ___\ 
\ \  __<   \ \  __\   \ \  __<   \ \ \_\ \  \ \  __\ \ \  __\ 
 \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_\    \ \_\   
  \/_/ /_/   \/_____/   \/_____/   \/_____/   \/_/     \/_/   

    Developed By Declan    

"

PS3="rebuff>"


# Main Menu
main(){
    main=("Recon" "Ddos" "install packages" "Quit")

    select options in "${main[@]}"; do
        if [ "$options" = "Quit" ]; then
        echo "Quiting now, thanks for using this tool" && sleep 1 && clear
        exit 0
    	elif [ "$options" = "Recon" ]; then
reconmenu
		elif [ "$options" = "Ddos" ]; then
ddosmenu
		elif [ "$options" = "install packages" ]; then
install
		else
			echo "Not a valid option"
     fi
done
}


reconmenu(){
	reconmenu=("Show ip" "Ip tracker" "Ping" "Quick scan" "Udp scan" "Go back")
	select optsrecon in "${reconmenu[@]}"; do
		if [[ '$optsrecon' = 'Show ip' ]]; then
			showip
		elif [[ '$optsrecon' = 'Ip tracker' ]]; then
			iptracker
		elif [[ '$optsrecon' = 'Ping' ]]; then
			pinger		
		elif [[ '$optsrecon' = 'Quick scan' ]]; then
			scanner
		else
			back
		fi
	done
}

install(){
	sudo apt-get install nmap -y
	sudo apt-get install hping3 -y
}

showip(){
	echo "Ip interfaces are:"
	if ! [[ $? = 0 ]]; then
		ifconfig | grep inet
	fi
}

pinger(){
	echo "Loading pinger..."
	echo "Enter targets ip: "
	read -i $TARGET -e TARGET

}

scanner(){
	echo "Enter Target ip: " 
	nmap -sC -sV -v $TARGET
}


ddosmenu(){
	ddosmenu=('UDP Flood' 'Back')
	select ddosopts in "${ddosmenu[@]}"; do
	if [[ '$ddosopts' = 'UDP Flood' ]]; then 
udpflood
	else
		back
	fi
done
}

udpflood(){
	echo "Enter target:"
	read -i $TARGET -e TARGET
	
	echo "Enter target port (defaults to 80):"
	read -i $PORT -e PORT
	: ${PORT:=80}
}


back(){
	main
}
install
main
ReconMenu(){
	recon=("Show ip" "Ip tracker")

}

# DdosMenu(){

# }

# ExploitsMenu(){

# }
