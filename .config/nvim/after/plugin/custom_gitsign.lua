local ok, gitsign = pcall(require, "gitsigns.nvim")
if not ok then
    -- not loaded
    print('gitsign not found')
    return
end

gitsign.setup({
    signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
    },
})
