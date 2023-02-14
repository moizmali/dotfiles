-- Check whether packer is installed
local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed!')
    return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Current Theme (temporary)
    use "EdenEast/nightfox.nvim" 

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

