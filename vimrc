set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/TagHighlight'
"Bundle 'vim-scripts/taglist.vim'

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

let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
let Tlist_Exit_OnlyWindo=1
let Tlist_Show_One_File=1
let Tlist_Auto_Open=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=lightgrey ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightgrey ctermbg=237
autocmd VimEnter * :IndentGuidesEnable

"autocmd VimEnter * :TlistToggle
autocmd VimEnter * :UpdateTypesFile
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
"set cursorcolumn
hi Visual cterm=NONE ctermbg=yellow ctermfg=white guibg=darkred guifg=white
set list
set lcs=tab:\>\ ,nbsp:%,trail:-
set cinoptions=g0 " set public indent no tab
hi LeaderTab guifg=#666666
match LeaderTab /^\t/


