"=============-My Plugins-=============
call plug#begin('~/.vim/plugged')
	Plug 'junegunn/vim-easy-align'
	Plug 'vim-ruby/vim-ruby'
	Plug 'altercation/vim-colors-solarized'
	Plug 'flazz/vim-colorschemes'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-rails'
	Plug 'elixir-lang/vim-elixir'
	Plug 'dkprice/vim-easygrep'
	Plug 'yegappan/mru'
	Plug 'scrooloose/nerdtree'
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'flazz/vim-colorschemes'
call vundle#end()

"=============-My Configurations-=======
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set nowrap
set paste
set smartindent
set autoindent
set cindent
set mouse=a
set noswapfile
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"=============-My Colors-===============
:syntax on
colorscheme molokai
