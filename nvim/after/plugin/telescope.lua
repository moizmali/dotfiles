-- Telescope Keymaps
local status, telescope = pcall(require, 'telescope.builtin')
if not status then
    print("telescope is not installed!")
    return
end

vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fd', telescope.diagnostics, {})
vim.keymap.set('n', '<leader>fk', telescope.keymaps, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
