if [ ! -d ~/Projects/vim/ ]; then
  mkdir -p ~/Projects/vim/
else
  echo "\033[0;33mYou have installed my vim config.\033[0m"
  exit 0;
fi

git --version 1>/dev/null 2>&1 || { echo "\033[0;31mgit not installed"; exit 0\033[0m; }

git clone https://github.com/mygoare/.vim.git ~/Projects/vim/
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.pre-vimrc
fi
ln -sf ~/Projects/vim/.vimrc ~/.vimrc

if [ ! -d ~/.vim/bundle/vundle/ ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
else
  echo "\033[0;33mYou have installed vundle.\033[0m"
fi
vim -e +BundleInstall +qall

for var in ".gitconfig" ".jshintrc" ".tmux.conf" ".zshrc" ".zprofile"; do
  [ -f $HOME"/"$var ] && mv $HOME"/"$var $HOME"/.pre"$var
  ln -sf "~/Projects/vim/dotfiles/"$var $HOME"/"$var
done
