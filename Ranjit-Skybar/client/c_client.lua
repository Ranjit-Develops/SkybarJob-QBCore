local QBCore = exports['qb-core']:GetCoreObject()

----------------------------------------------------
--------- Blips
----------------------------------------------------
CreateThread(function()
    if Config.Blip.Enable then
        local blip = AddBlipForCoord(Config.Blip.Location) 
        SetBlipSprite(blip, Config.Blip.Sprite) 
        SetBlipDisplay(blip, Config.Blip.Display)
        SetBlipScale(blip, Config.Blip.Scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, Config.Blip.Colour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.Name) 
        EndTextCommandSetBlipName(blip)
    end
end)

----------------------------------------------------
--------- Events
----------------------------------------------------

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
    onDuty = player.job.onduty
end)

RegisterNetEvent('Ranjit-Skybar:Client:Notify')
AddEventHandler("Ranjit-Skybar:Client:Notify", function(msg,type)
    Notify(msg,type)
end)

AddEventHandler("Ranjit-Skybar:Client:Storage", function()
    TriggerEvent(Config.Stash.StashInvTrigger, Config.Stash.NameOfStash)
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", Config.Stash.NameOfStash, {
        maxweight = Config.Stash.MaxWeighStash,
        slots = Config.Stash.MaxSlotsStash,
    })
end)

AddEventHandler("Ranjit-Skybar:Client:OpenTray01", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray01")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray01", {
        maxweight = 500,
        slots = 5,
    })
end)

AddEventHandler("Ranjit-Skybar:Client:OpenTray02", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray02")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray02", {
        maxweight = 500,
        slots = 5,
    })
end)

AddEventHandler("Ranjit-Skybar:Client:OpenTray03", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray03")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray03", {
        maxweight = 500,
        slots = 5,
    })
end)

AddEventHandler("Ranjit-Skybar:Client:OpenTray04", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray04")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray04", {
        maxweight = 500,
        slots = 5,
    })
end)

RegisterNetEvent("Ranjit-Skybar:Client:OpenShop", function(index)
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "tequila", {
        label = "tequila",
        items = Config.Items,
        slots = #Config.Items,
    })
end);

AddEventHandler('Ranjit-Skybar:Client:Sentar', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"sitchair"})
end)

-- || ===============> Faturar
 
RegisterNetEvent('Ranjit-Skybar:Client:Faturamento', function()
    if Config.JimPayments then
        TriggerEvent("jim-payments:client:Charge", Config.Job)
    else
        local dialog = exports[Config.Input]:ShowInput({
            header = Language.Input.Header,
            submitText = Language.Input.Submit,
            inputs = {
                { type = 'number', isRequired = true, name = 'id', text = Language.Input.Paypal },
                { type = 'number', isRequired = true, name = 'amount', text = Language.Input.Amount }
            }
        })
        if dialog then
            if not dialog.id or not dialog.amount then return end
            TriggerServerEvent("Ranjit-Skybar:Server:Billing", dialog.id, dialog.amount)
        end
    end
end)

if Config.Billing.EnableCommand then
    if Config.JimPayments then
        TriggerEvent("jim-payments:client:Charge", Config.Job)
    else
        RegisterCommand(Config.Billing.Command, function()
            local dialog = exports[Config.Input]:ShowInput({
                header = Language.Input.Header,
                submitText = Language.Input.Submit,
                inputs = {
                    { type = 'number', isRequired = true, name = 'id', text = Language.Input.Paypal },
                    { type = 'number', isRequired = true, name = 'amount', text = Language.Input.Amount }
                }
            })
            if dialog then
                if not dialog.id or not dialog.amount then return end
                TriggerServerEvent("Ranjit-Skybar:Server:Billing", dialog.id, dialog.amount)
            end
        end)
    end
end

function CraftNonAlcoholicMenu()
    local columns = { { header = Language.Menu.NonAlcoholic, isMenuHeader = true, }, }
    for k, v in pairs(Config.NonAlcoholic) do
        local item = {}
        item.header = "<img src=nui://"..Config.InvLink..QBCore.Shared.Items[v.hash].image.." width=35px style='margin-right: 10px'> " .. v.label
        local text = Language.Menu.Required.." <br>"
        for k, v in pairs(v.materials) do
            text = text .. "- " .. QBCore.Shared.Items[v.item].label .. ": " .. v.amount .. "<br>"
        end
        item.text = text
        item.params = { event = 'Ranjit-Skybar:client:CraftNonAlcoholic', args = { type = k } }
        table.insert(columns, item)
    end
    exports['qb-menu']:openMenu(columns)
