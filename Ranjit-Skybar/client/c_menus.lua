local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('Ranjit-Skybar:Client:JuicesMenu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {id = 0,header = Language.Menu.Juices, txt = "" },
        {id = 1,header = Language.Menu.OrangeJuice, txt = "Required: 1x Orange", params = {event = "Ranjit-Skybar:Client:GiveJuice", args = { juice = 1 }}},
        {id = 2,header = Language.Menu.StrawberryJuice, txt = "Required: 1x Strawberry", params = {event = "Ranjit-Skybar:Client:GiveJuice", args = { juice = 2 }}},
        {id = 3,header = Language.Menu.KiwiJuice, txt = "Required: 1x Kiwi", params = {event = "Ranjit-Skybar:Client:GiveJuice", args = { juice = 3 }}},
        {id = 4,header = Language.Menu.BananaJuice, txt = "Required: 1x Banana", params = {event = "Ranjit-Skybar:Client:GiveJuice", args = { juice = 4 }}},
        {id = 5,header = Language.Menu.BanStraw, txt = "Required: 1x Strawberry & 1x Banana", params = {event = "Ranjit-Skybar:Client:GiveJuice", args = { juice = 5 }}},
        {id = 6,header = Language.Menu.Close,txt = '', params = {event = 'qb-menu:closeMenu'}}
    })
end)

RegisterNetEvent('Ranjit-Skybar:Client:FruitsMenu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {id = 0,header = Language.Menu.Fruits, txt = "" },
        {id = 1,header = Language.Menu.Orange, txt = "", params = {event = "Ranjit-Skybar:Client:GiveFruit", args = { fruit = 1 }}},
        {id = 2,header = Language.Menu.Strawberry, txt = "", params = {event = "Ranjit-Skybar:Client:GiveFruit", args = { fruit = 2 }}},
        {id = 3,header = Language.Menu.Kiwi, txt = "", params = {event = "Ranjit-Skybar:Client:GiveFruit", args = { fruit = 3 }}},
        {id = 4,header = Language.Menu.Banana, txt = "", params = {event = "Ranjit-Skybar:Client:GiveFruit", args = { fruit = 4 }}},
        {id = 5,header = Language.Menu.Watermelon, txt = "", params = {event = "Ranjit-Skybar:Client:GiveFruit", args = { fruit = 5 }}},
        {id = 6,header = Language.Menu.Coconut, txt = "", params = {event = "Ranjit-Skybar:Client:GiveFruit", args = { fruit = 6 }}},
        {id = 7,header = Language.Menu.Close,txt = '', params = {event = 'qb-menu:closeMenu'}}
    })
end)



