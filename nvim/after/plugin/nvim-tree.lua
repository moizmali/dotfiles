local status, tree = pcall(require, "nvim-tree")
if not status then
    print("nvim-tree plugin not installed!")
    return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
tree.setup()

