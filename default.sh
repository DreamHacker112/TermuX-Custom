#!/bin/bash

echo "Uninstalling TermuX-Custom..."
sleep 1.0

# Revert the original motd
cd $PREFIX/etc || exit
echo > motd
echo 'Welcome to Termux' >> motd
echo >> motd
echo 'Docs:       https://doc.termux.com' >> motd
echo 'Community:  https://social.termux.com' >> motd
echo >> motd
echo 'Working with packages:' >> motd
echo ' - Search:  pkg search <query>' >> motd
echo ' - Install: pkg install <package>' >> motd
echo ' - Upgrade: pkg upgrade' >> motd
echo >> motd
echo 'Report issues at https://bugs.termux.com' >> motd

# Revert the original bash.bashrc
echo '# Command history tweaks:' > bash.bashrc
echo '# - Append history instead of overwriting' >> bash.bashrc
echo '#   when shell exits.' >> bash.bashrc
echo '# - When using history substitution, do not' >> bash.bashrc
echo '#   exec command immediately.' >> bash.bashrc
echo '# - Do not save to history commands starting' >> bash.bashrc
echo '#   with space.' >> bash.bashrc
echo '# - Do not save duplicated commands.' >> bash.bashrc
echo 'shopt -s histappend' >> bash.bashrc
echo 'shopt -s histverify' >> bash.bashrc
echo 'export HISTCONTROL=ignoreboth' >> bash.bashrc
echo >> bash.bashrc
echo '# Default command line prompt.' >> bash.bashrc
echo 'PROMPT_DIRTRIM=2' >> bash.bashrc
echo 'PS1="\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] "' >> bash.bashrc
echo >> bash.bashrc
echo '# Handles nonexistent commands.' >> bash.bashrc
echo '# If user has entered command which invokes non-available' >> bash.bashrc
echo '# utility, command-not-found will give a package suggestions.' >> bash.bashrc
echo 'if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then' >> bash.bashrc
echo '        command_not_found_handle() {' >> bash.bashrc
echo '                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"' >> bash.bashrc
echo '        }' >> bash.bashrc
echo 'fi' >> bash.bashrc
echo >> bash.bashrc
echo '[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_completion ] && . /data/data/com.termux/files/usr/share/bash-completion/bash_completion' >> bash.bashrc

# Remove the custom files and directories
echo "Cleaning up custom files and directories..."
rm -rf $HOME/TermuX-Custom
rm -f $PREFIX/etc/login.sh

echo "Uninstallation completed successfully! Termux has been restored to its original state."
