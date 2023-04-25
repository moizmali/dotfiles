local ok, _ = pcall(require, 'gitblame')
if not ok then
    print('git-blame plugin not installed!')
    return
end

vim.cmd("GitBlameDisable")

