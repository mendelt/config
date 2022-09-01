vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use "wbthomason/packer.nvim"
    


    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

