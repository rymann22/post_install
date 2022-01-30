# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

#PS1 FILE
#colors		forground codes	
#black		0;30m
#blue		0;34m
#green		0;32m
#cyan		0;36m
#red		0;31m
#purple		0;35m
#brown		0;33m

#colors		background codes	
#black		0;40m
#blue		0;44m
#green		0;42m
#cyan		0;46m
#red		0;41m
#purple		0;45m
#brown		0;43m

PS1="\e[0;32m[\W] \n\e[0;36m[\u | \#]\$ \e[m "
#PS1="\e[0;32m\W \n\e[0;36m[\u \e[0;36m[\#]\$ "
#PS1="[\u \W\\$] "

#ALIAS#
alias ls='ls -lh --color=auto'
alias vi='vim'

unset rc
