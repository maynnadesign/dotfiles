" MIT License

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

" When set to "dark", Vim will try to use colors that look good on a dark 
" background. When set to "light", Vim will try to use colors that look good 
" on a light background. Any other value is illegal.
set background=dark

" gruvbox comes in two modes, "dark" and "light". To toggle between them 
" just set background to an appropriate value:
" 	set background=dark    Setting "dark mode"
" 	set background=light   Setting "light mode"

" Set colorscheme with pastel 'retro groove' colors and light/dark mode
" For more info: https://github.com/morhetz/gruvbox 	
" Download a new Vim color scheme – “shit_ti_est_theme“. Extracts and move 
" the downloaded *.vim file to $HOME/.config/nvim/colors/ 
colorscheme gruvbox

" Since gruvbox inverts cursor color, it could be awkward to determine current 
" position, when the search is highlighted. To get single cursor color while 
" searching, map these gruvbox functions somewhere after unimpaired is loaded:

" nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
" nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
" nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

" nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
" nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
" nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" termguicolors uses your colorscheme and init.vim's gui values to set 
" the color highlighting rather than the cterm* values 
" For more info feread through :h :highlight.
set termguicolors

" Make comments italic
" You'll need a font with an italic set and a terminal capable of displaying 
" italics. Also, if you're using a color scheme other than the default, 
" the above line should come after the color scheme is loaded in 
" $HOME/.config/nvim/user/colors.vim
" so that the color scheme doesn't override it. The cterm makes it work in 
" the terminal and the gui is for graphical Vim clients. 
"
" First and foremost, you should check if you terminal is capable 
" of displaying text in italics. In your terminal type:
" echo -e "\e[3m foo \e[23m"
" If you see foo then okay, otherwise you need to change terminal 
" (Gnome Terminal and Konsole are good choices). If you use neovim inside tmux
" set this shit in tmux.conf: set -g default-terminal "tmux-256color" 
autocmd ColorScheme * hi Comment cterm=italic gui=italic

" Change the appearance of line numbers
autocmd ColorScheme * hi LineNr guifg=#DAB997 guibg=#3C3836

" Do Not display a ~ for blank lines
autocmd ColorScheme * hi NonText guifg=#3C3836 guibg=#3C3836
