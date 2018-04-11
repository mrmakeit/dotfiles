if [ -f "$HOME/.tokens" ] ; then
    source "$HOME/.tokens"
fi
if [ -f "$HOME/.local_profile" ] ; then
    source "$HOME/.local_profile"
fi
if [ -d "$HOME/bin" ]; then
  export PATH=$PATH:$HOME/bin
fi
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="tjkirch"
COMPLETION_WAITING_DOTS="true"
plugins=(git docker node npm gpg-agent nyan lol pass sudo systemd tmux wd)
source $ZSH/oh-my-zsh.sh
source $HOME/.completion/*.zsh
source $HOME/.bash_functions.d/*
eval "$(hub alias -s)"
export fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit
