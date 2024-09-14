repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().TargetUnitRoll = {
    "Admiral Of Lava",
    "Chief Of Ice",
    "Chief Of Light",
    "Strongest Swordsman",
    "Maxed Qi Master",
    "Purple Demon Berserker",
    "Shinobi Form 3"
}
getgenv().notRollUnitTarget = false
getgenv().UseSavePosition = false
getgenv().GemRollUnit = 2500
getgenv().Speed = {
    ["Speed"] = 2,
    ["Wave Active Speed"] = 12,
}
getgenv()["Black Screen"] = true
getgenv()["Auto Leave Infinite"] = {
    ["Auto Leave"] = true,
    ["Method"] = {
        ["Sell"] = true,
        ["Leave"] = false,
    },
    ["Wave"] = 46
}
getgenv().Auto_Equip = {
    ["Equip Best"] = true,
    ["Custom Equip"] = {
        ["Enabled"] = false,
        ["Units"] = {
            "Chief Of Lava",
        },
    },
}
getgenv().Portal = {
    ["Enabled"] = false, 
    ["Name Portal"] = "Demon Portal", -- support only 4 portal lunar and Demon and Ancient Dragon and Cursed Kingdom
    ["Auto Get Portal"] = false, ---- support only portal Ancient Dragon and Cursed Kingdom
    ["Rarity Portal"] = {
        ["Rare"] = true,
        ["Epic"] = true,
        ["Legendary"] = false,
        ["Mythical"] = false,
    },
    ["Unit"] = {
        ["Use All Unit"] = true,
        ["Custom Unit"] = {
            "Admiral Of Lava",
        }
    },
}
getgenv().Webhook =  {
    ["Webhook"] = true,
    ["Url"] = "https://ptb.discord.com/api/webhooks/1281338105269325948/Z7lG5rScJHGBUHvw7sqzh_qiZYVd1k3-dg1YXgHqN3ugPtxxBtJk2IhP214Yn50ULyBn",
    ["Roll Unit"] = true,
    ["Story/Infinite"] = true,
}
spawn(function()
        while wait(5) do
            pcall(function()
                    setfpscap(3)
                end)
        end
    end)
spawn(function()
        while wait() do
            pcall(function()
                    if game.PlaceId == 17490500437 then
                        game.Players.LocalPlayer:Kick("? vào đây ăn cặc à?")
                        game:GetService("TeleportService"):Teleport(17017769292)
                        wait(20)
                        game:Shutdown()
                    end
                end)
        end
    end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaCat-KaitunAD.lua"))()
