git --version 1>/dev/null 2>&1 || { echo "\033[0;31mgit not installed\033[0m"; exit 0; }

if [ ! -d ~/Projects/vim/ ]; then
  mkdir -p ~/Projects/vim/
  echo "\033[0;34mCloning Mygoare Vim...\033[0m"
  git clone https://github.com/mygoare/.vim.git ~/Projects/vim/
else
#  echo "\033[0;33mYou have installed my vim config.\033[0m"
#  exit 0;
  cd ~/Projects/vim/
  git pull
fi

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.pre.vimrc
fi
ln -sf ~/Projects/vim/.vimrc ~/.vimrc

if [ ! -d ~/.vim/bundle/vundle/ ]; then
  echo "\033[0;34mCloning Vundle...\033[0m"
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
else
  echo "\033[0;33mYou have installed vundle.\033[0m"
fi

vim +BundleInstall +qall

for var in .gitconfig .jshintrc .tmux.conf .zshrc .zprofile; do
  [ -f $HOME/$var ] && mv $HOME/$var $HOME/.pre$var
  ln -sf ~/Projects/vim/dotfiles/$var $HOME/$var
done

echo "\033[0;32mCongratulation! It Success Installed!\033[0m"
