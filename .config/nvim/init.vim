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

" LSP stuff
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" git
Plug 'tpope/vim-fugitive'

" Formatting
Plug 'prettier/vim-prettier'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'

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
Plug 'savq/melange'
Plug 'mhartington/oceanic-next'
Plug 'sainnhe/everforest'
Plug 'rose-pine/neovim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'kvrohit/substrata.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'projekt0n/github-nvim-theme'

" Meta
Plug 'vim-airline/vim-airline'

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

" HTML
Plug 'mattn/emmet-vim'

" Go
Plug 'fatih/vim-go'

" Markdown
Plug 'godlygeek/tabular'

" Prisma
Plug 'pantharshit00/vim-prisma'

call plug#end()

autocmd FileType json syntax match Comment +\/\/.\+$+
filetype plugin on
