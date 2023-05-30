#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


export PATH="$PATH:/home/aksh/Download/Julia/julia-1.6.7/bin"
alias lf=lf-ueberzug
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
