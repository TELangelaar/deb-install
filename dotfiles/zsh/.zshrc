# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/thijme/.zshrc'

autoload -Uz compinit
compinit

## Aliases
alias ll="ls -al"
alias llg="ls -al | grep "
alias matlab2015="/opt/MATLAB/R2015a/bin/matlab"
alias v="vim"
alias c="clear"
alias gpi="getpublic_ip"
alias xfcd="xfce4-terminal $CD --hide-menubar --hide-scrollbar"

#showing current directory in terminal
export PS1="[%~] %% "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/thijme/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/thijme/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/thijme/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/thijme/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#Syntax highlighting, must be at the end!!
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

