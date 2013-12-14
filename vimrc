set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" 
set encoding=utf-8
let g:Powerline_symbols='fancy'
set laststatus=2
set nu
set t_Co=256
set background=dark
"let g:solarized_termtrans=1
syntax enable
let g:solarized_bold=1
let g:solarized_termcolors=256
colorscheme solarized

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set cindent
set hls
set cursorline
hi Visual cterm=NONE ctermbg=yellow ctermfg=white guibg=darkred guifg=white
set list
set lcs=tab:\>\ ,nbsp:%,trail:-
hi LeaderTab guifg=#666666
match LeaderTab /^\t/


