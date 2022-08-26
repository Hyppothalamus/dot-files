local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then
    -- not found
    print('toggleterm not found')
    return
end

toggleterm.setup{
    open_mapping = [[<c-\>]],
    direction = 'horizontal',
    close_on_exit = true,
}
