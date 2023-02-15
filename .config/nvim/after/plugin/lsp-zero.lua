local ok, lsp_zero = pcall(require, "lsp-zero")
if not ok then
    print("LSP Plugins not installed!")
    return
end

local lsp = lsp_zero.preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.setup()

