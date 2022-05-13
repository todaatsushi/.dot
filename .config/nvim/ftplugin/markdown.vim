let g:vim_markdown_folding_disabled = 1

" Elems
nnoremap <leader>1 <Space>-<Space><CR>
nnoremap <leader>2 -<Space>[<Space>]<Space><CR>

" Headings
nnoremap <leader>h1 0i#<Space><ESC>
nnoremap <leader>h2 0i##<Space><ESC>
nnoremap <leader>h3 0i###<Space><ESC>
nnoremap <leader>h4 0i####<Space><ESC>
nnoremap <leader>bt 0i<Space>-<Space><ESC>

" Accent
inoremap <c-b> ****<left><left>
inoremap <leader>bt <C-c>0i<Space>-<Space><ESC>

" Links
nnoremap <leader>4 ciw[<C-r>"](<Esc>"*pa)<Esc><CR>
vnoremap <leader>4 c[<C-r>"](<Esc>"*pa)<Esc><CR>
