#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias cdr='cd /home/aksh/OpenGL/raylib/'
alias grep='grep --color=auto'
alias feh-w='feh --bg-scale --no-xinerama'
alias feh-b='feh -g 640x480 -d -S'
alias py-env='python -m venv'
PS1='[\u@\h \W]\$ '
