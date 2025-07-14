return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local vim = vim

        -- Disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Set termguicolors to enable highlight groups
        vim.opt.termguicolors = true

        require('nvim-tree').setup({
            git = {
                ignore = false,
            },
        })

        -- Add keymap to toggle file tree
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
        vim.keymap.set("n", "<leader>ft", ":NvimTreeFindFile<CR>", { silent = true })
    end,
}
