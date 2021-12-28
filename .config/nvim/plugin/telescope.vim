lua require("atoda")

" meta
" Reference nvim files
nnoremap <leader>gvl :lua require('atoda.telescope').search_nvim_grep()<CR>
nnoremap <leader>gvf :lua require('atoda.telescope').search_nvim_files()<CR>


nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Find: ")})<CR>
nnoremap <leader>pl <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>pg :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

" Custom
" Search env
nnoremap <leader>gef :lua require('atoda.telescope').search_files_env()<CR>
nnoremap <leader>ges :lua require('atoda.telescope').search_string_env()<CR>
nnoremap <leader>gew :lua require('atoda.telescope').search_word_env()<CR>

" Search Python
nnoremap <leader>gpf :lua require('atoda.telescope').search_files_python()<CR>
nnoremap <leader>gps :lua require('atoda.telescope').search_string_python()<CR>
nnoremap <leader>gpl :lua require('atoda.telescope').search_live_python()<CR>
nnoremap <leader>gpw :lua require('atoda.telescope').search_word_python()<CR>

" Search templates
nnoremap <leader>gtf :lua require('atoda.telescope').search_files_templates()<CR>
nnoremap <leader>gts :lua require('atoda.telescope').search_string_templates()<CR>
nnoremap <leader>gtl :lua require('atoda.telescope').search_live_templates()<CR>
nnoremap <leader>gtw :lua require('atoda.telescope').search_word_templates()<CR>
