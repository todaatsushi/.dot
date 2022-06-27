local dap = require("dap")

-- Python
require("dap-python").setup("~/.venvs//debugpy/bin/python")

dap.adapters.python = {
    type = "executable",
    command = "~/.venvs/debugpy/bin/python",
    args = {"-m", "debugpy.adapter"}
}

-- Go
require("dap-go").setup()

dap.adapters.go = function(callback, config)
    local stdout = vim.loop.new_pipe(false)
    local handle
    local pid_or_err
    local port = 38697
    local opts = {
        stdio = {nil, stdout},
        args = {"dap", "-l", "127.0.0.1:" .. port},
        detached = true
    }
    handle, pid_or_err =
        vim.loop.spawn(
        "dlv",
        opts,
        function(code)
            stdout:close()
            handle:close()
            if code ~= 0 then
                print("dlv exited with code", code)
            end
        end
    )
    assert(handle, "Error running dlv: " .. tostring(pid_or_err))
    stdout:read_start(
        function(err, chunk)
            assert(not err, err)
            if chunk then
                vim.schedule(
                    function()
                        require("dap.repl").append(chunk)
                    end
                )
            end
        end
    )
    -- Wait for delve to start
    vim.defer_fn(
        function()
            callback({type = "server", host = "127.0.0.1", port = port})
        end,
        100
    )
end
-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
    {
        type = "go",
        name = "Debug",
        request = "launch",
        program = "${file}"
    },
    {
        type = "go",
        name = "Debug test", -- configuration for debugging test files
        request = "launch",
        mode = "test",
        program = "${file}"
    },
    -- works with go.mod packages and sub packages
    {
        type = "go",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
    }
}

-- Ui
require("dapui").setup(
    {
        icons = {expanded = "▾", collapsed = "▸"},
        mappings = {
            -- Use a table to apply multiple mappings
            expand = {"<CR>", "<2-LeftMouse>"},
            open = "o",
            remove = "d",
            edit = "e",
            repl = "r",
            toggle = "t"
        },
        -- Expand lines larger than the window
        -- Requires >= 0.7
        expand_lines = vim.fn.has("nvim-0.7"),
        sidebar = {
            -- You can change the order of elements in the sidebar
            elements = {
                -- Provide as ID strings or tables with "id" and "size" keys
                {
                    id = "scopes",
                    size = 0.25 -- Can be float or integer > 1
                },
                {id = "breakpoints", size = 0.25},
                {id = "stacks", size = 0.25},
                {id = "watches", size = 00.25}
            },
            size = 40,
            position = "left" -- Can be "left", "right", "top", "bottom"
        },
        tray = {
            elements = {"repl", "console"},
            size = 10,
            position = "bottom" -- Can be "left", "right", "top", "bottom"
        },
        floating = {
            max_height = nil, -- These can be integers or a float between 0 and 1.
            max_width = nil, -- Floats will be treated as percentage of your screen.
            border = "single", -- Border style. Can be "single", "double" or "rounded"
            mappings = {
                close = {"q", "<Esc>"}
            }
        },
        windows = {indent = 1},
        render = {
            max_type_length = nil -- Can be integer or nil.
        }
    }
)

-- Maps
vim.keymap.set("n", "<F5>", "<CMD>lua require('dap').continue()<CR>")
vim.keymap.set("n", "<F10>", "<CMD>lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<F11>", "<CMD>lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<F12>", "<CMD>lua require('dap').step_out()<CR>")
vim.keymap.set("n", "<leader>b", "<CMD>lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", "<CMD>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set(
    "n",
    "<leader>lp",
    "<CMD>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>"
)
vim.keymap.set("n", "<leader>dr", "<CMD>lua require('dap').repl.open()<CR>")
vim.keymap.set("n", "<leader>dl", "<CMD>lua require('dap').run_last()<CR>")

-- Python
vim.keymap.set("n", "<leader>dn", "<CMD>lua require('dap-python').test_method()<CR>")
vim.keymap.set("n", "<leader>df", "<CMD>lua require('dap').test_class()<CR>")
vim.keymap.set("n", "<leader>ds", "<CMD>lua require('dap').debug_selection()<CR>")

-- Go
vim.keymap.set("n", "<leader>gt", ":lua require('dap-go').debug_test()<CR>")
