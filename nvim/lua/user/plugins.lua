vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim"
    use "savq/melange"
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- File explorer
    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
end)

