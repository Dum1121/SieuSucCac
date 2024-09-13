getgenv().rei = {
    ["Key"] = getgenv().Key, -- bỏ key W-azure vào
    ["MainAccount"] = "clonethanhhau7",
    ["AccountForMainToFolow"] = false,
    ["MainAccountSetting"] = {
        Units = {"Legion Assassin","Legion Veteran","Blazing Soulmaster","Ace Marksman"},
        ManuallyClaimBooth = false,
    },
    ["AltAccountSetting"] = {
        Trade = true,
        NotSendGem = false,
        TradeItems = {"Trait Crystal","Risky Dice","Frost Bind"},
        GiveBackUnit=true,
        KickAfterDoneTrade= false,
    },
	JobJoin = false,
	JobId = "978b9309-3052-4d3f-b1e0-a3f9f000d550"
}
repeat wait() until game:IsLoaded()
spawn(function()
while wait() do
--if game.Players.LocalPlayer.Name == getgenv().rei.MainAccount then
if game.PlaceId == 17017769292 or game.PlaceId == 17764698696 then
				if getgenv().rei.JobJoin then
game:GetService("TeleportService"):TeleportToPlaceInstance(17490500437,tostring(getgenv().rei.JobId),game.Players.LocalPlayer)
				end
end
end
--end
end)
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
if game.PlaceId == 17490500437 or not getgenv().rei.JobJoin then repeat wait() until game.Players:FindFirstChild(getgenv().rei.MainAccount) end
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
        while wait() do
            pcall(function()
                function clickGui(a)
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,true,a,1)
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,false,a,1)
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.UI.NotificationsHolder:FindFirstChild("Notification") then
                clickGui(game:GetService("Players").LocalPlayer.PlayerGui.UI.NotificationsHolder.Notification.PromptWindow.Responses.ResponseYes)
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.Visible then
                if game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.Lock.TextLabel.Text == "Trade" or game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.Lock.TextLabel.Text == "Ready" then
									if game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.ReceiveContents.Locked.Enabled then
                clickGui(game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.Lock)
									end
                end
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.PromptGui:FindFirstChild("PromptDefault") and game:GetService("Players").LocalPlayer.PlayerGui.UI.TradeTransactionUI.ReceiveContents.Locked.Enabled then
                clickGui(game:GetService("Players").LocalPlayer.PlayerGui.PromptGui.PromptDefault.Holder.Options.Back)
                end
        end) 
        end
        end
    end)
--[[spawn(function()
while wait() do
    if game.Players.LocalPlayer.Name ~= getgenv().rei.MainAccount and game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.TradeLimitHUD.TextLabel.Text == "🕙 Limits -  14 Trades,  5 Booth Purchases,  4 Booth Sales" then
        wait(2)
        game:Shutdown()
        end
    end
end)]]
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(0.5)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3051457467c11f25288cfe2de3708373.lua"))()
end
