local ok, bufferline = pcall(require, 'bufferline')
if not ok then
    -- not loaded
    print('bufferline not found')
    return
end

local macchiato = require("catppuccin.palettes").get_palette "macchiato"
print(macchiato)
bufferline.setup({
    options = {
        mode = 'tabs',
        diagnostic = 'nvim-lsp'
    },
    highlights = require("catppuccin.groups.integrations.bufferline").get {
        custom = {
            all = {
                fill = {
                    bg = macchiato.base,
                    fg = macchiato.base
                }
            },
        }
    }
})
