" The setting file
" 
" Maintainer: Pilna <Pilna@outlook.fr>
"
" Section:
" 	-> Setting
" 	-> Mapping
" 	-> plugin

set history=500        " Keep 500 line of command line history
set ruler              " Show the cursor position all the time
set showcmd            " Display incomplete command
set cmdheight=1        " Height of the command bar
set ignorecase         " Ignore case (upperCase / lowerCase) when searching
set nohlsearch         " Remove the highlighting when searching
set encoding=utf-8     " Set utf 8 as the standar encoding
set clipboard=unnamed  " Share the clipboard of system with vim (+p to paste with system clipboard)
set ttimeout           " time out for key codes
set ttimeoutlen=100    " Wait up to 100ms after Esc for special key
set lazyredraw         " Don't redraw while executing macros (performance upgrade)
set showmatch          " Show matching brackets when text indicator over them
set noerrorbells       " Disable sound on errors
set relativenumber     " Show relative number of the line to the left
set shiftwidth=4       " Set width of shift to 4 spaces
set tabstop=4          " Set width of shift to 4 spaces
set nobackup           " Turn off backup cause it store in git
set nowb               " Turn off backup cause it store in git
set noswapfile         " Turn off backup cause it store in git



" Mapping pour explorer cf CocConfig
nnoremap <space>e :CocCommand explorer<CR> 
" Use <Tab> to navigate completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Use <S-Tab> to nagivate completion list
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

call plug#begin('~/.vim/plugged')

" search file with ctrl + p (like vsc)
Plug 'kien/ctrlp.vim'
" autocompletion engine + installer engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" easy motions on search (/something)
Plug 'easymotion/vim-easymotion'

call plug#end()

