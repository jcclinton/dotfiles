" show line numbers
set number
set nohls
" start dynamic searching when you begin typing
set incsearch
" highlight matches when you search
set showmatch
set tabstop=2
set shiftwidth=2
set nocompatible
set autoindent
set smartindent
set ruler

" turn on syntax highlighting
syntax on

set equalalways
set backspace=indent,eol,start

set laststatus=2
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
set statusline+=%=
set statusline+=%#statuserror#

" dont use swp file
set nobackup
set nowb
set noswapfile

" start scrolling 3 lines before the horizontal window border
set scrolloff=3
" Show “invisible” characters
set list
set lcs=tab:·\ ,trail:▸,nbsp:_
" disable error bells
set noerrorbells

colorscheme molokai
