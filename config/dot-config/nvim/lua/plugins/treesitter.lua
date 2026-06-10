return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        require('nvim-treesitter').setup({
            -- Go
            'go', 'gomod', 'gosum',
            -- Dart & Flutter
            'dart',
            -- Web
            'html', 'css', 'javascript', 'typescript',
            -- JSON & YAML
            'json', 'yaml',
            -- Bash
            'bash',
            -- Lua
            'lua',
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = {
                -- Go
                'go', 'mod', 'sum',
                -- Dart & Flutter
                'dart',
                -- Web
                'html', 'css', 'js', 'jsx', 'ts', 'tsx',
                -- JSON & YAML
                'json', 'yaml', 'yml',
                -- Bash
                'sh',
                -- Lua
                'lua',
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
}
