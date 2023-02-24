local opt = vim.opt

-- Enable line numbers
opt.number = true

-- Set tabs to be 4 spaces
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Disable line wrap
opt.wrap = false

-- Search will ignore case unless case is provided
opt.ignorecase = true
opt.smartcase = true

-- Universal clipboard
opt.clipboard:append("unnamedplus")

-- Add ruler
opt.colorcolumn = "120"

