for i,v in next, workspace:GetDescendants() do
    pcall(function()
        v.Transparency = 1
    end)
end
for i,v in next, getnilinstances() do
    pcall(function()
        v.Transparency = 1
        for i1,v1 in next, v:GetDescendants() do
            v1.Transparency = 1
        end
    end)
end
a = workspace
a.DescendantAdded:Connect(function(v)
    pcall(function()
        v.Transparency = 1
    end)
end)
spawn(function()
        while wait(5) do
            pcall(function()
                    setfpscap(3)
                end)
        end
    end)
getgenv().Config = {
    ["Summoner"] = {
        ["Unselect if Summoned"] = true,
        ["Standard Unit"] = {
            ["Roku (Dark)"] = true
        },
        ["Auto Summon Standard"] = true,
        ["Delete Rarity"] = {
            ["Epic"] = true,
            ["Rare"] = true
        }
    },
    ["Webhook"] = {
        ["Mention"] = "",
        ["Unit Summoned"] = true,
        ["URL"] = ""
    },
    ["Macros"] = {
        ["No Ignore Sell Timing"] = true
    }
}
loadstring(game:HttpGet("https://nousigi.com/loader.lua"))()
