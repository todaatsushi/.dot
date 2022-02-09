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
Plug 'pechorin/any-jump.vim'

" Colour schemes
Plug 'ghifarit53/tokyonight-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'cocopon/iceberg.vim'
Plug 'jacoborus/tender.vim'
Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'

" Meta
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python specific
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'jiangmiao/auto-pairs'

Plug 'vim-python/python-syntax'

" JS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'

" Ts
Plug 'leafgarland/typescript-vim'

call plug#end()

autocmd FileType json syntax match Comment +\/\/.\+$+
filetype plugin on

" Neovim config shortcut
cnoremap %nv ~/.config/nvim/
nnoremap <leader>SV :so %<CR>
