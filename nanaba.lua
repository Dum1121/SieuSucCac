local plr = game.Players.LocalPlayer
local myth,insertmyth = 0,{}
local secr,insertsecr = 0,{}
local sellshit = {}
 repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Dum1121/ReiPublic/main/Scripts/Extra/Smooth.lua"))()

 wait(2)
 setfpscap(10)
 local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(0.5)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
 for i,v in pairs(require(game:GetService("StarterPlayer").Modules.Gameplay.SettingsHandler).SettingsCache.AutoSellUnits) do
    if i ~= "Mythic" and v ~= true then
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Settings"):WaitForChild("SettingsEvent"):FireServer("Toggle",i)
        end
end
wait(0.1)
for i,v in pairs(require(game:GetService("StarterPlayer").Modules.Gameplay.SettingsHandler).SettingsCache.Misc) do
    if v ~= true then
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Settings"):WaitForChild("SettingsEvent"):FireServer("Toggle",i)
    end
end
for i,v in pairs(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.UnitWindowHandler)._Cache) do
    if v.UnitData.Rarity == "Rare" or v.UnitData.Rarity == "Epic" then
    table.insert(sellshit,i)
    end
end
wait(0.1)
if sellshit[1] then
    game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SellEvent"):FireServer(sellshit)
    end
if game.Players.LocalPlayer:GetAttribute("Gems") >= 499 then
repeat wait()
    pcall(function()
game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("SummonEvent"):FireServer("SummonTen","Special")
wait(0.1)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.RewardsScreen.Rewards.Main:GetChildren()) do
    if v:IsA("Frame") then
        if v.Glow:FindFirstChild("Rare") or v.Glow:FindFirstChild("Legendary") or v.Glow:FindFirstChild("Epic") then
        v:Destroy()
        end 
    end
end
    end)
until game.Players.LocalPlayer:GetAttribute("Gems") <= 499
end
for i,v in pairs(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.UnitWindowHandler)._Cache) do
    --print(v.UnitData.Name,v.UnitData.Rarity)
    if v.UnitData.Rarity == "Mythic" then
        myth = myth + 1
        table.insert(insertmyth,v.UnitData.Name)
    end
    if v.UnitData.Rarity == "Secret" then
        secr = secr + 1
        table.insert(insertsecr,v.UnitData.Name)
    end
    end
    if not insertsecr[1] then
        getgenv().nosex = true
        table.insert(insertsecr,"nil")
    end
    if not insertmyth[1] then
        table.insert(insertmyth,"nil")
    end
    if not getgenv().nosex then
        wait(math.random(1,5))
    local Embed = {
        ["title"] = "Notification",
        ["description"] = "**Username: ||".. game.Players.LocalPlayer.Name .. "||\
        UserId: ||" .. game.Players.LocalPlayer.UserId .. "||**\n\
        Level | Gems | Gold | TraitRerolls\
        "..plr:GetAttribute("Level").." | "..plr:GetAttribute("Gems").." | "..plr:GetAttribute("Gold").." | "..plr:GetAttribute("TraitRerolls").."\
        **[ Units ]**\n\
        **Mythical:\n Total Mythic:** ``".. tostring(myth) .."`` ```".. tostring(table.concat(insertmyth,", ")).."```\
        **Secret:\n Total Secret:** ``".. tostring(secr) .."`` ```".. tostring(table.concat(insertsecr,", ")).."```",
        ["type"] = "rich",
        ["color"] = tonumber(0x8AEEDC),
        thumbnail = {
            url = "https://media.discordapp.net/attachments/1137483144707199097/1139412932615225344/moon.png?ex=664e1b3c&is=664cc9bc&hm=c206bf56bf524438981efe6c69b699ed103f824b94ab97f9633b74933809eab1&"
        },
        footer = {
            text = "Rei hub.",
        },
    };
    (syn and syn.request or http_request or http.request) {
        Url = "https://ptb.discord.com/api/webhooks/1286776956389691442/JGyS5jS9ZPw2Hpr5XeBG_7IdkaYZC9YDnFfsfkx4o9_pxWB_xWiXnmUDydB0wrE4H-9O";
        Method = 'POST';
        Headers = {
        ['Content-Type'] = 'application/json';
        };
        Body = game:GetService'HttpService':JSONEncode({content = "[DumWasHere](https://guns.lol/Dum1121)\n# @everyone, Got Secret!"; embeds = {Embed}; });
        };
        print("done.")
end
    --[[print(table.concat(insertmyth,", "))
    print("Total Mythic: ".. myth)
    print("Total Secret: ".. secr)]]
