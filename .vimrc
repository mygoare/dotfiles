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
"set tabstop=2 shiftwidth=2
set tabstop=4 shiftwidth=4

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

"switch between buffers with unsaved change
set hidden

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"mapping settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"map switch split windows
map <C-h> <C-w><Left>
map <C-l> <C-w><Right>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>

"buffer switch
map <right> :bn!<cr>
map <left> :bp!<cr>

"cursor move under insert mode
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-n> <Down>
inoremap <C-p> <Up>

"disable highlight search
:nnoremap <CR> :nohlsearch <CR>

nnoremap Y y$

:map <Leader>v :vnew ~/.vimrc <CR>
:map <Leader>u :vnew ~/.vim/bundle/ultisnips/UltiSnips/ <CR>
:map <F2> :retab <CR> :w <CR>

"jk to esc
inoremap jk <esc>

"close file quickly
map zz :q<CR>

"map [j $
"map [f ^

"call sudo
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

"Bundle 'Townk/vim-autoclose'
"enter to indent
Bundle 'andersoncustodio/vim-enter-indent'
Bundle 'jiangmiao/auto-pairs'

Bundle 'matchit.zip'
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
let has_lua = system('if [ `vim --version | grep +lua` ]; then echo "1"; fi')
if has_lua
  Bundle 'Shougo/neocomplete.vim'

  let g:neocomplete#enable_at_startup = 1
else
  Bundle 'Shougo/neocomplcache.vim'

  let g:neocomplcache_enable_at_startup = 1
endif
"ack
Bundle 'mileszs/ack.vim'

"push code to github gist
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'

"for highlighting
Bundle 'hallison/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/html5.vim'

"vim buffers
Bundle 'vim-scripts/bufexplorer.zip'

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugins settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"emmet setting from http://www.vim.org/scripts/script.php?script_id=2981
"let g:user_emmet_settings = {
"\  'indentation' : '  ',
"\  'perl' : {
"\    'aliases' : {
"\      'req' : 'require '
"\    },
"\    'snippets' : {
"\      'use' : "use strict\nuse warnings\n\n",
"\      'warn' : "warn \"|\";",
"\    }
"\  }
"\}
"let g:user_emmet_expandabbr_key = '<c-e>'
"let g:use_emmet_complete_tag = 1
let g:user_emmet_mode='inv'

"for less to auto compile
"autocmd BufWritePost *.less exe '!lessc ' . shellescape(expand('<afile>')) . ' ' . shellescape(expand('<afile>:r')) . '.css' 

"NERDTree
map <C-N> :NERDTreeCWD<CR>
let NERDTreeShowHidden = 1

"NERDTree open file auto close
let NERDTreeQuitOnOpen = 1

"CtrlP basic options
let g:ctrlp_show_hidden = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPCurWD'
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

"syntastic location list settings
let g:syntastic_always_populate_loc_list=1

"ultisnips setting

"BufExplorer setting
"let g:bufExplorerUseCurrentWindow=1

nnoremap ,bf :buffers<CR>:b<Space>
