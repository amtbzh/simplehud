-- AMTBZH
-- Simple HUD 
-- FOR FREE
-- You don't need to buy this 3$ or more OMG

-- Let's loooooop
Citizen.CreateThread(function()
    while true do
        Wait(100)
        local ped = PlayerPedId() -- That return current ped
        local health = math.floor(GetEntityHealth(ped) / 2) -- Get Global Entity Health w/ current ped
        local armor = math.floor(GetPedArmour(ped)) -- Get Armor of ped
        --print('Vie: ' .. health)
        --print('Armure: ' .. armor)
        if IsPauseMenuActive(true) then 
            SendNUIMessage({
                showHud = false
            })
        elseif not IsPauseMenuActive(true) then
            SendNUIMessage({
                showHud = true,
                health = health,
                armor = armor
            })
        end
    end
end)

-- You can delete this

-- Command for add armor
RegisterCommand('armor', function(source, args, rawCommand) 
    local ped = PlayerPedId()
    SetPedArmour(ped, 100)
end)

-- Command for add Health
RegisterCommand('health', function(source, args, rawCommand) 
    local ped = PlayerPedId()
    SetEntityHealth(ped, 200)
end)