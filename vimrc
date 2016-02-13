set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:vim-scripts/ZoomWin.git'
Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'git@github.com:editorconfig/editorconfig-vim.git'
Plugin 'git@github.com:fatih/vim-go.git'
Plugin 'git@github.com:tomasr/molokai.git'
Plugin 'git@github.com:vim-scripts/zoom.vim.git'
Plugin 'git@github.com:easymotion/vim-easymotion.git'
Plugin 'git@github.com:mileszs/ack.vim.git'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme molokai
set encoding=utf-8
set showcmd
set mouse=a
set cursorline
set history=1000

"" Whitespace
"" set nowrap
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set nocindent
set smartindent
set pastetoggle=<F2>

"" set listchars=tab:▸.,trail:.,eol:¬,nbsp:.,extends:>,precedes:<
"" set list
"" set backspace=indent,eol,start
"" autocmd BufWritePre * :%s/\s\+$//e

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" leader
let mapleader = ","

"" NerdTree
map <Leader>n :NERDTreeToggle<CR>

"" ctrlp
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_root_markers = ['.git']
set wildignore+=*/tmp/*,*/cache/*,*.so,*.swp,*.zip,*/web/coverage/*
