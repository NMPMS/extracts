local chance = 1.0

--[[
    0 = 0.00,
    25 = 0.25,
    50 = 0.50,
    75 = 0.75,
    100 = 1.00
]]

CreateThread(function()
    while true do
        Wait(100)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            local chance_result = math.random()
            if chance_result < chance then 
                Wait(600)
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
                SetPedToRagdoll(ped, 5000, 1, 2)
            else
                Wait(1500)
            end
        end
    end
end)