require('atoda.telescope')

-- DRY?
function nmap(shortcut, command)
  vim.api.nvim_set_keymap("n", shortcut, command, { noremap = true, silent = true })
end

-- Nvim stuff
nmap("<leader>gvl", ":lua require('atoda.telescope').search_nvim_grep()<CR>")
nmap("<leader>gvf", ":lua require('atoda.telescope').search_nvim_files()<CR>")

-- -- Dir agnostic funcs
-- nmap("<leader>ps", ":lua require('atoda.telescope').grep_string({ search = vim.fn.input('Find: ')  })<CR>")
-- nmap("<leader>pl", ":lua require('atoda.telescope').live_grep({})<CR>")
-- nmap("<leader>pw", ":lua require('atoda.telescope').grep_string({ search = vim.fn.expand('<cword>') })<CR>")
-- nmap("<leader>pb", ":lua require('atoda.telescope').buffers()<CR>")
-- nmap("<leader>pf", ":lua require('atoda.telescope').find_files()<CR>")
-- nmap("<leader>vh", ":lua require('atoda.telescope').help_tags()<CR>")