end

function CraftNonAlcoholic(weapon)
    QBCore.Functions.Progressbar('CraftNonAlcoholic', Language.Progressbars.Make..Config.NonAlcoholic[weapon].label, 5000, false, false, {
        disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,
    }, { animDict = "mini@repair", anim = "fixing_a_ped", }, {}, {}, function()
        Notify(Language.Notify.Make..Config.NonAlcoholic[weapon].label, 'success', 5000)
        TriggerServerEvent('Ranjit-Skybar:server:CraftNonAlcoholic', Config.NonAlcoholic[weapon].hash)
        for k, v in pairs(Config.NonAlcoholic[weapon].materials) do
             TriggerServerEvent('Ranjit-Skybar:Server:RemoveItem', v.item, v.amount)
             TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v.item], "remove")
        end
        ClearPedTasks(PlayerPedId())
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        Notify(Language.Notify.Canceled, 'error', 5000)
    end)
end

RegisterNetEvent('Ranjit-Skybar:client:CraftNonAlcoholic', function(data)
    QBCore.Functions.TriggerCallback("Ranjit-Skybar:server:Materials", function(hasMaterials)
        if (hasMaterials) then
            CraftNonAlcoholic(data.type)
        else
            Notify(Language.Notify.NoMaterials, 'error', 5000)
            return
        end
    end, Config.NonAlcoholic[data.type].materials)
end)

function CraftAlcoholicMenu()
    local columns = { { header = Language.Menu.Alcoholic, isMenuHeader = true },}
    for k, v in pairs(Config.Alcoholic) do
        local item = {}
        item.header = "<img src=nui://"..Config.InvLink..QBCore.Shared.Items[v.hash].image.." width=35px style='margin-right: 10px'> " .. v.label
        local text = Language.Menu.Required.." <br>"
        for k, v in pairs(v.materials) do
            text = text .. "- " .. QBCore.Shared.Items[v.item].label .. ": " .. v.amount .. "<br>"
        end
        item.text = text
        item.params = { event = 'Ranjit-Skybar:client:CraftAlcoholic', args = { type = k } }
        table.insert(columns, item)
    end
    exports['qb-menu']:openMenu(columns)
end

function CraftAlcoholic(weapon)
    QBCore.Functions.Progressbar('CraftAlcoholic', Language.Progressbars.Make..Config.Alcoholic[weapon].label, 5000, false, false, {
        disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,
    }, { animDict = "mini@repair", anim = "fixing_a_ped", }, {}, {}, function()
        Notify(Language.Notify.Make..Config.Alcoholic[weapon].label, 'success', 5000)
        TriggerServerEvent('Ranjit-Skybar:server:CraftAlcoholic', Config.Alcoholic[weapon].hash)
        for k, v in pairs(Config.Alcoholic[weapon].materials) do
             TriggerServerEvent('Ranjit-Skybar:Server:RemoveItem', v.item, v.amount)
             TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v.item], "remove")
        end
        ClearPedTasks(PlayerPedId())
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        Notify(Language.Notify.Canceled, 'error', 5000)
    end)
end

RegisterNetEvent('Ranjit-Skybar:client:CraftAlcoholic', function(data)
    QBCore.Functions.TriggerCallback("Ranjit-Skybar:server:Materials", function(hasMaterials)
        if (hasMaterials) then
            CraftAlcoholic(data.type)
        else
            Notify(Language.Notify.NoMaterials, 'error', 5000)
            return
        end
    end, Config.Alcoholic[data.type].materials)
end)

RegisterNetEvent('Ranjit-Skybar:Client:GiveCoffee', function()
    LocalPlayer.state:set("inv_busy", true, true)
    QBCore.Functions.Progressbar("PutMask", Language.Progressbars.Coffee, 5000, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,
    disableCombat = true}, {animDict = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@normal",anim = "pour_one",flags = 49}, {}, {}, function()
    LocalPlayer.state:set("inv_busy", false, true)
    end)
    Wait(5000)
    TriggerServerEvent('Ranjit-Skybar:Server:GiveCoffee')
end)
