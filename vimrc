"=============-My Plugins-=============
call plug#begin('~/.vim/plugged')
	Plug 'junegunn/vim-easy-align'
	Plug 'vim-ruby/vim-ruby'
	Plug 'micha/vim-colors-solarized'
	Plug 'flazz/vim-colorschemes'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-rails'
	Plug 'elixir-lang/vim-elixir'
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'flazz/vim-colorschemes'
call vundle#end()

"=============-My Configurations-=======
set tabstop=2
set number
set nowrap
set smartindent
set autoindent

function! s:DiffWithSaved()
				let filetype=&ft
				diffthis
				vnew | r # | normal! 1Gdd
				diffthis
				exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

"=============-My Colors-===============
:syntax on
colorscheme molokai
