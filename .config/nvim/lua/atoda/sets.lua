local set = vim.opt

set.exrc = true
set.hlsearch = false
set.errorbells = false
set.expandtab = true
set.wrap = false
set.incsearch = true
set.scrolloff = 30
set.showmode = false
set.completeopt = {"menuone", "noinsert", "noselect"}
set.cmdheight = 2

set.colorcolumn = {88}
set.signcolumn = "yes"
-- set.t_Co = 256  -- might not need this

set.hidden = true
set.swapfile = false
set.backup = false
set.undodir = vim.fn.expand("~").."/.config/nvim/"
set.undofile = true

-- colours
set.termguicolors = true

--------------------------------------------------------------------------------
-- configure editor with tabs and nice stuff...
--------------------------------------------------------------------------------
set.expandtab = true           -- enter spaces when tab is pressed
set.textwidth = 120       -- break lines when line length increases
set.tabstop = 4           -- use 4 spaces to represent tab
set.softtabstop = 4
set.shiftwidth = 4        -- number of spaces to use for auto indent
set.autoindent = true          -- copy indent from current line when starting a new line
set.relativenumber = true

-- make backspaces more powerfull
set.backspace = "indent,eol,start"

set.ruler = true                           -- show line and column number
vim.cmd([[ syntax on ]])
set.showcmd = true             -- show (partial) command in stats lineu

