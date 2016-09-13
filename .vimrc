set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'bigzhu/html5.vim'
filetype plugin indent on     " required

"airline config
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

"youcompltememe config
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_key_invoke_completion = '<c-\>' 
set completeopt=menuone

"vim-easymotion config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

set t_Co=256
set term=screen-256color
set number
map <F5> :NERDTreeTabsToggle <CR>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


set wrap
set showcmd
colorscheme torte

autocmd BufNewFile,BufRead *.vue set filetype=html

syntax on
