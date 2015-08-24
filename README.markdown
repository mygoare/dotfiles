You'd better to use vim compiled with `+clipboard`.
Read [here](http://vimcasts.org/blog/2013/11/getting-vim-with-clipboard-support/) for more.

### How to install

    curl https://raw.githubusercontent.com/mygoare/.vim/master/kit/install.sh | bash && vim +BundleInstall! +qall
    
##### After that, find `kit` folder

`sh install.sh` to install vundle and link dotfiles.

`sh zsh.sh` to install oh-my-zsh and switch to zsh.

### About oh-my-zsh

I use the [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) plugin. So you have to install it.

It is simple:

    cd ~/.oh-my-zsh/custom/plugins/
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

### Manaco-Powerline.otf

It's the powerline vim plugin font needed, install it to your mac, then set this font at your iterm2
