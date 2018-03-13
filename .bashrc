# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Stop Ctrl-S and Ctrl-Q from suspending and resuming the terminal, respectively.
stty -ixon

# Stop git from using a popup menu when prompting for password.
unset SSH_ASKPASS

# Path variables
# export JAVA_HOME="/user/lib/jbm/java-openjdk"
# export PATH=$JAVA_HOME/bin:$PATH

# Change prompt name
PS1='[\u@\W]\$ '

# User specific aliases and functions
alias vim='vimx'

alias xzarchive='tar cfJ'

# Zip all folders in directory
alias zipall='for i in */; do zip -r "${i%/}.zip" "$i"; done'
alias latexwatch="latexmk -pdf -pvc"

# Plugins
if [ -f `which powerline-daemon` ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	. /usr/share/powerline/bash/powerline.sh
fi
