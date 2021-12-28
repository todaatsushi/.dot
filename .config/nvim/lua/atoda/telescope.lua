local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        },

        file_ignore_patterns = {"undodir", "plugged"}
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
    },
})

require("telescope").load_extension("fzy_native")

local M = {}

M.search_files_env = function()
    -- require("telescope.builtin").find_files({ cwd  = "~/Workspace/website/,venv", search = vim.fn.input("Search env files: ") })
    require("telescope.builtin").find_files({ cwd  = "~/Workspace/website/.venv" })
end

M.search_string_env = function()
    require("telescope.builtin").grep_string({ cwd = "~/Workspace/website/.venv", search = vim.fn.input("Search env string: ")})
end

M.search_word_env = function()
    require("telescope.builtin").grep_string({ cwd = "~/Workspace/website/.venv", search = vim.fn.expand("<cword>") })
end


M.search_string_python = function()
    require("telescope.builtin").grep_string({ cwd  = "~/Workspace/website/python", search = vim.fn.input("Search python string: ") })
end

M.search_files_python = function()
    -- require("telescope.builtin").find_files({ cwd  = "~/Workspace/website/python", search = vim.fn.input("Search python files: ") })
    require("telescope.builtin").find_files({ cwd  = "~/Workspace/website/python" })
end

M.search_live_python = function()
    require("telescope.builtin").live_grep({ cwd  = "~/Workspace/website/python" })
end

M.search_word_python = function()
    require("telescope.builtin").grep_string({ cwd = "~/Workspace/website/python", search = vim.fn.expand("<cword>") })
end



M.search_string_templates = function()
    require("telescope.builtin").grep_string({ cwd  = "~/Workspace/website/templates", search = vim.fn.input("Search templates string: ") })
end

M.search_files_templates = function()
    -- require("telescope.builtin").find_files({ cwd  = "~/Workspace/website/templates", search = vim.fn.input("Search templates files: ") })
    require("telescope.builtin").find_files({ cwd  = "~/Workspace/website/templates" })
end

M.search_live_templates = function()
    require("telescope.builtin").live_grep({ cwd  = "~/Workspace/website/templates" })
end

M.search_word_templates = function()
    require("telescope.builtin").grep_string({ cwd = "~/Workspace/website/templates", search = vim.fn.expand("<cword>") })
end



M.search_nvim_files = function()
    require('telescope.builtin').find_files({ cwd = "~/.config/nvim" })
end
M.search_nvim_grep = function()
    require('telescope.builtin').live_grep({ cwd = "~/.config/nvim" })
end


return M
