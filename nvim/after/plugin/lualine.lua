local status, lualine = pcall(require, 'lualine')
if not status then
    print('lualine plugin is not installed!')
    return
end

lualine.setup()

