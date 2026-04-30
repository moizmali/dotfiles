local lsp = vim.lsp

-- Lua
lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {},
})
lsp.enable('luals')

-- Go
lsp.config('go', {
    cmd = {'gopls'},
    filetypes = {'go'},
    root_markers = {'go.mod', 'go.sum'},
})
lsp.enable('go');

-- Dart & Flutter
lsp.config('dart', {
    cmd = {'dart', 'language-server'},
    filetypes = {'dart'},
    root_markers = {'pubspec.yaml', 'pubspec.lock'},
})
lsp.enable('dart');

-- Typescript & Javascript
lsp.config('typescript', {
    cmd = {'typescript-language-server', '--stdio'},
    filetypes = {'ts', 'tsx', 'js', 'jsx'},
    root_markers = {'package.json', 'package.lock'},
})
lsp.enable('typescript');
