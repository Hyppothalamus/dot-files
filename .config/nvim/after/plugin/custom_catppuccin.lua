local ok, catppuccin = pcall(require, 'catppuccin')
if not ok then
    -- not loaded
    print('catppuccin not found')
    return
end

catppuccin.setup({
    transparent_background = true,
    })
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
