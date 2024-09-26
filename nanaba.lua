getgenv().RedeemAllCode = true
getgenv().Config = {
    ["Webhook"] = {
        ["Mention"] = "",
        ["Unit Summoned"] = true,
        ["URL"] = "",
    },
    ["Misc"] = {
        ["Max Camera Zoom"] = 40,
    },
    ["Summoner"] = {
        ["Unselect if Summoned"] = true,
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
