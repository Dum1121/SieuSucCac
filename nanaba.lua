spawn(function()
        while wait(5) do
            pcall(function()
                    setfpscap(3)
                end)
        end
    end)
getgenv().RedeemAllCode = true
getgenv().Config = {
    ["Webhook"] = {
        ["Mention"] = "",
        ["Unit Summoned"] = true,
        ["URL"] = "",
    },
    ["Summoner"] = {
        ["Unselect if Summoned"] = true,
        ["Auto Summon Standard"] = {
            ["Roku (Dark)"] = true,
        },
        ["Auto Summon Standard"] = true,
        ["Delete Rarity"] = {
            ["Epic"] = true,
            ["Legendary"] = false,
            ["Rare"] = true,
        },
    }
}
loadstring(game:HttpGet("https://nousigi.com/loader.lua"))()
