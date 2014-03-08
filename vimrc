set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
"Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'vim-scripts/TagHighlight'
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
"autocmd VimEnter * :UpdateTypesFile
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
set cc=100
"set cursorcolumn
hi Visual cterm=NONE ctermbg=yellow ctermfg=white guibg=darkred guifg=white
set list
set lcs=tab:\>\ ,nbsp:%,trail:-
set cinoptions=g0 " set public indent no tab
hi LeaderTab guifg=#666666
match LeaderTab /^\t/
map <C-n> :NERDTreeToggle<CR>

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" Syntastic
let g:syntastic_c_checkers=['make']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*gbar
