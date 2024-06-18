local status, lsp_zero = pcall(require, "lsp-zero")
if not status then
    print("LSP Plugins not installed!")
    return
end

local lsp = lsp_zero.preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})

local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end

local lsp_config = require("lspconfig")
lsp_config["dartls"].setup({
    on_attach = on_attach,
    settings = {
        dart = {
            --	analysisExcludedFolders = {
                --		vim.fn.expand("$HOME/AppData/Local/Pub/Cache"),
                --		vim.fn.expand("$HOME/.punumToStr/Comment.nvimb-cache"),
                --		vim.fn.expand("/opt/homebrew/"),
                --		vim.fn.expand("$HOME/tools/flutter/"),
                --	},
                updateImportsOnRename = true,
                completeFunctionCalls = true,
                showTodos = true,
            },
        },
    })

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = false,
    float = true,
})
