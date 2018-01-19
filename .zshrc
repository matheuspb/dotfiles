HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

source\
	/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PROMPT="%1~ %# "
export CC=clang
export CXX=clang++
export EDITOR=vim

alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"

alias mv="mv -iv"
alias cp="cp -iv"
alias rm="rm -Iv --one-file-system"

alias vim="vim -p"
alias grep="grep --color"
alias psg="ps -e | grep"

alias usage="du -bsh"
alias spm="sudo pacman"

alias update="sh ~/.update.sh"
alias pipup="pip list --outdated --format=freeze | cut -d = -f 1 |\
	sudo xargs -n1 pip install -U"

alias vim-plugins="pacman -Qg vim-plugins | cut -d' ' -f2"

function cs() {
	cd $@ && ls
}
