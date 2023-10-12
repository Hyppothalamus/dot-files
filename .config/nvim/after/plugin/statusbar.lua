local ok, feline = pcall(require, 'feline')
local ctp_feline = require('catppuccin.groups.integrations.feline')
if not ok then
    -- not loaded
    print('feline not found')
    return
end

local components = ctp_feline.get()

-- table.insert(components.active[3], {
--     provider = function()
--
--     end
-- })

feline.setup({
    components = components,
    force_inactive = {
        filetypes = {
            "NvimTree",
        }
    }
})
