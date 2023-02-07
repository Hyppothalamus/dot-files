local ok, scrollbar = pcall(require, "scrollbar")
if not ok and vim.g.vscode then
    -- not loaded
    print('scrollbar not found')
    return
end

scrollbar.setup({
    handlers = {
        gitsigns = true,
    }
})
