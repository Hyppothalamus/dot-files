local ok, catppuccin = pcall(require, 'catppuccin')
if not ok then
    -- not loaded
    print('catppuccin not found')
    return
end

catppuccin.setup({
    transparent_background = true,
    })
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
