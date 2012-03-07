"set transparency=5
set number
set nobackup
syntax on
set nocompatible
set ai
set smartindent
set cindent
set showmatch

set tabstop=4
set shiftwidth=4

colorscheme molokai

set nowrap
set autochdir

filetype plugin indent on

"set guifont=monaco:h10

set ruler
set showcmd
set incsearch
set hlsearch

set cursorline

set go=

set history=50

"VIM乱码 （以下人最靠谱）
let &termencoding=&encoding
set fileencodings=uft-8,gbk

"colorscheme evening

set t_Co=256
"VIM的256色设置,可以让terminal也变为主题色,terminal默认只有8色
"

"zencoding-vim ctrl-e set
  let g:user_zen_settings = {
  \  'indentation' : '  ',
  \  'perl' : {
  \    'aliases' : {
  \      'req' : 'require '
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'warn' : "warn \"|\";",
  \    }
  \  }
  \}

  let g:user_zen_expandabbr_key = '<c-e>'

  let g:use_zen_complete_tag = 1
