local v1 = false
local v2 = false
local v5 = game:GetService("ReplicatedStorage")
local v9 = false
local v12 = game:GetService("ContextActionService")
local v13 = false
local v18 = require(game.ReplicatedStorage.CooldownModule)
local function mobilebuttonfunction_1()
    local v21 = v9
    if not v21 then
        v21 = v13
        if v21 then
            local v22 = game
            local v24 = v22.Players.LocalPlayer
            v21 = v24.Character
            local v58 = game
            local v60 = v58.Players.LocalPlayer
            v21 = v60.Character
            local v25 = v21:FindFirstChild("Humanoid")
            if not v25 then
                local v26 = game
                local v27 = v26.Players
                v58 = v27.LocalPlayer
                local v28 = v58.Character
                v60 = v28.Humanoid
                v25 = v60.Health
                v60 = 0
                if v25 > v60 then
                    v60 = game
                    v25 = v60.Workspace
                    v28 = "RedactedAmbiance"
                    local v29 = v25:FindFirstChild(v28)
                    if v29 then
                        v29 = true
                        v13 = v29
                        local v30 = game
                        v60 = v30.Players
                        v29 = v60.LocalPlayer
                        v60 = nil
                        local v62 = 1000
                        v58 = nil
                        v27 = pairs
                        local v31 = game
                        v26 = v31.Players
                        local v32, v33, v31 = v27(v26:GetPlayers())
                        for v47, v35 in v32, v33, v31 do
                            local v34 = v35.Character
                            if not v34 then
                                v34 = v29.Character
                                local v36 = v35.Character
                                if v34 ~= v36 then
                                    v34 = v35.Character
                                    local v38 = v34:FindFirstChild("Humanoid")
                                    if not v38 then
                                        v38 = v35.Character
                                        local v40 = v38:FindFirstChild("isInArena")
                                        if not v40 then
                                            v36 = v35.Character.isInArena
                                            v40 = v36.Value
                                            v40 = v35.Character
                                            local v42 = v40:FindFirstChild("HumanoidRootPart")
                                            if not v42 then
                                                local v43 = v35.Character
                                                v36 = v43.Humanoid
                                                v42 = v36.Health
                                                v36 = 0
                                                if v42 > v36 then
                                                    v43 = v35.Character.HumanoidRootPart.Position
                                                    local v64 = v29.Character.HumanoidRootPart
                                                    local v65 = v64.Position
                                                    v36 = v43 - v65
                                                    v42 = v36.Magnitude
                                                    if v30 > v42 then
                                                        v65 = v35.Character
                                                        v43 = v65.HumanoidRootPart
                                                        v36 = v43.Position
                                                        v64 = v29.Character
                                                        v65 = v64.HumanoidRootPart
                                                        v43 = v65.Position
                                                        v42 = v36 - v43
                                                        v30 = v42.Magnitude
                                                        v24 = v35.Name
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if not v60 then
                            v32 = pairs
                            v31 = game
                            v33 = v31.Workspace
                            local v48, v49, v31 = v32(v33:GetChildren())
                            for v47, v35 in v48, v49, v31 do
                                v36 = v35.Name
                                v43 = 1
                                v45 = 5
                                v42 = string.sub
                                local v50 = v42(v36, v43, v45)
                                local v52 = v35:FindFirstChild("Target")
                                if not v52 then
                                    v52 = v35.Target.Value
                                    if v52 == v24 then
                                        v22 = true
                                    end
                                end
                            end
                        end
                        if not v60 then
                            if v58 then
                                v49 = v5
                                v48 = v49.Duplicate
                                v31 = true
                                v48:FireServer(v31)
                            else
                                v49 = v5
                                v49.Duplicate:FireServer()
                            end
                            v49 = v18
                            v49 = 15
                            v53 = game
                            v52 = v53.Players
                            v35 = v52.LocalPlayer
                            v47 = v35.PlayerGui
                            v49.Cooldown(v49, v47.CD)
                            v13 = false
                            return 
                        end
                    end
                end
            end
        end
    end
end
game:GetService("UserInputService").InputBegan:Connect(function(p1, p2)
    if p2 then
        local v67 = p1.KeyCode
        if v67 == Enum.KeyCode.ButtonL2 then
            v67 = mobilebuttonfunction_1
            v67()
        end
    end
end)
local v74 = v12:BindAction("Ebutton", mobilebuttonfunction_1, true, "e")
v12:SetPosition("Ebutton", UDim2.new(0.5, -25, -0.25, -25))
v12:SetImage("Ebutton", "rbxassetid://6430911114")
script.Parent.Equipped:Connect(function()
    slaptrack = script.Parent.Parent.Humanoid:LoadAnimation(v5.Slap)
    v9 = true
end)
script.Parent.Unequipped:Connect(function()
    v9 = false
end)
script.Parent.Activated:Connect(function()
    local v100 = v2
    if v100 then
        v100 = true
        v2 = v100
        v100 = slaptrack
        v100:Play()
        wait(0.4)
        v2 = false
    end
end)
local v106 = script.Parent:WaitForChild("Glove")
v106.Touched:Connect(function(p3)
    local v108 = p3.Parent
    local v109 = script
    local v110 = v109.Parent
    local v111 = v110.Parent
    if v108 ~= v111 then
        v108 = p3.Parent
        v110 = "Humanoid"
        if not v108:FindFirstChild(v110) then
            local v114 = p3:IsA("BasePart")
            if not v114 then
                v114 = v1
                if v114 then
                    v114 = v2
                    if not v114 then
                        v111 = p3.Parent
                        v109 = "isInArena"
                        v114 = v111:FindFirstChild(v109).Value
                        v114 = true
                        v1 = v114
                        v114 = v5.b
                        v114:FireServer(p3)
                        wait(0.6)
                        v1 = false
                    end
                end
            end
        end
    end
end)
local v123 = v12:GetButton("Ebutton")
if not v123 then
    v106 = UDim2.new
    v123.Size = v106(0.4, 0, 0.4, 0)
end
