" Formatting
set exrc

" UI settings
set nohlsearch
set noerrorbells
set expandtab
set nowrap
set incsearch
set scrolloff=30
set noshowmode
set completeopt=menuone,noinsert,noselect
set cmdheight=2

" Cols
set colorcolumn=80
set signcolumn=yes
set t_Co=256

" History / workflow
set hidden
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" colours
" set termguicolors

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set relativenumber

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in stats lineu
