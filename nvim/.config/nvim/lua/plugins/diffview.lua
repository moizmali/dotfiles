return {
    "sindrets/diffview.nvim",
    config = function()
        vim.keymap.set('n', '<leader>do', ":DiffviewOpen<CR>", { silent = true })
        vim.keymap.set('n', '<leader>dc', ":DiffviewClose<CR>", { silent = true })
    end,
}
