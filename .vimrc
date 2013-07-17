""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimrc basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto reload .vimrc
"autocmd! bufwritepost .vimrc source %

set spell

"paste mode toggle
set pastetoggle=<F3>

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

set cc=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"map gt & gT
map <C-h> gT
map <C-l> gt
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

"disable highlight search
:nnoremap <CR> :nohlsearch <CR>

:map <F1> :vnew ~/.vimrc <CR>
:map <F2> :retab <CR> :w <CR>
":nnoremap <C-o> :vnew ~/Projects/vim/reference.txt <CR>

"jk to esc
inoremap jk <esc>

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
  else
    exec "!open %"
  endif
endfunction
"noremap <leader>b :call CompileRun()<CR>

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
Bundle 'kien/ctrlp.vim'
Bundle 'Townk/vim-autoclose'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/auto_mkdir'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'ervandew/supertab'
"Bundle 'mygoare/snipmate.vim'
Bundle 'mygoare/UltiSnips'
Bundle 'groenewege/vim-less'
Bundle 'vim-scripts/jsbeautify'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
Bundle 'hallison/vim-markdown'
Bundle 'kana/vim-fakeclip'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/tabular'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/taglist.vim'
"Bundle 'bufexplorer.zip'
Bundle 'krisajenkins/vim-clojure-sql'
Bundle 'scrooloose/syntastic'
Bundle 'neocomplcache'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'majutsushi/tagbar'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'wavded/vim-stylus'
"Bundle 'sleistner/vim-jshint'
Bundle 'guileen/vim-node'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/express.vim'
Bundle 'AndrewRadev/splitjoin.vim'

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
"Ctrlp open file in new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

"power line
set laststatus=2
set guifont=Monaco\ for\ Powerline
let g:Powerline_symbols = 'fancy'

"markdown
nmap <leader>md :%!~/Projects/vim/Markdown.pl --html4tags <CR>

"put it just after Bundle 'molokai', it works
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

"set for easy-motion
let g:EasyMotion_leader_key = '<Leader>'

"taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1 "select one tag close taglist auto
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"nnoremap <C-o> :TlistToggle<CR>

"neocomplcache settings
let g:neocomplcache_enable_at_startup = 1

"vim-indent-guides settings
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"solve conficts <C-h>
let g:AutoPairsMapBS=0
