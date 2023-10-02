local leader = " "
vim.g.mapleader = leader

local keymap = vim.keymap

keymap.set("n", "<leader>w", vim.cmd.wa, {})
keymap.set("n", "<leader>q", vim.cmd.q, {})

-- Highlight and select all
-- keymap.set("n", "<C-a>", "ggVG")

keymap.set("n", "gg", "ggzz")
keymap.set("n", "j", "jzz")
keymap.set("n", "k", "kzz")
keymap.set("n", "<C-f>", "<C-f>zz")
keymap.set("n", "<C-b>", "<C-b>zz")
keymap.set("n", "G", "Gzz")

-- Split vertically & horizontally
keymap.set("n", "<leader>sv", "<C-w>v<C-w>l")
keymap.set("n", "<leader>sh", "<C-w>s<C-w>j")
keymap.set("n", "<leader>l", "<C-w>l")
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader><left>", "<C-w><")
keymap.set("n", "<leader><right>", "<C-w>>")

-- Move highlited text up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Format highlighted JSON using the jq command
keymap.set("v", "<leader>jq", ":'<,'>!jq<CR>")

-- Telescope Keymaps
local status, telescope = pcall(require, 'telescope.builtin')
if not status then
    print("Telescope is not installed!")
else
    keymap.set('n', '<leader>ff', telescope.find_files, {})
    keymap.set('n', '<leader>fg', telescope.live_grep, {})
    keymap.set('n', '<leader>fb', telescope.buffers, {})
    keymap.set('n', '<leader>fd', telescope.diagnostics, {})
    keymap.set('n', '<leader>fk', telescope.keymaps, {})
    keymap.set('n', '<leader>fh', telescope.help_tags, {})
end

status, _ = pcall(require, 'nvim-tree')
if not status then
    print('nvim-tree plugin not installed!')
else
    keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
end

status, _ = pcall(require, 'diffview')
if not status then
    print('diffview plugin not installed!')
else
    keymap.set('n', '<leader>do', ":DiffviewOpen<CR>", { silent = true })
    keymap.set('n', '<leader>dc', ":DiffviewClose<CR>", { silent = true })
end

status, _ = pcall(require, 'gitblame')
if not status then
    print('git-blame plugin not installed!')
else
    keymap.set('n', '<leader>gb', ":GitBlameToggle<CR>", { silent = true })
end

-- Show diagnostics
keymap.set('n', '<leader>g', ':lua vim.diagnostics.open_float()<CR>', {})
