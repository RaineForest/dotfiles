#
# ~/.bashrc
#

source ~/.bash_git

#source /opt/intel/composerxe/mkl/bin/mklvars.sh intel64

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias cudarun='optirun --no-xorg'

alias pcsx2='PCSX2'

export EDITOR='vim'

export QT_QPA_PLATFORMTHEME="qt5ct"

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

#PS1='[\u@\h \W]\$ '
#PS1="\[$(tput sgr0)\]\[\033[00;32m\]\u\[$(tput sgr0)\]\[\033[00;32m\]@\[$(tput sgr0)\]\[\033[00;32m\]\h\[$(tput sgr0)\]\[\033[00;32m\]:\[$(tput sgr0)\]\[\033[01;34m\]\w\[$(tput sgr0)\]\[\033[00;35m\]\$(__git_ps1)\[$(tput sgr0)\]\\$\[$(tput sgr0)\] "
PS1="\[\e[2;36m\]\u\[\e[0m\]@\[\e[0;95m\]\h\[\e[0m\]:\[\e[0;94m\]\w\[\e[0;90m\]\$(__git_ps1)\[\e[0m\]\\$ "
