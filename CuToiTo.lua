    getgenv().rei = {
        ["Key"] = "eLtkmWQRZfghUoJDVRwjdeVmPcjiOXlP", -- bỏ key W-azure vào
        ["MainAccount"] = "Umut_Liam51",
        ["AccountForMainToFolow"] = false,
        ["MainAccountSetting"] = {
            Units = {"Legion Assassin","Legion Veteran"},
            ManuallyClaimBooth = false,
        },
        ["AltAccountSetting"] = {
            Trade = true,
            NotSendGem = true,
            TradeItems = {"Trait Crystal","Risky Dice"},
            GiveBackUnit=true,
            KickAfterDoneTrade= true,
        }
    }
    repeat wait() until game:IsLoaded()
    repeat wait() until game:FindFirstChild("ReplicatedFirst")
    if game.PlaceId == 17490500437 then
    local plr = game.Players.LocalPlayer
    --game:GetService("TeleportService"):Teleport(17017769292)
    function checkacc()
        if plr.Name == tostring(getgenv().rei.MainAccount) then
            return true
        else
            return false
            end
        end

        script_key = getgenv().rei.Key 
        getgenv().SelectedPlayer = tostring(getgenv().rei.MainAccount)
        getgenv().MainAccount = checkacc()
        getgenv().AccountForMainToFolow = getgenv().rei.AccountForMainToFolow
        getgenv().EnableAccountForMainFolow = getgenv().rei.EnableAccountForMainFolow
        getgenv().MainAccountSetting = getgenv().rei.MainAccountSetting
        getgenv().AltAccountSetting = getgenv().rei.AltAccountSetting
    if game.PlaceId == 17490500437 then repeat wait(3) until game.Players:FindFirstChild(getgenv().rei.MainAccount) end
    game.NetworkClient.ChildRemoved:Connect(function()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end)
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            game:Shutdown()
        end
    end)

        spawn(function()
            if game.Players.LocalPlayer.Name == getgenv().rei.MainAccount then
            while wait(0.2) do
                pcall(function()
                    function clickGui(a)
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,true,a,1)
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,false,a,1)
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.UI.NotificationsHolder:FindFirstChild("Notification") then
                    clickGui(game:GetService("Players").LocalPlayer.PlayerGui.UI.NotificationsHolder.Notification.PromptWindow.Responses.ResponseYes)
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.Visible and game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.Lock.TextLabel.Text == "Ready" then
                    clickGui(game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.Lock)
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.PromptGui:FindFirstChild("PromptDefault") then
                    clickGui(game:GetService("Players").LocalPlayer.PlayerGui.PromptGui.PromptDefault.Holder.Options.Back)
                    end
            end) 
            end
            end
        end)
    --[[spawn(function()
    while wait() do
        if game.Players.LocalPlayer.Name == getgenv().rei.MainAccount and game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.TradeLimitHUD.TextLabel.Text == "🕙 Limits -  11 Trades,  5 Booth Purchases,  0 Booth Sales" then
            wait(5)
            game:Shutdown()
            end
        end
    end)]]

    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3051457467c11f25288cfe2de3708373.lua"))()
end
