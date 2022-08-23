local ok, catppuccin = pcall(require, 'catppuccin')
if not ok then
    print('catppuccin not found')
    -- not loaded
end

catppuccin.setup({
    transparent_background = true,
    })
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
