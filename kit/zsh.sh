zsh 1>/dev/null 2>&1 || { echo "\033[0;31mzsh not installed\033[0m"; exit 0; }

echo "\033[0;34mChange shell to zsh...\033[0m"
sudo chsh -s `which zsh`

if [ ! -d ~/.oh-my-zsh ]; then
  echo "\033[0;34mCloning Oh-My-Zsh...\033[0m"
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
/usr/bin/env zsh
source ~/.zshrc
