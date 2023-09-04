-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    -- Common utilities
    use("nvim-lua/plenary.nvim")

    -- Icons
    use("nvim-tree/nvim-web-devicons")

    -- colorschemes
    -- (a) Tokyo-night
    use({
        "folke/tokyonight.nvim",
        config = function()
            require("configs.tokyonight")
        end,
    })
    -- (b) Papercolor
    use("NLKNguyen/papercolor-theme")
    -- (c) gruvBox
    use("ellisonleao/gruvbox.nvim")
    -- (d) Dracula
    use('Mofiqul/dracula.nvim')
    -- (e) oneDark
    use("joshdick/onedark.vim")
    -- (f) solorized
    use("shaunsingh/solarized.nvim")

    -- Statusline
    use({
        "nvim-lualine/lualine.nvim",
        event = "BufEnter",
        config = function()
            require("configs.lualine")
        end,
        requires = { "nvim-web-devicons" },
    })

    -- Auto pairs
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("configs.autopairs")
        end,
    })

    -- File manager
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    })

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- LSP
    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lsp")
        end,
    })

    use("onsails/lspkind-nvim")
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v<CurrentMajor>.*",
    })

    -- cmp: Autocomplete
    use({
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = function()
            require("configs.cmp")
        end,
    })

    use("hrsh7th/cmp-nvim-lsp")

    use({ "hrsh7th/cmp-path", after = "nvim-cmp" })

    use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })

    -- LSP diagnostics, code actions, and more via Lua.
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("configs.null-ls")
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })

    -- Mason: Portable package manager
    use({
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    })

    use({
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("configs.mason-lsp")
        end,
    })

    -- Terminal
    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("configs.toggleterminal")
        end,
    })

    -- Bufferline
    use({
        'akinsho/bufferline.nvim', 
        tag = "*", 
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("configs.bufferlines")
        end,
    })

    -- Markdown Preview
    --use({
    --    "iamcco/markdown-preview.nvim",
    --    run = function()
    --        vim.fn["mkdp#util#install"]()
    --    end,
    --})

    -- Background Transparent
    use({
        "xiyaowong/nvim-transparent",
        config = function()
            require("transparent").setup({
                --enable = true,
                extra_groups = {
                    "BufferLineTabClose",
                    "BufferlineBufferSelected",
                    "BufferLineFill",
                    "BufferLineBackground",
                    "BufferLineSeparator",
                    "BufferLineIndicatorSelected",
                },
                exclude_groups = {},
            })
        end,
    })

    -- Barbecue
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
            require("configs.barbecue")
        end,
    })

    -- Hop
    use({
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
    -- :h hop-config for configurations
            require('configs.hop')
        end,
    })

    -- Indent blankline
    use("lukas-reineke/indent-blankline.nvim")

    -- Colorizer
    use({
        'norcalli/nvim-colorizer.lua',
        config = function()
            require("configs.colorizer")
        end,
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("configs.treesitter")
        end,
    })
    --use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })
    
    -- noice
    --use({
    --    "folke/noice.nvim",
    --    config = function()
    --        require("configs.noice")
    --    end,
    --})

end)


