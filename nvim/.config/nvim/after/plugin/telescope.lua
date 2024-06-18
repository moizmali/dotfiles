local status, telescope = pcall(require, 'telescope.builtin')
if not status then
    print("telescope is not installed!")
    return
end

local keymap = vim.keymap

-- Telescope Keymaps
keymap.set('n', '<leader>ff', telescope.find_files, { desc = "Find Files" })
keymap.set('n', '<leader>fg', telescope.live_grep, { desc = "Find via Grep" })
keymap.set('n', '<leader>fb', telescope.buffers, { desc = "Find Buffers" })
keymap.set('n', '<leader>fd', telescope.diagnostics, { desc = "Find Diagnostics" })
keymap.set('n', '<leader>fk', telescope.keymaps, { desc = "Find Keymaps" })
keymap.set('n', '<leader>fh', telescope.help_tags, { desc = "Find Help Tags" })
