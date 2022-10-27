local QBCore = exports['qb-core']:GetCoreObject()
local alcoholCount = 0

RegisterNetEvent('Ranjit-Skybar:client:Eat', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"burger"}) -- Animation Eating
    QBCore.Functions.Progressbar("eat_something", Language.Progressbars.Eating..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false,disableCarMovement = false,disableMouse = false,disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
        TriggerServerEvent("Ranjit-Skybar:Server:RemoveItem", itemName, 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
        if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
        if not QBCore.Shared.Items[itemName].thirst and not QBCore.Shared.Items[itemName].hunger then
            TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(10,20))
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)

RegisterNetEvent('Ranjit-Skybar:client:Drink', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"}) -- Animation Drinking
    QBCore.Functions.Progressbar("drink_something", Language.Progressbars.Drinking..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("Ranjit-Skybar:Server:RemoveItem", itemName, 1)
        if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
        if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
        if not QBCore.Shared.Items[itemName].thirst and not QBCore.Shared.Items[itemName].hunger then
            TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(10,20))
        end
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)

RegisterNetEvent('Ranjit-Skybar:client:DrinkAlcahol', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"whiskey"}) -- Animation Drinking
    QBCore.Functions.Progressbar("drink_something", Language.Progressbars.Drinking..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("Ranjit-Skybar:Server:RemoveItem", itemName, 1)
        if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
        if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
        if not QBCore.Shared.Items[itemName].thirst and not QBCore.Shared.Items[itemName].hunger then
            TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(10,20))
        end
        alcoholCount = alcoholCount + 1
        if alcoholCount > 1 and alcoholCount < 4 then TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 1 then TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
        AlienEffect()
        end
        
	end, function() -- Cancel
	    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end, itemName)
end)
   --Alcohol Effects
function AlienEffect()
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    Wait(math.random(500, 800))
    local ped = PlayerPedId()
    RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK") 
    while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
      Citizen.Wait(0)
    end    
    SetPedCanRagdoll( ped, true )
    ShakeGameplayCam('DRUNK_SHAKE', 2.80)
    SetTimecycleModifier("Drunk")
    SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", true)
    SetPedMotionBlur(ped, true)
    SetPedIsDrunk(ped, true)
    Wait(1500)
    SetPedToRagdoll(ped, 500, 100, 1, false, false, false )
    Wait(13500)
    SetPedToRagdoll(ped, 500, 100, 1, false, false, false )
    Wait(12500)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(ped, 0)
    SetPedIsDrunk(ped, false)
    SetPedMotionBlur(ped, false)
    AnimpostfxStopAll()
    ShakeGameplayCam('DRUNK_SHAKE', 0.0)
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Wait(math.random(4500, 6000))    
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
end
--Weed Effects
function WeedEffect()
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    Wait(math.random(3000, 2000))
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Wait(math.random(15000, 2000))
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
end
--Other Effects
function TrevorEffect()
    StartScreenEffect("DrugsTrevorClownsFightIn", 3.0, 0)
    Wait(3000)
    StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
    Wait(30000)
	StartScreenEffect("DrugsTrevorClownsFightOut", 3.0, 0)
	StopScreenEffect("DrugsTrevorClownsFight")
	StopScreenEffect("DrugsTrevorClownsFightIn")
	StopScreenEffect("DrugsTrevorClownsFightOut")
end    

