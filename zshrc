[ -z "$TMUX"  ] && { tmux attach -t workspace || exec tmux new-session -s workspace && exit;}
if [ -f "$HOME/.tokens" ] ; then
    source "$HOME/.tokens"
fi
if [ -d "$HOME/bin" ]; then
  export PATH=$PATH:$HOME/bin
fi
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:$HOME/.bin
ZSH_THEME="tjkirch"
COMPLETION_WAITING_DOTS="true"
plugins=(git docker node npm gpg-agent nyan lol pass sudo systemd tmux wd)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
