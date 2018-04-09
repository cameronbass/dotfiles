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
	Plug 'elixir-editors/vim-elixir'
  Plug 'janko-m/vim-test'
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'flazz/vim-colorschemes'
call vundle#end()

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set nowrap
set paste
set smartindent
set autoindent
set cindent
set mouse=a
set noswapfile

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

