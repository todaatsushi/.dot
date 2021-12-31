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


" git
Plug 'tpope/vim-fugitive'

" Formatting
Plug 'prettier/vim-prettier'

" Navigation
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sharkdp/fd'

Plug 'scrooloose/nerdtree'
Plug 'pechorin/any-jump.vim'

" Colour schemes
Plug 'ghifarit53/tokyonight-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'danilo-augusto/vim-afterglow', {'as' : 'afterglow'}
Plug 'jdsimcoe/abstract.vim'
Plug 'AlessandroYorba/Alduin'
Plug 'gilgigilgil/anderson.vim'
Plug 'zacanger/angr.vim'
Plug 'romainl/Apprentice'
Plug 'challenger-deep-theme/vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'cocopon/iceberg.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cseelus/vim-colors-lucid'
Plug 'nanotech/jellybeans.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'christophermca/meta5'
Plug 'joshdick/onedark.vim'
Plug 'jacoborus/tender.vim'
Plug 'jaredgorski/SpaceCamp'
Plug 'rakr/vim-two-firewatch'

" Meta
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python specific
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'jiangmiao/auto-pairs'
"self.user.last_login Plug 'vim-python/python-syntax'
" Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

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
