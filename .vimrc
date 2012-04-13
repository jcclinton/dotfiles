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

" always show the status line
set laststatus=2
"status line format:
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\
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

" sets :vs to open new windows to the right of current window
set splitright
" sets :sp to open new windows below current window
set splitbelow

"disable line wrap
"set nowrap

colorscheme molokai

"pressing tab on the camondand line will show the wildmenu
set wildchar=<Tab> wildmenu wildmode=full

" map esc to pressing j twice
inoremap jj <Esc>

" map colon to pressing semicolon
noremap ; :

" map :w when i accidently press :W
cnoremap W w

"The following simple user-defined command :Buffer allows switching a buffer in the current window choosing it from the buffer list:
"It can be abbreviated as :B
"It shows the buffer list printed out by the :ls command and asks a user for the input which is transferred to :buffer command.
"The command with an exclamation mark :B! executes :ls! which includes unlisted buffers in the list. Entering a zero as answer creates a new buffer with :enew command.
command -nargs=? -bang  Buffer  if <q-args> != '' | exe 'buffer '.<q-args> | else | ls<bang> | let buffer_nn=input('Which one: ') | if buffer_nn != '' | exe buffer_nn != 0 ? 'buffer '.buffer_nn : 'enew' | endif | endif
