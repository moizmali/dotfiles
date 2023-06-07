local status, _ = pcall(require, 'gitblame')
if not status then
    print('git-blame plugin not installed!')
    return
end

vim.cmd("GitBlameDisable")

