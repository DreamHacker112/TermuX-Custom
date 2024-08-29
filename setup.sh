#!/bin/bash

# Function to update the repository
update_repository() {
    echo "Updating repository..."
    bash update.sh
    if [ $? -eq 0 ]; then
        echo "Repository updated successfully!"
    else
        echo "Failed to update repository."
        exit 1
    fi
}

# Main script
clear
echo
pkg install pv -y >/dev/null 2>&1

echo -e "\033[32m\033[1m{─────────────────────────────────────────────}"
echo -e "\033[33m\033[1m Installing All Required Packages! Please Wait..." | pv -qL 10

apt update -y
apt upgrade -y
pkg install python -y
pkg install cmatrix -y
pkg install pv -y
apt install figlet -y
apt install ruby -y
apt install mpv -y
pip install lolcat
pip install requests
pkg install python2 -y
pkg install termux-api -y

echo -e "\033[31m\033[1m      👿 INSTALLATION COMPLETED 👿 \033[32m[\033[36m✓\033[32m]" | pv -qL 12
echo -e "\033[33m\033[1m]──────────────────────────────────────────────["

termux-setup-storage

# Create necessary directories if they do not exist
mkdir -p $HOME/TermuX-Custom/Song
mkdir -p $HOME/TermuX-Custom/NETWORK

# Check and move files
if [ -f "login.sh" ]; then
    cp login.sh $PREFIX/etc
    chmod +x login.sh delete.sh setup.sh sound_effect.py banner.sh update.sh
else
    echo "login.sh not found."
    exit 1
fi

if [ -f "Access-Granted.mp3" ] && [ -f "Jarvis2.mp3" ] && [ -f "JARVIS.mp3" ] && [ -f "sound_effect.py" ]; then
    mv Access-Granted.mp3 Jarvis2.mp3 JARVIS.mp3 sound_effect.py $HOME/TermuX-Custom/Song
else
    echo "One or more files not found for Song directory."
    exit 1
fi

if [ -f "network.py" ]; then
    mv network.py $HOME/TermuX-Custom/NETWORK
else
    echo "network.py not found."
    exit 1
fi

# Prompt user for update
# Set default choice to 'y', update the repository, and run the login script
choice="y"
update_repository
bash login.sh
￼Enter
