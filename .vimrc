""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimrc basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto reload .vimrc
"autocmd! bufwritepost .vimrc source %

"set spell

"paste mode toggle
set pastetoggle=<F3>

"set transparency=5
syntax on
set number

"default leader is '\'
let mapleader = ','

set nobackup
set noswapfile

set nocompatible

set ai
set smartindent
set cindent
set showmatch

"deal with tab
set tabstop=2 shiftwidth=2

"expand tab to space
set expandtab

set list
set listchars=tab:-\ ,trail:\ ,extends:#,nbsp:\

set nowrap
"set autochdir

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
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"set terminal shell 256 colors
set t_Co=256

"vim code fold e.g. manual | indent | expr | syntax | diff | marker
"usage: zf | zo
set foldmethod=manual

set scrolljump=5
set scrolloff=3

"set clipboard
"set clipboard=unnamed

set cc=80

"set at vim command mode the command autocomplete has menu list show
set wildmenu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"mapping settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"map gt & gT
map <C-h> <C-w><Left>
map <C-l> <C-w><Right>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>

map <right> :bn!<cr>
map <left> :bp!<cr>

inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

"disable highlight search
":nnoremap <CR> :nohlsearch <CR>

nnoremap Y y$

:map <Leader>v :vnew ~/.vimrc <CR>
:map <F2> :retab <CR> :w <CR>
":nnoremap <C-o> :vnew ~/Projects/vim/reference.txt <CR>

"jk to esc
inoremap jk <esc>

map zz :q<CR>

"map [j $
"map [f ^

cmap w!! :w !sudo tee %

"change to working dir quickly
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"open app by vim
function! App()
  call inputsave()
  let app_name = input('')
  call inputrestore()
  let cmd = "! /usr/bin/open -a ". app_name
  execute cmd
endfunction
map <leader>d :call App() <CR><CR>

"compile run fun
function! CompileRun()
  exec "w"
  if &filetype == 'ruby'
    exec "!ruby %"
  elseif &filetype == 'python'
    exec "!python %"
  elseif &filetype == 'coffee'
    exec "!coffee %"
  else
    exec "!open %"
  endif
endfunction
noremap <leader>o :call CompileRun()<CR>

"insert datetime
map <F4> :r!date +\%F\ \%T<CR>

"function! search()
  "exec "!grep "
"endfunction
"map <leader>f :call search() <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set for Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"My bundles here:
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/auto_mkdir'
Bundle 'tpope/vim-rails'
"quick add comment
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
"easymotion
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/tabular'
"check the syntax
Bundle 'scrooloose/syntastic'
"autocomplete
Bundle 'neocomplcache'
"ack
Bundle 'mileszs/ack.vim'
"enter to indent
Bundle 'andersoncustodio/vim-enter-indent'

"push code to github gist
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'

"for highlighting
Bundle 'hallison/vim-markdown'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugins settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"emmet setting from http://www.vim.org/scripts/script.php?script_id=2981
let g:user_emmet_settings = {
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
let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1

"for less to auto compile
"autocmd BufWritePost *.less exe '!lessc ' . shellescape(expand('<afile>')) . ' ' . shellescape(expand('<afile>:r')) . '.css' 

"NERDTree
map <C-N> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
let NERDTreeShowHidden = 1

"NERDTree open file auto close
"let NERDTreeQuitOnOpen = 1

"CtrlP basic options
let g:ctrlp_show_hidden = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"use <c-t> <c-x> <x-v> open in new tab & split

"power line
set laststatus=2
set guifont=Monaco\ for\ Powerline
let g:Powerline_symbols = 'fancy'

"markdown
nmap <leader>md :%!~/Projects/vim/Markdown.pl --html4tags <CR>

"put it just after Bundle 'molokai', it works
set background=dark
if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  colorscheme solarized
endif

"set for easy-motion
let g:EasyMotion_leader_key = '<Leader>'

"neocomplcache settings
let g:neocomplcache_enable_at_startup = 1

"syntastic location list settings
let g:syntastic_always_populate_loc_list=1

"ultisnips setting
