local status, _ = pcall(require, 'nightfox')
if not status then
    print('nightfox theme not installed!')
    return
end

vim.cmd("colorscheme carbonfox")
