" My plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'dkprice/vim-easygrep'
Plug 'yegappan/mru'
Plug 'janko-m/vim-test'
Plug 'joshdick/onedark.vim'
Plug 'mxw/vim-jsx'
Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'godlygeek/tabular'
Plug 'kassio/neoterm'
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'

call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

set noswapfile
set mouse=a
set timeout
set timeoutlen=750
set ttimeoutlen=250
set wrap
set ignorecase
set smartcase
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
set smarttab
set incsearch
set hlsearch
set clipboard=unnamed
set backspace=indent,eol,start

