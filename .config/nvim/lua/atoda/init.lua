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

-- ColorScheme
vim.cmd("colorscheme github_dark")
