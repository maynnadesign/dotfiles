"" MIT License

" Copyright (c) 2020 maynna design

" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:

" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.

" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

" My default configuration file is becoming huge. I'd like to split it to smaller
" config files, each including only one, maximum 3-4 locations to each file, 
" so that I can enable/disable them quickly.

" Hide buffers when abandoned instead of unload
set hidden                   

" History saving
set history=8000

" No more backups
set nobackup
set nowritebackup

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" 80 Characters per line is a Standard Worth Sticking to Even Today`
set colorcolumn=80
set wrap
set linebreak
set showbreak=+++
let &colorcolumn="80,".join(range(80,999),",")

" Make more room for vim msgs
set laststatus=2
set cmdheight=2

" “Hybrid” line numbers
" Since Vim 7.4, enabling number and relativenumber at the same time produces 
" hybrid line number mode. All lines will show their relative number, except 
" for current line, which will show its absolute line number.
set number relativenumber
set nu rnu

" Remember the last executed command and make it visible in status line
set showcmd

" Return to last edit position when opening files
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

" Only highlight applied in the current window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END


" Tabs and Indents
set noexpandtab     " Don't expand tabs to spaces
set tabstop=2       " The number of spaces a tab is
set shiftwidth=2    " Number of spaces to use in auto(indent)
set softtabstop=-1  " Automatically keeps in sync with shiftwidth
set smarttab        " Tab insert blanks according to 'shiftwidth'
set autoindent      " Use same indenting on new lines
set smartindent     " Smart autoindenting on new lines
set shiftround      " Round indent to multiple of 'shiftwidth'

"	Timing
set timeout ttimeout
set timeoutlen=500   " Time out on mappings
set ttimeoutlen=10   " Time out on key codes
set updatetime=200   " Idle time to write swap and trigger CursorHold
set redrawtime=2000  " Time in milliseconds for stopping display redraw

" Searching
set ignorecase    " Search ignoring case
set smartcase     " Keep case when searching with *
set infercase     " Adjust case in insert completion mode
set incsearch     " Incremental search
set wrapscan      " Searches wrap around the end of the file
