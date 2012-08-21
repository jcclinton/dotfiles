set nocompatible

"filetype off
" activate pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
"filetype plugin indent on

" set wildignore
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.pdf,*.ttf


let mapleader = ","
" show line numbers
set number
set nohls
" start dynamic searching when you begin typing
set incsearch
" highlight matches when you search
set showmatch
set hlsearch " highlights all search results

"removes highligts by pressing ,<space>
nnoremap <leader><space> :noh<cr>

" use :Ack by press ,a
nnoremap <leader>a :Ack 

set ignorecase
set smartcase " ignores case if all lowercase

set tabstop=2
set shiftwidth=2
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

" turn off modelines
set modelines=0

" show command in bottom right hand corner
set showcmd

" hides buffers rathers than closes
set hidden
set pastetoggle=<F2> " pressing F2 toggles mode for pasting from OS buffer

set encoding=utf-8

set cursorline "highlights current line
"set ttyfast "fast drawing

if version >= 703
	set colorcolumn=85 "sets colored column to show when a line is getting too long
end

" up/down doesnt jump over line wrap
nnoremap j gj
nnoremap k gk

" turns off vims default regex characters and uses regular regex characters
"nnoremap / /\v
"vnoremap / /\v

"disable line wrap
"set nowrap

colorscheme molokai

"pressing tab on the camondand line will show the wildmenu
set wildchar=<Tab> wildmenu wildmode=full

" map colon to pressing semicolon
noremap ; :

"The following simple user-defined command :Buffer allows switching a buffer in the current window choosing it from the buffer list:
"It can be abbreviated as :B
"It shows the buffer list printed out by the :ls command and asks a user for the input which is transferred to :buffer command.
"The command with an exclamation mark :B! executes :ls! which includes unlisted buffers in the list. Entering a zero as answer creates a new buffer with :enew command.
command -nargs=? -bang  Buffer  if <q-args> != '' | exe 'buffer '.<q-args> | else | ls<bang> | let buffer_nn=input('Which one: ') | if buffer_nn != '' | exe buffer_nn != 0 ? 'buffer '.buffer_nn : 'enew' | endif | endif


" use relative line numbers when focused on a window and in command mode
" use absolute line numbers everywhere else
if version >= 703
	augroup toggleLineNumbers
		set rnu

		au InsertEnter * :set nu
		au InsertLeave * :set rnu
		au FocusLost * :set nu
		au FocusGained * :set rnu

		au BufLeave * :set nu
		au BufEnter * :set rnu
		au WinLeave * :set nu
		au WinEnter * :set rnu
	augroup END
end
