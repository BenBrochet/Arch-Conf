
# ~/.bashrc
#



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
bind -m vi-insert "\C-l":clear-screen


## Modules
configs="$HOME/.config/bashconfigs/"
# Environment variables
source "$configs/env.sh"





alias ls='ls --color=auto -l'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '




#### ALIAS
alias ll="ls -alh"
alias net="nmtui"

alias fm="yazi"

alias stat="btop"

alias dev="cd ~/projects"





##################################
### custom functions
ff(){
clear
fastfetch
}

quote(){
    fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n
}


eval "$(starship init bash)"
 # Set up fzf key bindings and fuzzy completion
#eval "$(fzf --bash)"


# Execute on shell load







