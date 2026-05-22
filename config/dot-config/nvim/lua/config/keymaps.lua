-- Set leader
local leader = " "
vim.g.mapleader = leader

local keymap = vim.keymap

-- Center cursor when going down/up
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor" })
keymap.set("n", "G", "Gzz", { desc = "Go to end of file and center cursor" })

-- Write and quit the current buffer
keymap.set("n", "<leader>w", ":wa<CR>", { desc = "Write to all buffers" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit current buffer" })

-- Split vertically & horizontally
keymap.set("n", "<leader>sv", "<C-w>v<C-w>l", { desc = "Split Vertically" })
keymap.set("n", "<leader>sh", "<C-w>s<C-w>j", { desc = "Split Horizontally" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "Focus Right Window" })
keymap.set("n", "<leader>h", "<C-w>h", { desc = "Focus Left Window" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "Focus Bottom Window" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "Focus Top Window" })

-- Move highlited text up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected text down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected text up" })
