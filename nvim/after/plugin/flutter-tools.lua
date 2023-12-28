local status, _ = pcall(require, 'flutter-tools')
if not status then
    print('flutter-tools plugin not installed!')
    return
end

require("flutter-tools").setup {} -- use defaults

