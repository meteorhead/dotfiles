set nocompatible              " be iMproved, required
filetype off                  " required
:fixdel
" VIM arrow keys not functioning properly on windows
:set term=builtin_ansi
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" " use indentation of previous line
set autoindent
" " use intelligent indentation for C
set smartindent
" " configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" " wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" " turn syntax highlighting on
set t_Co=256
syntax on
" " colorscheme wombat256
" " turn line numbers on
set number
" " highlight matching braces
set showmatch
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" git repos on your local machine (i.e. when working on your own plugin) " Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
set laststatus=2
" All of your Plugins must be added before the following line
" Plugin 'jiangmiao/auto-pairs'
Plugin 'w0rp/ale'
Plugin 'universal-ctags/ctags'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'
Plugin 'AlessandroYorba/Alduin'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax enable
"set background=dark
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal-as-GUI settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('mouse')     " In many terminal emulators the mouse works just fine, thus enable it.
    set mouse=a
endif

if &t_Co > 2 || has("gui_running")
        syntax on       " Switch syntax highlighting on, when the terminal has colors
        set hlsearch        " Also switch on highlighting the last used search pattern.
endif

" move among buffers with CTRL

map <C-K> :bnext<CR>
map <C-J> :bprev<CR>
map <C-X> :bdelete<CR>

" Toggle NERDTree
map <C-N> :NERDTreeToggle<CR>

" Close NERDTree if no other window is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nmap <Del> x
inoremap jk <ESC>
inoremap <esc>   <NOP>
nnoremap <C-b> :make<CR>
nnoremap <C-r> :!./%:r<CR>
