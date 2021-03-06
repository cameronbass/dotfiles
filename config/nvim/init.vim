" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch'
Plug 'tpope/gem-ctags'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'janko-m/vim-test'
Plug 'wincent/ferret'
Plug 'tpope/vim-sleuth'
Plug 'chr4/nginx.vim'
Plug 'wannesm/wmgraphviz.vim'
Plug 'schickling/vim-bufonly'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'


" Look and Feel
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

" Neovim
Plug 'kassio/neoterm'

" Editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'kana/vim-textobj-user'
Plug 'FooSoft/vim-argwrap'
Plug 'reedes/vim-pencil'
Plug 'itspriddle/vim-marked', {'for': 'markdown'}
Plug 'junegunn/goyo.vim', {'for': 'markdown'}
" Plug 'maxbrunsfeld/vim-emacs-bindings'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'jgdavey/vim-blockle'
Plug 'ck3g/vim-change-hash-syntax'
Plug 'tpope/vim-endwise'
" Plug '~/.vim/plugin/cadre'
Plug 'killphi/vim-legend'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'roxma/ncm-rct-complete'

Plug 'lmeijvogel/vim-yaml-helper'
" Vim
Plug 'tpope/vim-scriptease', {'for': 'vim'}
Plug 'ynkdir/vim-vimlparser'
Plug 'syngan/vim-vimlint'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'

" Go
Plug 'fatih/vim-go', {'for': 'go'}
"Plug 'farazdagi/vim-go-ide'
Plug 'benmills/vim-golang-alternate', {'for': 'go'}

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'

" ASM
Plug 'samsaga2/vim-z80'


" Initialize plugin system
call plug#end()


" General settings
" ------------------------------------------------

set noswapfile
set mouse=a
set timeout
set timeoutlen=750
set ttimeoutlen=250
set ignorecase
set nowrap
set smartcase
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=0
set autoindent
set smartindent
set smarttab

"NeoVim handles ESC keys as alt+key set this to solve the problem
if has('nvim')
  set ttimeout
  set ttimeoutlen=0
endif

let mapleader=','
set number
set showcmd
set shell=/bin/zsh
set nojoinspaces
set autowrite
" set list "show those nasty TABs

" Reload config on write
autocmd! BufWritePost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175


filetype plugin on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/.git/*,*/log/*,*/tmp/*,*/node_modules/*,*/nes/*,**/*.pyc,.git/*,vendor/*

let base16colorspace=256
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

nnoremap <silent> <leader>v :NERDTreeFind<CR>

nnoremap <leader>j <C-w>

" The Silver Searcher
" if executable('ag')
"   " Use ag over grep
"   set grepprg=ag\ --nogroup\ --nocolor\ --hidden
"   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   " ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_show_hidden = 1

" Key Bindings
nnoremap <leader>ev :tabe ~/.config/nvim/init.vim<cr>:lcd %:p:h<cr>

" Other files
" source ~/.config/nvim/plugins.vim
" source ~/.config/nvim/languages.vim
" source ~/.config/nvim/commands.vim

set clipboard=unnamed

" Split Screen
nnoremap <silent> <Leader>vs :vsplit<CR>
nnoremap <silent> <Leader>hs :split<CR>


syntax on
colorscheme onedark

" Custom movement between buffers
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


let g:terminal_scrollback_buffer_size = 2147483646

let g:token="113eda4ab465dc9f416ea955d36738d7"
let g:project_id="792199"

" Clear search highlight
highlight Search ctermbg=yellow ctermfg=white term=underline
nmap <C-l> :noh<CR>

" Comment/Uncomment
vnoremap <leader>c :Commentary<CR>
nnoremap <leader>c :Commentary<CR>

let g:airline_powerline_fonts = 1

set wildignore+=build
set wildignore+=.build
set wildignore+=*.pyc
set wildignore+=node_modules
set wildignore+=Packages


" NeoTerm
" let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'
" let g:neoterm_size = '12'
let g:neoterm_autoscroll = '1'
let g:neoterm_default_mod = 'aboveleft'

nnoremap <silent> <leader>sf :TREPLSendFile<cr>
nnoremap <silent> <leader>sl :TREPLSendLine<cr>
vnoremap <silent> <leader>ss :TREPLSendSelection<cr>



" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate
command! Trailss :T rails s
command! Trailsc :T rails c

" My Commands
command! Foreman :tabe term://foreman start -f Procfile.dev
command! Github :T github

" command! Coverage :!open coverage/index.html

" make test commands execute using dispatch.vim
let test#strategy = "neoterm"

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> <leader>tn :TestNearest<CR> 
nmap <silent> <leader>tf :TestFile<CR>    
nmap <silent> <leader>ts :TestSuite<CR>   
nmap <silent> <leader>tl :TestLast<CR>    
nmap <silent> <leader>tg :TestVisit<CR>   
nmap <silent> <leader>tt :Ttoggle<CR>   

nmap <silent> <leader>fw :Ack <C-r><C-w><CR>
nmap <silent> <leader>fp :Ack 
" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1
autocmd FileType terraform setlocal commentstring=#%s

" au BufNewFile,BufRead *.conf.erb set filetype=nginx

" let g:legend_active_auto = 0

let g:go_autodetect_gopath = 0

let g:tagbar_type_ruby = {
      \ 'kinds' : [
      \ 'm:modules',
      \ 'c:classes',
      \ 'd:describes',
      \ 'C:contexts',
      \ 'f:methods',
      \ 'F:singleton methods'
      \ ]
      \ }

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" NeoSnippet
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
