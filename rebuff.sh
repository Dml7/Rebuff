# #!/bin/bash

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

# Main Menu
main(){
    mainmenu=("Recon" "Ddos" "Exploits" "Quit")

    select options in "${main[@]}"; do
        if [ "$options" = "Quit" ]; then
        echo "Quiting now, thanks for using this tool" && sleep 1 && clear
        exit 0
    	elif [ "$options" = "Recon" ]; then
ReconMenu
		elif [ "$options" = "Ddos" ]; then
DdosMenu
		elif [ "$options" = "Exploits" ]; then
ExploitsMenu
		else
			echo "Not a valid option"
     fi
done
}
main

ReconMenu(){
	recon=("Show ip" "Ip tracker")

}

# DdosMenu(){

# }

# ExploitsMenu(){

# }