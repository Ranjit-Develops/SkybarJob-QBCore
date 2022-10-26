local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("Ranjit-Skybar:Server:Billing", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == Config.Job then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                    MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (@citizenid, @amount, @society, @sender)', {
                        ['@citizenid'] = billed.PlayerData.citizenid,
                        ['@amount'] = amount,
                        ['@society'] = biller.PlayerData.job.name,
                        ['@sender'] = biller.PlayerData.charinfo.firstname
                    })
                    TriggerClientEvent("qb-phone:RefreshPhone", billed.PlayerData.source)
                    TriggerClientEvent('Ranjit-Skybar:Client:Notify', source, Language.Notify.Send, 'success', 5000)
                    TriggerClientEvent('Ranjit-Skybar:Client:Notify', billed.PlayerData.source, Language.Notify.InvoiceReceived)
                else
                    TriggerClientEvent('Ranjit-Skybar:Client:Notify', source, Language.Notify.HigherValue, 'error', 5000)
                end
            else
                TriggerClientEvent('Ranjit-Skybar:Client:Notify', source, Language.Notify.InvoiceOwn, 'error', 5000)
            end
        else
            TriggerClientEvent('Ranjit-Skybar:Client:Notify', source, Language.Notify.PlayerOffline, 'error', 5000)
        end
    else
        TriggerClientEvent('Ranjit-Skybar:Client:Notify', source, Language.Notify.NoPermission, 'error', 5000)
    end
end)



CreateThread(function()
    local food = { "skybar_banana_nut", "skybar_chocolatecup", "skybar_strawberrycup", "skybar_vanillacupcakes" }
    for k,v in pairs(food) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('Ranjit-Skybar:client:Eat', source, item.name) end) end
    
    local drinks = { "skybar_berry_hydrating", "skybar_green_dream", "skybar_island_breeze", "skybar_just_peachy", "skybar_watermelon_dream", "skybar_ban_straw_juice", "skybar_banana_juice", "skybar_kiwi_juice", "skybar_strawberry_juice", "skybar_orange_juice", "skybar_cocktail", "skybar_coconut_drink", "skybar_island_fantasy", "skybar_kamikaze", "skybar_redhot_daquiri" }
    for k,v in pairs(drinks) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('Ranjit-Skybar:client:Drink', source, item.name) end) end
end)


