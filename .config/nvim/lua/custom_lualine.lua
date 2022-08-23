local ok, lualine = pcall(require, 'lualine')
if not ok then
    print('lualine not found')
    -- not loaded
end

lualine.setup {
    options = {
        theme = 'auto'
    }
}
