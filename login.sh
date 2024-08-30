#!/usr/bin/bash 

bash banner.sh
echo

read -p $'\e[1;32m  Enter \033[33mUsername \033[37mfor \033[32mLogin:\e[0m ' username                
read -p $'\e[1;32m  Enter \033[33mPassword \033[37mfor \033[32mLogin:\e[0m ' password 
echo
echo
read -p $'\033[1m\033[32m  Your \033[0mShell \033[38;5;209mName\033[31m: \033[33m\033[1m ' names
cd                                                   
cd ..                                               
cd usr/etc                                       
rm motd                                           
rm bash.bashrc                                       
cat << 'LOGIN' > bash.bashrc                            

trap '' 2                                          
echo -e "\e[1;32m      


▓█▒░     ░▒▓███▓▒░ ░▒▓███▓▒░ ▓█▒░▒▓█████▓▒░  
▓█▒░    ░▒▓█▒░░▒▓█▒▒▓█▒░░▒▓█▒░▓█▒▒▓█▒░░▒▓█▒░ 
▓█▒░    ░▒▓█▒░░▒▓█▒▒▓█▒░   ░▒▓█▒░▓█▒░░▒▓█▒░ 
▓█▒░    ░▒▓█▒░░▒▓█▒▒▓█▒▒▓███▓▒▓█▒░▓█▒░░▒▓█▒░ 
▓█▒░    ░▒▓█▒░░▒▓█▒▒▓█▒░░▒▓█▒░▓█▒░▓█▒░░▒▓█▒░ 
▓█▒░    ░▒▓█▒░░▒▓█▒▒▓█▒░░▒▓█▒░▓█▒░▓█▒░░▒▓█▒░ 
▓███████▓▒░▒▓███▓▒░ ░▒▓███▓▒░▓█▒░▓█▒░░▒▓█▒░ 



                                                            
                                                           

\033[31m          ────────────────────────────
\033[33m              Login To \033[32mContinue
\033[31m          ────────────────────────────


\e[0m"
echo
read -p $'       \e[33m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mUSERNAME FOR LOGIN:\033[32m ' user
read -s -p $'       \e[32m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mPASSWORD FOR LOGIN:\033[33m ' pass                                                
echo
if [[ "$pass" == "$password" && "$user" == "$username" ]]; then
    sleep 3
    clear
    cd $HOME
    cd TermuX-Custom
    cd Song
    python sound_effect.py
    clear
    cd $HOME 
    echo -e "\033[1m\033[33m


██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ 
██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
███████║███████║██║     █████╔╝ █████╗  ██████╔╝
██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝                                                                    

"
    echo -e  "     \e[1m\e[32m▂▃▄▅▆▇▓▒░ \033[1mCoded By \e[33mDreamHacker \e[1m\e[32m░▒▓▇▆▅▄▃▂"
    cd $HOME
    echo -e "   \033[1m\033[33m]\033[31m───────────────────────────────────────────\033[33m["
    echo 
    PS1='\[\033[1;92m\]┌[\[\033[1;91m\]$names\[\033[1;92m\]]──[\[\033[1;94m\]\w\[\033[1;92m\]]\[\033[38;5;118m\]$(git branch 2>/dev/null | grep -e '\''^\*'\'' | sed -E '\''s/^\* (.*)/ [\1]/'\'')\n\[\033[1;92m\]├─[\[\033[1;93m\]\#\[\033[1;92m\]]─>\[\033[1;96m\] '
else
    echo ""
    echo -e "\e[1;31m  You Entered wrong Details! 
\e[0m"
    sleep 1
    cmatrix -L
fi
trap 2
LOGIN
echo 
echo
echo 
echo -e "\033[1m\e[1;32m Your Termux is \033[33mReady \n
       So please \033[31mExit \033[37mand \033[32mLogin.\e[0m"
echo
echo
￼Enter
