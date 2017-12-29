set nocompatible
syntax enable
set number
set linebreak
set autoindent
set showcmd
set cursorline
set mouse=h
set tabpagemax=100

hi cursorline cterm=None " Do not underline the current line.
hi cursorline ctermbg=237 " Make the current line highlighted in dark grey.
hi clear SpellBad " Remove default rules for incorrect spelling highlighting.
hi SpellBad cterm=underline " Underline words that are spelt wrong.
hi SpellBad ctermfg=Red " Make words that are spelt wrong red.
hi clear SpellLocal " Remove default rules for incorrect local spelling highlighting.
hi SpellLocal cterm=underline " Underline words that are spelt wrong locally.
hi SpellLocal ctermfg=LightBlue " Make words that are spelt wrong locally blue.

set spell spelllang=en_ca

" Remap up and down arrows to go up and down visual lines.
noremap <Up> gk
noremap <Down> gj
inoremap <Up> <ESC>gka
inoremap <Down> <ESC>gja

" Unmap annoying keys.
nnoremap Q <Nop>

" Map semicolon to colon, to avoid having to press shift.
map ; :

" Save views.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Fix file types.
autocmd FileType plaintex set filetype=tex " Try to find a better way to do this.

" Compilation commands.
autocmd FileType python map <F2> :w <bar> !python3 "%"<cr>
autocmd FileType tex map <F2> :wa <bar> tabfirst <cr> :!pdflatex "%"<cr>
autocmd FileType scss map <F2> :w <bar> !scss % %:r.css --style compressed <cr>
autocmd FileType c map <F2> :w <bar> !gcc -o %:r % <cr>
autocmd FileType cpp map <F2> :w <bar> !g++ -o %:r % <cr>
autocmd FileType markdown map <F2> :w <bar> !pandoc -s % -o %:r.pdf <cr>

" Extra compilation commands.
autocmd FileType tex map <F3> :wa <bar> tabfirst <cr> :!biber %:r<cr>

" Configure plugins

" Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
