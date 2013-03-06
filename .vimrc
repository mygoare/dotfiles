""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimrc basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set transparency=5
syntax on
set number

"default leader is '\'
let mapleader = ','

set helplang=cn

set nobackup
set noswapfile

set nocompatible

set ai
set smartindent
set cindent
set showmatch

"deal with tab
set tabstop=2 shiftwidth=2 expandtab
set list
set listchars=tab:-\ ,trail:\ ,extends:#,nbsp:\

set nowrap
"set autochdir

filetype plugin indent on

set ruler
set showcmd

set incsearch
set hlsearch
set cursorline

set go=

set history=50

"auto reload file if changed outside
set autoread

set ignorecase

set backspace=indent,eol,start

"prevent messy code
set encoding=utf-8
if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif
set fileencodings=utf-8,gbk,ucs-bom,cp936

"set terminal shell 256 colors
set t_Co=256

"vim code fold e.g. manual | indent | expr | syntax | diff | marker
"usage: zf | zo
set foldmethod=manual

set scrolljump=5
set scrolloff=3

"set clipboard
"set clipboard=unnamed

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set for Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"My bundles here:
Bundle 'tpope/vim-pathogen'
Bundle 'mattn/zencoding-vim'
Bundle 'ctrlp.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'matchit.zip'
Bundle 'auto_mkdir'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'mygoare/snipmate.vim'
Bundle 'groenewege/vim-less'
Bundle 'vim-scripts/jsbeautify'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
Bundle 'hallison/vim-markdown'
Bundle 'fakeclip' 

"put it just after Bundle 'molokai', it works
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugins settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"zencoding-vim ctrl-e set
let g:user_zen_expandabbr_key = '<c-e>'

"pathogen
call pathogen#infect()

"for less to auto compile
"autocmd BufWritePost *.less exe '!lessc ' . shellescape(expand('<afile>')) . ' ' . shellescape(expand('<afile>:r')) . '.css' 

"NERDTree
map <C-N> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

"NERDTree open file auto close
let NERDTreeQuitOnOpen = 1

"CtrlP basic options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"CtrlP open file at new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \}

"power line
set laststatus=2
set guifont=Monaco\ for\ Powerline
let g:Powerline_symbols = 'fancy'

"markdown
nmap <leader>md :%!~/Projects/vim/Markdown.pl --html4tags <cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-T> :tabe<CR>

"map gt & gT
:map <C-h> gT
:map <C-l> gt
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

map <F1> :tabe ~/.vimrc <CR>
map <F2> :retab <CR> :w <CR>

"jk to esc
inoremap jk <esc>

"map [j $
"map [f ^

cmap w!! :w !sudo tee %

"change to working dir quickly
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

"disable highlight search
:nnoremap <CR> :nohlsearch<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! MySys()
  if has("win32")
    return "windows"
  elseif has("mac")
    return "mac"
  else
    return "linux"
  endif
endfunction

if MySys() == 'windows'

  map <F1> :e ~/_vimrc<CR>

  set guifont=consolas:h10
elseif MySys() == 'mac'
  set guifont=Monaco:h11
else
  set guifont=Monospace\ 9
endif

