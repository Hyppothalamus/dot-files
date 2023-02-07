local ok, gitsign = pcall(require, "gitsign")
if not ok then
    -- not loaded
    print('gitsign not found')
    return
end

gitsign.setup()
