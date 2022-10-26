local QBCore = exports['qb-core']:GetCoreObject()

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
