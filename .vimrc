"set transparency=5
syntax on
set number

set nobackup
set noswapfile

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

set guifont=monaco:h12

set ruler
set showcmd

set incsearch
set hlsearch
set cursorline

set go=

set history=50

"prevent messy cod
let &termencoding=&encoding
set fileencodings=uft-8,gbk

"set terminal shell 256 colors
set t_Co=256

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
