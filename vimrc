" My plugins
call plug#begin('~/.vim/plugged')
	Plug 'junegunn/vim-easy-align'
	Plug 'scrooloose/nerdtree'
	Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'dkprice/vim-easygrep'
	Plug 'yegappan/mru'
  Plug 'janko-m/vim-test'

  " Ruby
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-rails'

  " Elixir
	Plug 'elixir-lang/vim-elixir'
	Plug 'elixir-editors/vim-elixir'

  " Javascript

  " Colorschemes
	Plug 'altercation/vim-colors-solarized'
	Plug 'flazz/vim-colorschemes'
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'flazz/vim-colorschemes'
call vundle#end()

" Configuration
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start
set number
set nowrap
set paste
set smartindent
set autoindent
set cindent
set mouse=a
set noswapfile
set rtp+=/usr/local/opt/fzf

set wildmenu
set wildmode=longest:full,full

let mapleader=','

syntax on
colorscheme elflord 

" Shortcuts for editing .vimrc
nnoremap <leader>ev :tabe ~/.vimrc<cr>:lcd %:p:h<cr>
autocmd! BufWritePost ~/.vimrc source ~/.vimrc

" vim-test
nmap <silent> <leader>tn :TestNearest<CR> 
nmap <silent> <leader>tf :TestFile<CR>    
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>    
nmap <silent> <leader>tv :TestVisit<CR>   
let test#strategy = "vimterminal"

