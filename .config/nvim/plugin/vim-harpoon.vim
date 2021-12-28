" ensure the name is alphabetically after the maps file

lua require("harpoon")
lua require("telescope").load_extension("harpoon")

" Marks
nnoremap <leader>mkm :lua require("harpoon.mark").add_file()<CR>

" Navigation
nnoremap <leader>mka :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>mkn :lua require("harpoon.ui").nav_next()<CR>
nnoremap <leader>mkb :lua require("harpoon.ui").nav_prev()<CR>
