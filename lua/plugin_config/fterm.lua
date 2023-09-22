require'FTerm'.setup({
    border = 'single',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
    auto_close = true,
})

-- Toggle Floating Terminal <F12>
vim.keymap.set('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Kill Floating Terminal <F11>
vim.keymap.set('n', '<F11>', '<CMD>lua require("FTerm").exit()<CR>')
vim.keymap.set('t', '<F11>', '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>')
