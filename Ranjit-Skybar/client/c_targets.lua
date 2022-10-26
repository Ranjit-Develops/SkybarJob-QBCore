local QBCore = exports['qb-core']:GetCoreObject()

----------------------------------------------------
--------- TARGETS
----------------------------------------------------

-- || ===============> Stash
exports[Config.Target]:AddBoxZone("StashSkyBar", vector3(296.32,-923.89,52.25), 0.7, 0.5, 
    { name="StashSkyBar", heading = 158.12, debugPoly = false, minZ = 51.25, maxZ = 53.35 }, 
    { options = { {  event = "Ranjit-Skybar:Client:Storage", icon = "fas fa-box", label = "Stash", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Non Alcool
exports[Config.Target]:AddBoxZone("NonAlcool",vector3(312.69, -923.43, 52.71), 1.1, 0.5, 
    { name="NonAlcool", heading = 268.06, debugPoly = false, minZ = 51.71, maxZ = 53.71 }, 
    { options = { {   action = function() CraftNonAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Non Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Non Alcool 2
exports[Config.Target]:AddBoxZone("NonAlcool2", vector3(312.54, -924.75, 52.71), 0.5, 0.3, 
    { name="NonAlcool2", heading = 267.44, debugPoly = false, minZ = 51.71, maxZ = 53.71 }, 
    { options = { {   action = function() CraftNonAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Non Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Alcool
exports[Config.Target]:AddBoxZone("Alcool", vector3(314.8, -924.7, 52.71), 1.3, 0.5, 
    { name="Alcool", heading = 80.49, debugPoly = false, minZ = 51.71, maxZ = 53.71 }, 
    { options = { {   action = function() CraftAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Alcool 2
exports[Config.Target]:AddBoxZone("Alcool2", vector3(314.84, -923.17, 52.71), 0.5, 0.3, 
    { name="Alcool2", heading = 82.29, debugPoly = false, minZ = 51.71, maxZ = 53.71 }, 
    { options = { {   action = function() CraftAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Shop Tequila
exports[Config.Target]:AddBoxZone("ShopSkybar", vector3(317.32, -925.69, 52.71), 0.7, 0.5, 
    { name="ShopSkybar", heading = 260.03, debugPoly = false, minZ = 51.71, maxZ = 53.71 }, 
    { options = { {   event = "Ranjit-Skybar:Client:OpenShop", icon = "fa-solid fa-martini-glass-citrus", label = "Shop", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing
--exports[Config.Target]:AddBoxZone("Billing", vector3(296.32, -936.65, 52.81), 0.4, 0.5, 
  --  { name="Billing", heading = 4.71, debugPoly = false, minZ = 51.81, maxZ = 53.81 }, 
    --{ options = { {   event = "Ranjit-Skybar:Client:Faturamento", icon = "fa-solid fa-money-bill", label = "Billing", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing2
exports[Config.Target]:AddBoxZone("Billing2", vector3(295.57, -924.4, 52.82), 0.4, 0.4, 
    { name="Billing2", heading = 333.51, debugPoly = false, minZ = 51.82, maxZ = 53.82 }, 
    { options = { {   event = "Ranjit-Skybar:Client:Faturamento", icon = "fa-solid fa-money-bill", label = "Billing", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing3
--exports[Config.Target]:AddBoxZone("Billing3", vector3(-566.22, 284.74, 85.38), 0.5, 0.3, 
    --{ name="Billing3", heading = 270, debugPoly = false, minZ = 84.50, maxZ = 85.98 }, 
    --{ options = { {   event = "Ranjit-Skybar:Client:Faturamento", icon = "fa-solid fa-money-bill", label = "Billing", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Duty
exports[Config.Target]:AddBoxZone("Duty", vector3(292.94, -930.46, 52.81), 0.5, 0.5, 
    { name="Duty", heading = 255.56, debugPoly = false, minZ = 51.81, maxZ = 53.81 }, 
    { options = { {   action = function() Duty() end, icon = "fa-solid fa-clipboard-list", label = "Duty", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Door Down
--exports[Config.Target]:AddBoxZone("DoorDown", vector3(-565.3, 284.15, 85.38), 1.1, 0.5, 
    --{ name="DoorDown", heading = 265, debugPoly = false, minZ = 84.78, maxZ = 86.78 }, 
  --  { options = { {  event = "Ranjit-Skybar:Client:GoDown", icon = "fa-solid fa-stairs", label = "First Floor", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Door Up
--exports[Config.Target]:AddBoxZone("DoorUp", vector3(-561.63, 290.25, 82.18), 1.2, 0.4, 
--    { name="DoorUp", heading = 265, debugPoly = false, minZ = 81.38, maxZ = 83.38 }, 
  --  { options = { {  event = "Ranjit-Skybar:Client:GoUp", icon = "fa-solid fa-stairs", label = "Second Floor", job = Config.Job }, },  distance = 2.0 })
-- || ===============> BossMenu
exports[Config.Target]:AddBoxZone("BossMenu", vector3(296.32, -936.65, 52.81), 2.9, 0.4, 
    { name="BossMenu", heading = 4.71, debugPoly = false, minZ = 51.81, maxZ = 53.81 }, 
    { options = { {  event = "qb-bossmenu:client:OpenMenu", icon = "fa-solid fa-clipboard-list", label = "Boss Menu", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Tray01
exports[Config.Target]:AddBoxZone("Tray01", vector3(294.68, -924.42, 52.87), 0.5, 0.5, 
    { name="Tray01", heading = 64.36, debugPoly = false, minZ = 51.87, maxZ = 53.87 }, 
    { options = { {  event = "Ranjit-Skybar:Client:OpenTray01", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray02
exports[Config.Target]:AddBoxZone("Tray02", vector3(-293.49, -927.42, 52.87), 0.5, 0.5, 
    { name="Tray02", heading = 251.66, debugPoly = false, minZ = 51.86, maxZ = 53.88 }, 
    { options = { {  event = "Ranjit-Skybar:Client:OpenTray02", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray03
--exports[Config.Target]:AddBoxZone("Tray03", vector3(-561.04, 284.73, 82.18), 0.5, 0.3, 
 --   { name="Tray03", heading = 355, debugPoly = false, minZ = 80.38, maxZ = 82.38 }, 
 --   { options = { {  event = "Ranjit-Skybar:Client:OpenTray03", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray04
--exports[Config.Target]:AddBoxZone("Tray04", vector3(-560.94, 286.09, 82.18), 0.5, 0.3, 
 --   { name="Tray04", heading = 355, debugPoly = false, minZ = 80.38, maxZ = 82.38 }, 
  --  { options = { {  event = "Ranjit-Skybar:Client:OpenTray04", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })

--RegisterNetEvent('Ranjit-Skybar:Client:GoDown', function()
  --  local ped = PlayerPedId()
  --  SetEntityCoords(ped, vector4(-561.84, 289.8, 82.18, 177.1))
--end)

--RegisterNetEvent('Ranjit-Skybar:Client:GoUp', function()
--    local ped = PlayerPedId()
--    SetEntityCoords(ped, vector4(-565.31, 284.59, 85.38, 352.43))
--end)