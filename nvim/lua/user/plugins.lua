local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)
    use "wbthomason/packer.nvim"
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use "nvim-lua/plenary.nvim"
    use 'nvim-lualine/lualine.nvim'
    -- use "lukoshkin/trailing-whitespace"
    -- use "windwp/nvim-autopairs"
    use "lewis6991/gitsigns.nvim"
    use "numToStr/Comment.nvim"

    -- Color scheme
    use "folke/tokyonight.nvim"

    -- lsp and dap
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    use "mfussenegger/nvim-dap"
    use "j-hui/fidget.nvim"
    use "simrat39/rust-tools.nvim"

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
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- telescope
    use "nvim-telescope/telescope.nvim"

    -- toggleterm
    use "akinsho/toggleterm.nvim"

    if packer_bootstrap then
        require('packer').sync()
    end
end)

