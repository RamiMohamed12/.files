" General settings
set nocompatible          " Disable compatibility with old Vi
set number                " Show line numbers
"set relativenumber        " Relative line numbers
"set cursorline            " Highlight the current line
syntax on                 " Enable syntax highlighting
set background=dark       " Use dark background for better contrast
set tabstop=4             " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4          " Number of spaces to use for auto-indent
set expandtab             " Convert tabs to spaces
set autoindent            " Copy indent from the current line when starting a new line
set wrap                  " Enable line wrapping
set incsearch             " Highlight matches as you type
set hlsearch              " Highlight all matches after searching
set clipboard=unnamedplus " Use system clipboard

" Plugins (managed by vim-plug)
call plug#begin('~/.vim/plugged')

" Plugins to improve Vim
Plug 'preservim/nerdtree'             " File explorer
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Modern syntax highlighting
Plug 'junegunn/fzf', { 'do': './install --bin' }            " Fuzzy finder
Plug 'junegunn/fzf.vim'              " Integration of fzf in Vim
Plug 'itchyny/lightline.vim'         " Lightweight statusline
Plug 'tpope/vim-fugitive'            " Git integration
Plug 'sheerun/vim-polyglot'          " Syntax highlighting for multiple languages
Plug 'airblade/vim-gitgutter'        " Show git diff in the gutter
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" NERDTree Configuration
map <C-n> :NERDTreeToggle<CR>        " Toggle NERDTree with Ctrl+n

" Fuzzy Finder Configuration
nnoremap <C-p> :Files<CR>            " Open FZF to search files with Ctrl+p

" GitGutter Configuration
let g:gitgutter_sign_added = '➕'
let g:gitgutter_sign_modified = '⚡'
let g:gitgutter_sign_removed = '❌'

"Cursor 
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"

"Airline theme
let g:airline_theme='violet'

set nocompatible              " required for Vundle
filetype off                  " required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
" Add YouCompleteMe plugin
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required for Vundle
filetype plugin indent on    " required for Vundle

