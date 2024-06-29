return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {"lua", "vim", "vimdoc", "javascript", "html", "typescript", "go", "yaml", "json", "bash", "dart" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }
