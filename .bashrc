#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PYTHONPATH=/home/aksh/RMG/RMG-Py/:$PYTHONPATH
export PATH=/home/aksh/RMG/RMG-Py/:$PATH

export PATH=$PATH:/home/aksh/scripts
export PATH=$PATH:/home/aksh/Download/Julia/julia-1.6.7/bin
export  OMP_NUM_THREADS=2
alias lf=lf-ueberzug
alias r=ranger
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Created by `pipx` on 2023-12-08 19:01:10
export PATH="$PATH:/home/aksh/.local/bin"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
