vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim"
    use "savq/melange"
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

end)

