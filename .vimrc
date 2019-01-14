set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
filetype plugin indent on     " required

"airline config
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

"vim-easymotion config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

set t_Co=256
set term=screen-256color
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wrap
set showcmd
colorscheme torte

autocmd BufNewFile,BufRead *.vue set filetype=html

syntax on
