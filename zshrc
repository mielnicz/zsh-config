export PATH=$PATH:/usr/local/bin
export ZSH="$HOME/.oh-my-zsh"

export ZSH_THEME="ys"
export COMPLETION_WAITING_DOTS="true"

plugins=(
        colorize
        compleat
        colored-man-pages
        zsh-completions
        zsh-syntax-highlighting
        )
autoload -U compinit && compinit

# disable before source for powerlink10
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh source ~/.zshrc"

