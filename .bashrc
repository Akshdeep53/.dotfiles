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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aksh/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aksh/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aksh/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aksh/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

