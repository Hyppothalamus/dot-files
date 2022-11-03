local ok, startup = pcall(require, "startup")
if not ok then
    -- not loaded
    print('startup not found')
    return
end

startup.setup()
