" Mappings
let mapleader = " "

" Windows
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" Sizing window vertically
" taller
nnoremap <leader>t <C-W>+
" shorter
nnoremap <leader>s <C-W>-
" fatter
nnoremap <leader>w <C-W>>
" thinner
nnoremap <leader>n <C-W><

" Plugin management
inoremap <leader>np Plug ''
nnoremap <leader>plin :PlugInstall<CR>


"  Navigation
"  Nerdtree
"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Utils
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv
inoremap jk <C-c><cr>

" Meta
cnoremap %sv source $MYVIMRC<CR>
cnoremap %wd expand('%:h')<CR>

" Helpers
nnoremap <leader>ii i<space><esc>
nnoremap <leader>hl :Semshi enable<CR>

" QOL improvements
" Copies rest of line instead of whole line
nnoremap Y y$

" Keeps nav centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo breakpoints
nnoremap , ,<c-g>u
nnoremap . .<c-g>u
nnoremap ! !<c-g>u
nnoremap ? ?<c-g>u
nnoremap ; ;<c-g>u

" reselect selection after shift
vnoremap < <gv
vnoremap > >gv
