local ok, feline = pcall(require, 'feline')
local ctp_feline = require('catppuccin.groups.integrations.feline')
if not ok then
    -- not loaded
    print('lualine not found')
    return
end

feline.setup({
    components = ctp_feline.get(),
})

