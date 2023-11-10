Utils = {}
function Utils.Get_random_color(colors_local)
    local random_color = colors_local.text
    while random_color == colors_local.text do
        local keys = {}
        for k in pairs(colors_local) do
            table.insert(keys, k)
        end
        local index = math.random(#keys)
        random_color = colors_local[keys[index]]
    end
    return random_color
end

return Utils
