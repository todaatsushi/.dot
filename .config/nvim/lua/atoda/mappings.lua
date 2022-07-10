local api = vim.api
local global = vim.g

global.mapleader = " "

-- Map utils
function map(mode, shortcut, command)
  api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map("n", shortcut, command)
end

function cmap(shortcut, command)
  map("c", shortcut, command)
end

function imap(shortcut, command)
  map("i", shortcut, command)
end

function tmap(shortcut, command)
  map("t", shortcut, command)
end

function vmap(shortcut, command)
  map("v", shortcut, command)
end


-- Windows
-- movement
nmap("<C-h>", ":wincmd h<CR>")
nmap("<C-j>", ":wincmd j<CR>")
nmap("<C-k>", ":wincmd k<CR>")
nmap("<C-l>", ":wincmd l<CR>")

-- sizing
nmap("<leader>t", "<C-W>+")
nmap("<leader>s", "<C-W>-")
nmap("<leader>w", "<C-W>>")
nmap("<leader>n", "<C-W><")

-- Terminal movements
tmap("<C-h>", "<C-\\><C-n><C-w>h")
tmap("<C-j>", "<C-\\><C-n><C-w>j")
tmap("<C-k>", "<C-\\><C-n><C-w>k")
tmap("<C-l>", "<C-\\><C-n><C-w>l")

-- NERDTree
nmap("<leader>nt", ":NERDTreeToggle<CR>")
nmap("<leader>nf", ":NERDTreeFind<CR>")
nmap("<leader>ii", "i<space><esc>")

-- Editing
vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '>-2<CR>gv=gv")
imap("jj", "<C-c><CR>")

-- Commandline
cmap("%sv", "source $MYVIMRC<CR>")
cmap("%wd", "expand('%h')<CR>")

-- QOL
nmap("Y", "y$")

-- Nav
nmap("n", "nzzzv")
nmap("N", "Nzzzv")
nmap("J", "mzJ'z")

-- Breakpoints
nmap(",", ",<C-g>u")
nmap(".", ".<C-g>u")
nmap("!", "!<C-g>u")
nmap("?", "?<C-g>u")
nmap(";", ";<C-g>u")

vmap("<", "<gv")
vmap(">", ">gv")

-- Move selection to Terminal
vmap(";", "y:<C-r>\"<C-b>")
