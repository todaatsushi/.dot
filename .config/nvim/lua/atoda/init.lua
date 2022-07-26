require("atoda.mappings")
require("atoda.sets")

-- Telescope
require("atoda.telescope")
require("atoda.file_finders")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

-- Treesitter
require('nvim-treesitter.configs').setup({ highlight = { enable = true} })

-- LSP
require("atoda.lsp")
require("atoda.packer")

-- NERDTree on entry
-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "nerdtree",
--     callback = function ()
--       vim.cmd("let b:NERDTreeZoomed = 1 | wincmd |")
--     end
-- })

-- vim.api.nvim_create_autocmd("BufNew", {
--     pattern = "*.*",
--     callback = function ()
--         local file_or_folder = vim.v.argv[2]
--         local is_file = file_or_folder:match ".%a+$"

--         if not is_file then
--             vim.cmd("NERDTree")
--         end
--     end
-- })
