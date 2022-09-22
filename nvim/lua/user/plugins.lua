vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim"
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use "nvim-lua/plenary.nvim"
    use 'nvim-lualine/lualine.nvim'
    use "lukoshkin/trailing-whitespace"

    -- Color scheme
    use "savq/melange"

    -- lsp
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    -- File explorer
    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }

    -- cmp plugins
    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use "hrsh7th/vim-vsnip"
    use "saecki/crates.nvim"

    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

    -- toggleterm
    use "akinsho/toggleterm.nvim"
end)

