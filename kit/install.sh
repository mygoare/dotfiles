if [ ! -d ~/Projects/vim/ ]; then
  mkdir -p ~/Projects/vim/
fi

git -v 1>/dev/null 2>&1 || { echo "git not installed"; exit 0; }

git clone git@github.com:mygoare/.vim.git ~/Projects/vim/
ln -sf ~/Projects/vim/.vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall! +qall

ln -sf ~/Projects/vim/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/Projects/vim/dotfiles/.jshintrc ~/.jshintrc
ln -sf ~/Projects/vim/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/Projects/vim/dotfiles/.zshrc ~/.zshrc
ln -sf ~/Projects/vim/dotfiles/.zprofile ~/.zprofile
