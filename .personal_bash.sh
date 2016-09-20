# Put the lines below in ~/.bashrc
#
# if [ -f ~/.personal_bash.sh ]; then
#     . ~/.personal_bash.sh
# fi

alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'

function mycd () { cd $1 && ls; }
alias cd=mycd

alias bye='sudo shutdown 0'

# prompt
PS1='[\u:\W]\$ '

