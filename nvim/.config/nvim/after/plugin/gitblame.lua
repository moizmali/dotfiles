local status, _ = pcall(require, 'gitblame')
if not status then
    print('gitblame plugin not installed!')
    return
end

-- Add keymap to toggle gitblame window.
vim.keymap.set('n', '<leader>gb', ":GitBlameToggle<CR>", { silent = true })

-- Disable on startup.
vim.cmd("GitBlameDisable")
