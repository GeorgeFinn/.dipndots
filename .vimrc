" George Finn <george.finn@me.com>

" MISC {{{
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
" }}}

" COLORS {{{
syntax enable " Enable Syntax Processing 
" }}}

" SPACES & TABS {{{
set tabstop=4
set softtabstop=4
set expandtab
set modelines=1
" }}}

" UI Config {{{
set number
set showcmd
set cursorline

" turns on filetype detection and allows loading of language specific
" indentation files based on that detection
" eg. - ~/.vim/indent/python.vim gets loaded everytime I open a *.py
filetype indent on

set wildmenu " Vim autocompletes filenames when - :e ~/.vim<TAB>
set lazyredraw
set showmatch "highlight matching [{()}]
" }}}

" SEARCHING {{{
set incsearch "search as characters are entered
set hlsearch "highlight matches
" Vim will keep highlighting matches from searches until you either run a new
" one or manually stop highlighting old search
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" FOLDING {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10

" space open/closes folds
nnoremap <space> za
set foldmethod=indent
" }}}

" MOVEMENT {{{
nnoremap j gj
nnoremap k gk
" }}}

" LEADER SHORTCUTS {{{
let mapleader=","
inoremap jk <esc>
inoremap kj <esc>
" }}}

" vim:foldmethod=marker:foldlevel=0
