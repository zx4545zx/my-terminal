set syntax=on
set encoding=UTF-8
set guicursor=
set noshowmatch
set noshowmode
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set updatetime=50
set shortmess+=c

set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'terryma/vim-multiple-cursors'
Plug 'edkolev/tmuxline.vim'

call plug#end()

let g:airline_powerline_fonts = 1

colorscheme nord

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:svelte_preprocessor_tags = [
  \ { 'name': 'postcss', 'tag': 'style', 'as': 'scss' },
  \ { 'name': 'ts', 'tag': 'script', 'as': 'typescript' }
  \ ]
" You still need to enable these preprocessors as well.
let g:svelte_preprocessors = ['postcss']
let g:svelte_preprocessors = ['ts']

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

let g:rainbow_active = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let airline#extensions#tmuxline#snapshot_file = "~/.config/tmux/tmux-status.conf"

let g:tmuxline_preset = {
        \ 'a': '[#S]',
        \ 'win': '#I:#W#F',
        \ 'cwin': '#I:#W#F',
        \ 'x': '#{prefix_highlight}',
        \ 'y': '%H:%M',
        \ 'z': '%d-%b-%y',
        \ 'options': {
        \ 'status-justify': 'left'}
        \ }

let mapleader=" "
noremap <Leader>q :q
noremap <Leader>Q :q!
noremap <Leader>w :w
noremap <Leader>x :wq
