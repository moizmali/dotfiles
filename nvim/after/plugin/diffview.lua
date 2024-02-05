local status, _ = pcall(require, 'diffview')
if not status then
    print('diffview plugin not installed!')
    return
end

vim.keymap.set('n', '<leader>do', ":DiffviewOpen<CR>", { silent = true })
vim.keymap.set('n', '<leader>dc', ":DiffviewClose<CR>", { silent = true })
