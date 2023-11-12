--===========================
--Bootstrap lazy.nvim
--===========================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


--==========================
-- Load Plugins
--==========================
local opts = {
    ui = {
        border = "rounded"
    }
}

require("lazy").setup({
--==========================
-- Work Flow
--==========================
    -- Which-key (Make it like emacs)
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                window = {
                    border      = "rounded",
                    position    = "bottom",
                    margin      = { 1, 0, 1, 0 },
                    padding     = { 2, 2, 2, 2 },
                    winblend    = 0,
                },
            })
        end,
    },

    -- Formatter
    "jose-elias-alvarez/null-ls.nvim",

    -- Telescope
    "nvim-telescope/telescope.nvim", tag = '0.1.1',

    -- Telescope requires Popup
    "nvim-lua/popup.nvim",

    -- Telescope Requires Plenary
    "nvim-lua/plenary.nvim",

    --Telescope Media Files
    "nvim-telescope/telescope-media-files.nvim",

    --Telescope Browser
    "nvim-telescope/telescope-file-browser.nvim",

    -- Nvim-tree
    "nvim-tree/nvim-tree.lua",

    -- Devicons support (nvim-tree)
    "nvim-tree/nvim-web-devicons",

    -- Org Mode Support
    {
    "nvim-orgmode/orgmode",
    config = function()
       require('orgmode').setup{}
    end
    },


    -- Floating Terminal
    "numToStr/FTerm.nvim",

    -- Calendar
    "mattn/calendar-vim",

    -- Vimwiki
    "vimwiki/vimwiki",

    --========================
    -- Theme
    --========================
    -- Tokyonight theme
    "folke/tokyonight.nvim",

    -- Catppuccin theme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000  },

    -- Lua Bar
    "nvim-lualine/lualine.nvim",

    -- Start page
    "startup-nvim/startup.nvim",
    --=======================
    -- Programming / LSP
    --=======================
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
    },
    -- Extra Treesitter Objects
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
    },
    -- Mason (install lsp)
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- LSP for nvim
    "neovim/nvim-lspconfig",

    -- Cmp-nvim
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "onsails/lspkind.nvim",




    -- Snippet Support
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    -- Useful status updates for LSP
    "j-hui/fidget.nvim",

    --Neovim Lua Language support
    "folke/neodev.nvim",

    -- Dap Debugging
    "mfussenegger/nvim-dap",

    -- Dap Ui
    "rcarriga/nvim-dap-ui",

    -- Dap Completion TODO config
    "rcarriga/cmp-dap",

    -- Dap Virtual Text TODO config
    "theHamsta/nvim-dap-virtual-text",

    -- Telescope Dap TODO config
    "nvim-telescope/telescope-dap.nvim",

    -- CMake Support
    "Civitasv/cmake-tools.nvim",

    -- Yuck support (eww)
    "elkowar/yuck.vim",

    -- Tabs
    {'romgrk/barbar.nvim',
        dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
          -- lazy.nvim will automatically call setup for you.
          --   put your options here, anything missing will use the default:
          animation = true,
          insert_at_start = true,
          -- …etc.
        },
    },

    -- Doxygen comments
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        -- Uncomment next line if you want to follow only stable versions
        -- version = "*"
    },

    "simrat39/rust-tools.nvim",


    --======================
    -- Git
    --======================

    -- git support
    {
      "NeogitOrg/neogit",
      dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "nvim-telescope/telescope.nvim", -- optional
        "sindrets/diffview.nvim",        -- optional
        "ibhagwan/fzf-lua",              -- optional
      },
      config = true
    },

    -- Git sings
    "lewis6991/gitsigns.nvim",



    --======================
    -- Normal Mode
    --======================

    --Repeat
    "tpope/vim-repeat",

    -- Lightspeed ('S/s' like f for multi line)
    "ggandor/lightspeed.nvim",

    --=======================
    --  Visual Mode
    --=======================

    -- Use 'gc' to comment lines
    "numToStr/Comment.nvim",

    --======================
    -- Insert Mode
    --======================
}, opts)
