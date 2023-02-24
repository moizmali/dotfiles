local leader = " "
vim.g.mapleader = leader

local keymap = vim.keymap

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
keymap.set("n", "<leader>w", vim.cmd.wa, {})
keymap.set("n", "<leader>q", vim.cmd.q, {})

-- Highlight and select all
keymap.set("n", "<C-a>", "ggVG")

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

-- Telescope Keymaps
local status, telescope = pcall(require, 'telescope.builtin')
if not status then
    print("Telescope is not installed!")
else
    keymap.set('n', '<leader>ff', telescope.find_files, {})
    keymap.set('n', '<leader>gf', telescope.git_files, {})
    keymap.set('n', '<leader>fg', telescope.live_grep, {})
    keymap.set('n', '<leader>fb', telescope.buffers, {})
    keymap.set('n', '<leader>fk', telescope.keymaps, {})
    keymap.set('n', '<leader>fh', telescope.help_tags, {})
end

-- TODO comments with Telescope
local status, todo = pcall(require, 'todo-comments')
if not status then
    print("todo-comments plugin is not installed!")
else
    keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", {})
end

local status, term = pcall(require, 'toggleterm')
if not status then
    print("toggleterm plugin is not installed!")
else
    keymap.set("n", "<leader>`", ":ToggleTerm<CR>", {})
end

