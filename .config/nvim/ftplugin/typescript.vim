command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Sets
set relativenumber
set hidden
set nu
set noswapfile
set nobackup
set incsearch

set tabstop=2
set softtabstop=2
set shiftwidth=2

" set noshowmode
set signcolumn=yes
set isfname+=@-@
" set ls=0

" Having longer updatetime (default is 2000 ms = 2 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let b:ale_fixers = {'javascript': ['eslint'], 'typescript': ['eslint']}
let b:ale_fix_on_save = 1
let b:ale_linters = {'javascript': ['eslint'], 'typescript': ['eslint']}
