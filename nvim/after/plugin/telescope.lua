local status, _ = pcall(require, 'telescope')
if not status then
    print('telescope plugin not installed!')
    return
end

require("telescope").load_extension("flutter")

