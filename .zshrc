# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jhonatan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias grep='grep --color=auto'


autoload -Uz vcs_info

precmd() { vcs_info }

autoload -U colors && colors
setopt prompt_subst

# promp

usercolor="%F{cyan}"
hostcolor="%F{magenta}"
gitcolor="%F{red}"
symbolcolor="%F{blue}"
reset="%f"

PROMPT='${usercolor}%n${reset}@${hostcolor}%m ${reset}%1~${vcs_info_msg_0_} ${symbolcolor}%# ${reset}'

zstyle ':vcs_info:git:*' formats " ${gitcolor}(%b)${reset}"
