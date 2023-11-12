local wk = require("which-key")
local fterm = require('FTerm')
local dap = require('dap')


wk.register({
    f = {
        name = "file", -- optional group name
        f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, -- additional options for creating the keymap
        b = { "<cmd>Telescope file_browser<cr>", "Browser"},
    },
    t = {
        name = "toggle",
        t = { "<cmd>NvimTreeToggle<cr>", "Nvim-tree" },
        g = { "<cmd>Neogit<cr>", "Neogit" },
    },
    [";"] = {
        name = "floaterm",
        b = { function() fterm.scratch({cmd = 'bacon'}) end, "bacon" } ,
        g = { function() fterm.scratch({cmd = 'lazygit'}) end, "lazygit" },
        t = { function() fterm.scratch({cmd = 'btop'}) end, "btop"},
    },
    c = {
        name = "code",
        d = {
            name = "debug",
            b = { function() dap.toggle_breakpoint() end, "Breakpoint" },
            c = { function() dap.continue() end, "Continue" },
        },
        p = {
            name = "cpp",
            b = { "<cmd>CMakeBuild<cr>", "Build" },
            r = { "<cmd>CMakeRun<cr>", "Run" },
            d = { "<cmd>CMakeDebug<cr>", "Debug"},
            ---@diagnostic disable-next-line: missing-fields
            c = { function() fterm.scratch({cmd = 'clang-tidy --config-file=.clang-tidy -p build ' .. vim.fn.expand('%')}) end, "Check"},
            f = { "<cmd>!clang-format " .. vim.fn.expand('%') .. " --style=google --sort-includes -i<cr><cr>", "Format" },
        },
    },
    b = {
        name = "buffers",
        i = { "<cmd>Telescope buffers<cr>", "interactive" },
    },
    l = {
        name = "lsp",
        a = { function() vim.lsp.buf.code_action() end, "action"},
        f = { function() vim.lsp.buf.format() end, "format"},
    },
    v = {
        name = "variable",
        d = { function() vim.lsp.buf.definition() end, "definition"},
        r = { function() vim.lsp.buf.references() end, "references"},
        n = { function() vim.lsp.buf.rename() end, "rename" },
        h = { function() vim.lsp.buf.hover() end, "hover" },
    },
}, { prefix = "<leader>" })
