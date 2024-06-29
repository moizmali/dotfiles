return {
    "f-person/git-blame.nvim",
    config = function()
        -- Add keymap to toggle gitblame window.
        vim.keymap.set('n', '<leader>gb', ":GitBlameToggle<CR>", { silent = true })

        -- Disable on startup.
        vim.cmd("GitBlameDisable")
    end
}
