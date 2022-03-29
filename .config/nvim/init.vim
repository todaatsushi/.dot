syntax on

set runtimepath+=~/path/to/deoplete.nvim/
let g:deoplete#enable_at_startup = 1

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Utils
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-commentary'
Plug 'ThePrimeagen/harpoon'
Plug 'tpope/vim-surround'

" git
Plug 'tpope/vim-fugitive'

" Formatting
Plug 'prettier/vim-prettier'

" Navigation
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'sharkdp/fd'

Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Colour schemes
Plug 'ghifarit53/tokyonight-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'cocopon/iceberg.vim'
Plug 'jacoborus/tender.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'marko-cerovac/material.nvim'
Plug 'aktersnurra/no-clown-fiesta.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'daschw/leaf.nvim'

" Meta
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mrjones2014/legendary.nvim'

" Python specific
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jeetsukumaran/vim-pythonsense'

Plug 'vim-python/python-syntax'

" JS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'

" Ts
Plug 'leafgarland/typescript-vim'

" Rust 
Plug 'rust-lang/rust.vim'

call plug#end()

autocmd FileType json syntax match Comment +\/\/.\+$+
filetype plugin on

" Neovim config shortcut
cnoremap %nv ~/.config/nvim/
nnoremap <leader>SV :so %<CR>
