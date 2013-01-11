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
* Bundle 'Lokaltog/vim-powerline'
* Bundle 'hallison/vim-markdown'

### How to install

1. git clone git@github.com:mygoare/.vim.git ~/Projects/vim/
2. ln -sf ~/Projects/vim/.vimrc ~/.vimrc
3. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
4. Launch vim, run :BundleInstall (or vim +BundleInstall! +BundleClean +qall for CLI lovers)

### How to update

1. git pull the repo
2. vim +BundleInstall! +BundleClean +qall

### Ln link(dotfiles)

cd ~/Projects folder

`ln -sf ~/Projects/vim/dotfiles/.gitconfig ~/.gitconfig`

`ln -sf ~/Projects/vim/dotfiles/.tmux.conf ~/.tmux.conf`

`ln -sf ~/Projects/vim/dotfiles/.zsh_aliases ~/.zsh_aliases`

`ln -sf ~/Projects/vim/dotfiles/.zsh_profile ~/.zsh_profile`

`ln -sf ~/Projects/vim/dotfiles/.zshrc ~/.zshrc`

`cp ~/Projects/vim/dotfiles/mygoare.zsh-theme ~/.oh-my-zsh/themes/`

### About oh-my-zsh

I use the zsh-syntax-highlighting plugin. So you have to install it.

It is simple:
  * cd ~/.oh-my-zsh/plugins/
  * git clone git@github.com:zsh-users/zsh-syntax-highlighting.git
  * done

### Markdown.pl

It's a perl file to convert the markdown format text to html code.

### Manaco-Powerline.otf

It's the powerline vim plugin font needed, install it to your mac, then set this font at your iterm2
