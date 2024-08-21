local dap = require('dap')
dap.adapters.cpptools = {
    type = 'executable',
    name = "cpptools",
    command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
    args = {},
    attach = {
        pidProperty = "processId",
        pidSelect = "ask"
    },
}
