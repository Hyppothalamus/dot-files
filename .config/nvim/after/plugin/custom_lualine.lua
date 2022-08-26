local ok, lualine = pcall(require, 'lualine')
if not ok then
    -- not loaded
    print('lualine not found')
    return
end

lualine.setup {
    options = {
        insons_enable = true,
        theme = 'auto',
        globalstatus = true,
    }
}
