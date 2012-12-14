"set transparency=5
syntax on
set number

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


"zencoding-vim ctrl-e set
let g:user_zen_expandabbr_key = '<c-e>'
 
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

  map <F3> :NERDTree<CR>
  map <F2> :e ~/_vimrc<CR>
  map <c-t> :tabnew<CR>

  nmap <C-N> :tabnext<CR>
  nmap <C-P> :tabprevious<CR>

  set guifont=consolas:h10
elseif MySys() == 'mac'
  set guifont=Monaco:h12
else
  set guifont=Monospace\ 9
endif

"vim code fold e.g. manual | indent | expr | syntax | diff | marker
set foldmethod=manual

"for less to auto compile
"autocmd BufWritePost *.less exe '!lessc ' . shellescape(expand('<afile>')) . ' ' . shellescape(expand('<afile>:r')) . '.css' 

"NERDTree
map <C-N> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

"NERDTree open file auto close
let NERDTreeQuitOnOpen = 1

set scrolljump=5
set scrolloff=3

"map gt & gT
:map <C-h> gT
:map <C-l> gt
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

"CtrlP basic options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
"CtrlP open file at new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \}

map <F1> :tabe ~/.vimrc <CR>
map <F2> :retab <CR> :w <CR>

"set for Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"My bundles here:
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
Bundle 'tpope/vim-pathogen'
Bundle 'scrooloose/syntastic'

"put it just after Bundle 'molokai', it works
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

"jk to esc
inoremap jk <esc>

map [f $
map [h ^

call pathogen#infect()
