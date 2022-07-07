lua require("atoda")

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Find: ")})<CR>
nnoremap <leader>pl <cmd>lua require('telescope.builtin').live_grep()<cr>
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

" Git magic
nnoremap <leader>gf :lua require('telescope.builtin').git_files(require('telescope.themes').get_ivy({}))<CR>
nnoremap <leader>gs :lua require('telescope.builtin').git_status(require('telescope.themes').get_ivy({}))<CR>
nnoremap <leader>gc :lua require('telescope.builtin').git_commits(require('telescope.themes').get_ivy({}))<CR>
nnoremap <leader>gcb :lua require('telescope.builtin').git_bcommits(require('telescope.themes').get_ivy({}))<CR>
nnoremap <leader>gb :lua require('telescope.builtin').git_branches(require('telescope.themes').get_ivy({}))<CR>
nnoremap <leader>gsta :lua require('telescope.builtin').git_stash(require('telescope.themes').get_ivy({}))<CR>

" QOL vim
nnoremap <leader>cs :lua require('telescope.builtin').colorscheme()<CR>
nnoremap <leader>cmd :lua require('telescope.builtin').command_history()<CR>
