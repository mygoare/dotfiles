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
let &termencoding=&encoding
set fileencodings=uft-8,gbk

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

	map <c-s> :w<CR>
	map <c-c> "+y
	map <c-v> "+p

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
	set guifont=Monospace\ 10
endif
