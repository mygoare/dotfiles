######  PATH  ########
# path about ruby, rails, rvm, nodejs, nvm etc.

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# This loads NVM
[ -d $HOME/.nvm/ ] && { [[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh" }

# export $NODE_PATH
[ -d $HOME/.nvm/ ] && { export NODE_PATH=$NVM_DIR/$(nvm_ls current)/lib/node_modules }

# installed by homebrew will be ln -s to /usr/local/bin/ dir ( before /usr/bin/  )
PATH=/usr/local/bin:$PATH

#set for Android ADT & java_home
PATH=$HOME/Development/adt-bundle/sdk/platform-tools:$HOME/Development/adt-bundle/sdk/tools:$PATH

######  ALIAS  ########
alias grep='grep --color=auto'
alias pg='ps aux | grep'

# C-r
bindkey "^R" history-incremental-search-backward

# tmux lose vim colorscheme
alias tmux="tmux -2"

alias vim="vim -p"

# fix terminal 中文乱码
export LANG='zh_CN.UTF-8'

alias ...="cd ../../"
alias ....="cd ../../../"
alias ~="cd ~"
alias p="cd ~/Projects"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias www="cd /Library/WebServer/Documents"

alias lsa='ls -lahtr'
alias l='ls -lA1tr'
alias ll='ls -ltr'
alias la='ls -lAtr'

alias v='vim'
alias vi='vim'

#git
alias glg='git log --stat'
alias glgg='git log --graph'
alias glo='git log --oneline --graph --decorate'
alias gs='git stash'

SAVEHIST=1000

######  OTHERS  ########
# set for autojump
if brew -v >/dev/null 2>&1; then
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#https://gist.github.com/nicholascloud/5372443#comment-815301
function npmls() {
  npm ls "$@" | grep "^[└├]" | sed "s/─┬/──/g"
}

alias createServer='python -m SimpleHTTPServer'
