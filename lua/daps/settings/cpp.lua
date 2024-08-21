local dap = require('dap')
dap.configurations.cpp = {
    -- OLD
    -- name = 'Launch',
    -- type = 'lldb',
    -- request = 'launch',
    -- program = function()
    --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    -- end,
    -- cwd = '${workspaceFolder}',
    -- stopOnEntry = false,
    -- args = {}

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,

    -- New :)
    -- name = "Launch",
    -- type = "cpptools",
    -- request = "launch",
    -- program = '${workspaceFolder}/main',
    -- cwd = '${workspaceFolder}',
    -- stopOnEntry = true,
    -- args = {},
    -- runInTerminal = false,
    {
        name = "Debug",
        type = "lldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
    },
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
