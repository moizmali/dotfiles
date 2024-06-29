return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(_, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        -- Dart language server comes built-in with the language.
        -- Therefore it is not managed by Mason and works out of
        -- the box.
        require('lspconfig').dartls.setup{}

        -- Language server installation managed by Mason.
        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {'gopls', 'lua_ls', 'html', 'tsserver'},
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        })

    end
}
