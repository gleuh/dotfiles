set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'
Plugin 'git@github.com:vim-scripts/ZoomWin.git'
Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'git@github.com:editorconfig/editorconfig-vim.git'
Plugin 'git@github.com:fatih/vim-go.git'
Plugin 'git@github.com:mileszs/ack.vim.git'
Plugin 'git@github.com:lumiliet/vim-twig.git'
Plugin 'git@github.com:morhetz/gruvbox.git'

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme gruvbox
set t_Co=256
set background=dark
set encoding=utf-8
set showcmd
set mouse=a
set cursorline
set history=1000

"" Interface
set ls=2

"" Whitespace
set nowrap
set showmatch
set notitle
set nocompatible
set scrolloff=3
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set nocindent
set smartindent
set pastetoggle=<F2>
set ruler
set number
set nobackup

set listchars=tab:▸.,trail:.,eol:¬,nbsp:.,extends:>,precedes:<
set list
set backspace=indent,eol,start
"" autocmd BufWritePre * :%s/\s\+$//e
autocmd BufEnter * :syntax sync fromstart

" Change statusbar color depending on the mode
au InsertEnter * hi StatusLine ctermfg=229 ctermbg=106
au InsertLeave * hi StatusLine ctermfg=7 ctermfg=0

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" faster viewport scrolling
nnoremap <C-j> 5j
nnoremap <C-k> 3k

"" leader
let mapleader = ","

"" NerdTree
map <Leader>n :NERDTreeToggle<CR>

"" ctrlp
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_root_markers = ['.git']
set wildignore+=*/tmp/*,*/cache/*,*.so,*.swp,*.zip,*/web/coverage/*

"" buffers
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
