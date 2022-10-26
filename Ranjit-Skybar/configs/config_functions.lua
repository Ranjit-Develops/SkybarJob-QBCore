local QBCore = exports['qb-core']:GetCoreObject()

function Notify(msg, type)
    if type == "primary" then 
        QBCore.Functions.Notify(msg, "primary")
    end
    if type == "success" then
        QBCore.Functions.Notify(msg, "success")
    end
    if type == "error" then
        QBCore.Functions.Notify(msg, "error")
    end
end

function Duty()
    TriggerServerEvent("QBCore:ToggleDuty")
end