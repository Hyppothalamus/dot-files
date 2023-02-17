local ok, bufferline = pcall(require, 'bufferline')
if not ok then
    -- not loaded
    print('bufferline not found')
    return
end

local macchiato = require("catppuccin.palettes").get_palette "macchiato"
bufferline.setup({
    options = {
        mode = 'tabs',
        diagnostic = 'nvim-lsp',
        separator_style = 'slant',
        color_icons = false,
        show_buffer_icons = false,
        show_buffer_default_icon = false,
        offsets = {
            {
                filetype = 'NvimTree',
                text = 'File Explorer',
                highlight = false,
                separator = false
            }
        },
    },
    highlights = require("catppuccin.groups.integrations.bufferline").get {
        custom = {
            all = {
                fill = {
                    bg = macchiato.base
                },
                separator = {
                    fg = macchiato.base
                },
                separator_selected = {
                    fg = macchiato.base
                },
                pick_visible = {
                    bg = macchiato.text,
                    fg = macchiato.text,
                },
            },
        }
    }
})
