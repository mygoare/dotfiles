######  PATH  ########
# path about ruby, rails, rvm, nodejs, nvm etc.

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# NVM
[ -d $HOME/.nvm/ ] && . $HOME/.nvm/nvm.sh

# installed by homebrew will be ln -s to /usr/local/bin/ dir ( before /usr/bin/  )
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH

#set for php composer
PATH=$HOME/.composer/vendor/bin:$PATH

#After installed android studio, set android SDK path
#PATH=$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools:$PATH

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

# alias to nw
alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

SAVEHIST=1000

######  OTHERS  ########

#export http_proxy=http://127.0.0.1:3213
#export https_proxy=http://127.0.0.1:3213
export ANDROID_HOME=/usr/local/opt/android-sdk
