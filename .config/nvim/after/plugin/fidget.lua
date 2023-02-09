local ok, fidget = pcall(require, 'fidget')
if not ok then
    -- not loaded
    print('fidget not found')
    return
end

fidget.setup({
    window = {
        blend = 0,
    },
})
