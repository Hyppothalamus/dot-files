local ok, barbecue = pcall(require, 'barbecue')
if not ok then
    -- not loaded
    print('barbecue not found')
    return
end

barbecue.setup({
    theme = "catppuccin"
})
