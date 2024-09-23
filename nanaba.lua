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
                    setfpscap(10)
                end)
        end
    end)
getgenv().Configuration = true
getgenv().key = '539b6039-ae10-4e05-802a-952d34bbd714'
loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trash/Loader/main/Loader.lua'))()
