![jiong](http://github.com/mygoare/.vim/raw/master/jiong.png)
_______

### It contains follows:

My bundles here:

* Bundle 'tpope/vim-pathogen'
* Bundle 'mattn/zencoding-vim'
* Bundle 'ctrlp.vim'
* Bundle 'Townk/vim-autoclose'
* Bundle 'matchit.zip'
* Bundle 'auto_mkdir'
* Bundle 'tpope/vim-rails'
* Bundle 'scrooloose/nerdcommenter'
* Bundle 'scrooloose/nerdtree'
* Bundle 'altercation/vim-colors-solarized'
* Bundle 'ervandew/supertab'
* Bundle 'mygoare/snipmate.vim'
* Bundle 'groenewege/vim-less'
* Bundle 'vim-scripts/jsbeautify'
* Bundle 'tpope/vim-surround'

### How to install

1. git clone git@github.com:mygoare/.vim.git ~/Projects/vim/
2. ln -sf ~/Projects/vim/.vimrc ~/.vimrc
3. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
4. Launch vim, run :BundleInstall (or vim +BundleInstall! +BundleClean +qall for CLI lovers)

### How to update

1. git pull the repo
2. vim +BundleInstall! +BundleClean +qall

### ln link

cd ~/Projects folder

1. ln -sf ~/Projects/vim/dotfiles/.gitconfig ~/.gitconfig
2. ln -sf ~/Projects/vim/dotfiles/.tmux.conf ~/.tmux.conf
3. ln -sf ~/Projects/vim/dotfiles/.zsh_aliases ~/.zsh_aliases
4. ln -sf ~/Projects/vim/dotfiles/.zsh_profile ~/.zsh_profile
5. ln -sf ~/Projects/vim/dotfiles/.zshrc ~/.zshrc
6. cp ~/Projects/vim/dotfiles/mygoare.zsh-theme ~/.oh-my-zsh/themes/
