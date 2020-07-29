# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export XDG_CONFIG_HOME="$HOME/.config"

PATH="${PATH}:/sbin:${HOME}/.local/bin:${HOME}/.gem/ruby/2.5.0/bin/"
PS1='$(if [[ $? == 0 ]]; then echo "\[\e[1;32m\]:)"; else echo "\[\e[1;31m\]:("; fi) \[\e[1;37m\]\u \[\e[1;36m\]\w \[\e[1;32m\]$\[\e[0m\] '

alias l='ls -l'
alias ll='ls -la'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#alias sx='startx'
#alias xs='startx'

HISTSIZE=20000
HISTFILESIZE=20000


bind '"\e\e":"\C-asudo \C-e"'
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
#set completion-display-width 1
# cycle forward
#Control-k: menu-complete
# cycle backward
#Control-j: menu-complete-backward
