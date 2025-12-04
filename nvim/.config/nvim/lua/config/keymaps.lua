-- Set leader
local leader = " "
vim.g.mapleader = leader

local keymap = vim.keymap

-- Center cursor when going down/up
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "G", "Gzz")

-- Write and quit the current buffer
keymap.set("n", "<leader>w", ":wa<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

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

-- Generate D2 diagrams
keymap.set("n", "<leader>d2", ":!d2 %<CR>", { desc = "Run d2 on current buffer" })

-- Run jq on highlighted text
keymap.set("v", "<leader>jq", ":!jq .<CR>", { desc = "Run jq on selected text" })
keymap.set("v", "<leader>jq", ":!jq -c .<CR>", { desc = "Run 'jq -c' on selected text" })
