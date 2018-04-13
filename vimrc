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

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'elixir-editors/vim-elixir'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'

" Handlebars
Plug 'mustache/vim-mustache-handlebars'
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Configuration
let mapleader=','
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = 'tmp'
let delimitMate_expand_cr=1
set backspace=indent,eol,start
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set nowrap
set paste
set smartindent
set autoindent
set autoread
set nocindent nopaste cinwords+=def smartindent
set mouse=a
set noswapfile
set omnifunc=csscomplete#CompleteCSS
set rtp+=/usr/local/opt/fzf
set wildmenu
set wildmode=longest:full,full
set wildignore+=*/node_modules/*
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
nnoremap <silent> <Leader>s :vsplit<CR>
nnoremap <silent> <Leader>h :split<CR>

let g:neoterm_automap_keys = ',tt'
let g:neoterm_size = '12'
let g:neoterm_autoscroll = '1'
let g:neoterm_default_mod = 'aboveleft'
nmap <silent> <leader>tt :Ttoggle<CR>

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Airline

" Colorscheme
syntax on
colorscheme onedark

" Shortcuts for editing .vimrc
nnoremap <leader>ev :tabe ~/.vimrc<cr>:lcd %:p:h<cr>
autocmd! BufWritePost ~/.vimrc source ~/.vimrc

" vim-test
nmap <silent> <leader>tn :TestNearest<CR> 
nmap <silent> <leader>tf :TestFile<CR>    
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>    
nmap <silent> <leader>tv :TestVisit<CR>   
let test#strategy = "neoterm"

