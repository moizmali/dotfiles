local status, git_blame = pcall(require, 'gitblame')
if not status then
    print('git-blame plugin not installed!')
    return
end

vim.cmd("GitBlameDisable")

