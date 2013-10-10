zsh --version 1>/dev/null 2>&1 || { echo "\033[0;31mzsh not installed\033[0m"; exit 0; }

if [ ! -d ~/.oh-my-zsh ]; then
  echo "\033[0;34mCloning Oh-My-Zsh...\033[0m"
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

echo "\033[0;34mChange shell to zsh...\033[0m"
chsh -s `which zsh`

/usr/bin/env zsh
source ~/.zshrc
