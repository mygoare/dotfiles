if [ ! -d ~/Projects/vim/ ]; then
  mkdir -p ~/Projects/vim/
fi

git --version 1>/dev/null 2>&1 || { echo "git not installed"; exit 0; }

git clone git@github.com:mygoare/.vim.git ~/Projects/vim/
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.pre.vimrc
fi
ln -sf ~/Projects/vim/.vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall! +qall

if [ -f ~/.gitconfig ]; then
  mv ~/.gitconfig ~/.pre.gitconfig
fi
ln -sf ~/Projects/vim/dotfiles/.gitconfig ~/.gitconfig

if [ -f ~/.jshintrc ]; then
  mv ~/.jshintrc ~/.pre.jshintrc
fi
ln -sf ~/Projects/vim/dotfiles/.jshintrc ~/.jshintrc

if [ -f ~/.tmux.conf ]; then
  mv ~/.tmux.conf ~/.pre.tmux.conf
fi
ln -sf ~/Projects/vim/dotfiles/.tmux.conf ~/.tmux.conf

if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.pre.zshrc
fi
ln -sf ~/Projects/vim/dotfiles/.zshrc ~/.zshrc

if [ -f ~/.zprofile ]; then
  mv ~/.zprofile ~/.pre.zprofile
fi
ln -sf ~/Projects/vim/dotfiles/.zprofile ~/.zprofile
