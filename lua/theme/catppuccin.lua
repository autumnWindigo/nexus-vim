require("catppuccin").setup({
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        mason = true,
        neogit = true,
        which_key = true,
    }
})

vim.cmd.colorscheme "catppuccin"
