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

" deal with tab
set tabstop=2 shiftwidth=2 expandtab
set list
set listchars=tab:-\ ,trail:\ ,extends:#,nbsp:\

colorscheme molokai

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

"prevent messy cod
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

  inoremap <C-h> <Left>
  inoremap <C-j> <Down>
  inoremap <C-k> <Up>
  inoremap <C-l> <Right>
  inoremap <C-d> <DELETE>

  nmap <C-N> :tabnext<CR>
  nmap <C-P> :tabprevious<CR>

  set guifont=consolas:h10
elseif MySys() == 'mac'
  set guifont=Monaco\ 9
else
  set guifont=Monospace\ 9
endif

" vim code fold
"set foldmethod=marker


" for less to auto compile
 autocmd BufWritePost *.less exe '!lessc ' . shellescape(expand('<afile>')) . ' ' . shellescape(expand('<afile>:r')) . '.css' 

" NERDTree
map <C-N> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" NERDTree open file auto close
let NERDTreeQuitOnOpen = 1

set scrolljump=5
set scrolloff=3

" map gt & gT
:map <C-h> gT
:map <C-l> gt
:map! <C-h> <Left>
:map! <C-l> <Right>
:map! <C-j> <Down>
:map! <C-k> <Up>

" CtrlP basic options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
" CtrlP open file at new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \}

map <F1> :tabe ~/.vimrc <CR>
map <F2> :retab <CR> :w <CR>
