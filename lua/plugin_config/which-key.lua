local wk = require("which-key")
local fterm = require('FTerm')
local dap = require('dap')

wk.setup()

wk.add({
    { "<leader>f",   group = "file" }, -- file group
    { "<leader>ff",  "<cmd>Telescope find_files<cr>",                   desc = "Find File", },
    { "<leader>fb",  "<cmd>telescope file_browser<cr>",                 desc = "File Browser", },
    { "<leader>fr",  "<cmd>Telescope oldfiles<cr>",                     desc = "Open Recent", },

    { "<leader>t",   group = "toggle", },
    { "<leader>tt",  "<cmd>NvimTreeToggle<cr>",                         desc = "NeoTree", },

    { "<leader>g",   group = "git", },
    { "<leader>gn",  "<cmd>Neogit<cr>",                                 desc = "Neogit", },
    ---@diagnostic disable-next-line: missing-fields
    { "<leader>gl",  function() fterm.scratch({ cmd = 'lazygit' }) end, desc = "Lazy Git" },

    { "<leader>c",   group = "code" },
    { "<leader>cd",  group = "debug" },
    { "<leader>cdb", function() dap.toggle_breakpoint() end,            desc = "Breakpoint" },
    { "<leader>cdc", function() dap.continue() end,                     desc = "Continue" },

    { "<leader>cp",  group = "cpp" },
    { "<leader>cpb", "<cmd>CMakeBuild<cr>",                             desc = "Build" },
    { "<leader>cpd", "<cmd>CMakeDebug<cr>",                             desc = "Debug" },
    { "<leader>cpr", "<cmd>CMakeRun<cr>",                               desc = "Run" },

    { "<leader>l",   group = "lsp" },
    { "<leader>la",  function() vim.lsp.buf.code_action() end,          desc = "action" },
    { "<leader>lf",  function() vim.lsp.buf.format() end,               desc = "format" },

    { "<leader>v",   group = "variable" },
    { "<leader>vd",  function() vim.lsp.buf.definition() end,           desc = "definition" },
    { "<leader>vh",  function() vim.lsp.buf.references() end,           desc = "references" },
    { "<leader>vn",  function() vim.lsp.buf.rename() end,               desc = "rename" },
    { "<leader>vr",  function() vim.lsp.buf.hover() end,                desc = "hover" },
})
