getgenv().Config = {
    ["AutoSave"] = true,
    ["Webhook"] = {
        ["Minimum Chance"] = 1000000,
        ["Pet Rolled"] = true,
        ["URL"] = "https://ptb.discord.com/api/webhooks/1286776956389691442/JGyS5jS9ZPw2Hpr5XeBG_7IdkaYZC9YDnFfsfkx4o9_pxWB_xWiXnmUDydB0wrE4H-9O"
    },
    ["Consumer"] = {
        ["Potion"] = {
            ["Enable"] = true,
            ["Potion"] = {
                ["Coins Potion II"] = true,
                ["Lucky Potion IV"] = true,
                ["Lucky Potion V"] = true,
                ["Lucky Potion II"] = true,
                ["Instant Luck Potion I"] = true,
                ["Coins Potion III"] = true,
                ["Coins Potion V"] = true,
                ["Instant Luck Potion II"] = true,
                ["Lucky Potion I"] = true,
                ["Lucky Potion III"] = true,
                ["Coins Potion IV"] = true,
                ["Rainbow Dice Potion"] = true,
                ["Instant Luck Potion III"] = true,
                ["Coins Potion I"] = true
            }
        },
        ["Fruit"] = {
            ["Enable"] = true,
            ["Fruit"] = {
                ["Watermelon"] = true,
                ["Pineapple"] = true,
                ["Rainbow"] = true,
                ["Apple"] = true,
                ["Orange"] = true,
                ["Banana"] = true
            }
        }
    },
    ["Upgrader"] = {
        ["Enable"] = true,
        ["Keep Amount"] = 100
    },
    ["Crafter"] = {
        ["Enable"] = true
    },
    ["Performance"] = {
        ["Boost FPS"] = true,
        ["Black Screen"] = true
    },
    ["Resource"] = {
        ["Auto Hidden Gift"] = true,
        ["Auto Farm"] = true,
        ["Auto Dig"] = true
    },
    ["Buyer"] = {
        ["Potion Vending"] = true
    },
    ["Interface"] = {
        ["Auto Upgrade"] = true,
        ["Auto Roll"] = true
    }
}
loadstring(game:HttpGet("https://nousigi.com/loader.lua"))()
