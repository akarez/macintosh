"""""""""""""""""""""""""""
"                         "
" NVIM Configuration File "
"                         "
"""""""""""""""""""""""""""

"Plugins

" Auto Install Script for Vim-Plug

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'sheerun/vim-polyglot'                     " Better Syntax
Plug 'gruvbox-community/gruvbox'                " Color Scheme
Plug 'jiangmiao/auto-pairs'                     " Auto Pair () {} []
Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP
Plug 'liuchengxu/vim-which-key'                 " Key Command Menu
Plug 'kevinoid/vim-jsonc'                       " Coc Comment Highlight 
Plug 'norcalli/nvim-colorizer.lua'              " Show Color Codes
Plug 'vim-airline/vim-airline'                  " Status Line
Plug 'vim-airline/vim-airline-themes'           " Status Line Themes
Plug 'francoiscabrol/ranger.vim'                " Ranger File Manager
Plug 'rbgrouleff/bclose.vim'                    " Ranger Extension
Plug 'glepnir/dashboard-nvim'                   " Dashboard

call plug#end()


"General Settings

syntax enable

set number
set nowrap
set noerrorbells
set termguicolors
set splitbelow
set splitright
set scrolloff=10
set noshowmode

set smartindent
set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

set nohlsearch
set incsearch

set hidden
set noswapfile
set undodir=~/.vim/undodir
set undofile
set nobackup
set nowritebackup

set updatetime=50
set timeoutlen=500
set formatoptions-=cro
set clipboard=unnamedplus

set mouse=a
set background=dark
colorscheme gruvbox



"Source Plugin Configuration

source  $HOME/.config/nvim/plug-config/coc.vim
source  $HOME/.config/nvim/plug-config/home-screen.vim
source  $HOME/.config/nvim/plug-config/airline.vim
luafile $HOME/.config/nvim/plug-config/plug-colorizer.lua



"Key Mappings

let g:mapleader = "\<Space>"

nnoremap <leader>f <cmd>NERDTree <CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent>'Tab' <cmd>bnext <CR>   

nnoremap <C-c> :!g++ -o  %:r.out % -std=c++17
nnoremap <C-x> :!./%:r.out
