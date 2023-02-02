local ok, catppuccin = pcall(require, 'catppuccin')
if not ok then
    -- not loaded
    print('catppuccin not found')
    return
end

catppuccin.setup({
    flavour = "macchiato",
    transparent_background = true,
    no_italic = false,
    no_bold = false,
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        functions = { "italic" },
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
    }
})
vim.cmd[[colorscheme catppuccin]]
