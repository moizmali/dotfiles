local lsp = vim.lsp

-- NOTE: You need to have the language servers installed on your system for this to work.
-- You can use Mason to install them.

-- Go
lsp.enable('gopls');

-- Dart & Flutter
lsp.enable('dartls');

-- Typescript & Javascript
lsp.enable('ts_ls');
