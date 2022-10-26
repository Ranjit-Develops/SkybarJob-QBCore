
Config = {}


-- ██╗░░░██╗████████╗██╗██╗░░░░░██╗████████╗██╗░░░██╗
-- ██║░░░██║╚══██╔══╝██║██║░░░░░██║╚══██╔══╝╚██╗░██╔╝
-- ██║░░░██║░░░██║░░░██║██║░░░░░██║░░░██║░░░░╚████╔╝░
-- ██║░░░██║░░░██║░░░██║██║░░░░░██║░░░██║░░░░░╚██╔╝░░
-- ╚██████╔╝░░░██║░░░██║███████╗██║░░░██║░░░░░░██║░░░
-- ░╚═════╝░░░░╚═╝░░░╚═╝╚══════╝╚═╝░░░╚═╝░░░░░░╚═╝░░░

Config.CoreName = "qb-core" -- Core name
Config.Job = "skybar" -- Job
Config.JimPayments = false -- Using jim-payments?
Config.Target = "qb-target" -- Name of your resource qb-target
Config.Input = "qb-input" -- Name of your resource qb-input
Config.InvLink = "qb-inventory/html/images/" -- Your directory images inventory
Config.Bossmenu = "qb-bossmenu:client:OpenMenu" -- Your trigger to open boss menu

-- ██████╗░██╗░░░░░██╗██████╗░
-- ██╔══██╗██║░░░░░██║██╔══██╗
-- ██████╦╝██║░░░░░██║██████╔╝
-- ██╔══██╗██║░░░░░██║██╔═══╝░
-- ██████╦╝███████╗██║██║░░░░░
-- ╚═════╝░╚══════╝╚═╝╚═╝░░░░░

Config.Blip = {
	Enable = true,
	Location = vector3(309.6, -931.96, 29.47),
	Sprite = 293,
	Display = 2,
	Scale = 0.8,
	Colour = 14,
	Name = "Skybar",
}


-- ░██████╗████████╗░█████╗░░██████╗██╗░░██╗
-- ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║░░██║
-- ╚█████╗░░░░██║░░░███████║╚█████╗░███████║
-- ░╚═══██╗░░░██║░░░██╔══██║░╚═══██╗██╔══██║
-- ██████╔╝░░░██║░░░██║░░██║██████╔╝██║░░██║
-- ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝

Config.Stash = {
	StashInvTrigger = "inventory:client:SetCurrentStash",
	OpenInvTrigger = "inventory:server:OpenInventory",
	NameOfStash = "SkyBar_Storage",
	MaxWeighStash = 50000,
	MaxSlotsStash = 50,
}


-- ██████╗░██╗██╗░░░░░██╗░░░░░██╗███╗░░██╗░██████╗░
-- ██╔══██╗██║██║░░░░░██║░░░░░██║████╗░██║██╔════╝░
-- ██████╦╝██║██║░░░░░██║░░░░░██║██╔██╗██║██║░░██╗░
-- ██╔══██╗██║██║░░░░░██║░░░░░██║██║╚████║██║░░╚██╗
-- ██████╦╝██║███████╗███████╗██║██║░╚███║╚██████╔╝
-- ╚═════╝░╚═╝╚══════╝╚══════╝╚═╝╚═╝░░╚══╝░╚═════╝░

Config.Billing = {
	EnableCommand = true,
	Command = "billskybar",
}


-- ░██████╗██╗░░██╗░█████╗░██████╗░
-- ██╔════╝██║░░██║██╔══██╗██╔══██╗
-- ╚█████╗░███████║██║░░██║██████╔╝
-- ░╚═══██╗██╔══██║██║░░██║██╔═══╝░
-- ██████╔ ██║░░██║╚█████╔╝██║░░░░░
-- ╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░░░░

Config.Items = {
    [1] = { name = "skybar_banana", price = 0, amount = 10, info = {}, type = "item", slot = 1 },
    [2] = { name = "skybar_caramel", price = 0, amount = 10, info = {}, type = "item", slot = 2, },
    [3] = { name = "skybar_coconut", price = 0, amount = 10, info = {}, type = "item", slot = 3, },
    [4] = { name = "skybar_orange", price = 0, amount = 10, info = {}, type = "item", slot = 4, },
    [5] = { name = "skybar_kiwi", price = 0, amount = 10, info = {}, type = "item", slot = 5, },
    [6] = { name = "skybar_sugar", price = 0, amount = 10, info = {}, type = "item", slot = 6, },
    [7] = { name = "skybar_strawberry", price = 0, amount = 10, info = {}, type = "item", slot = 7, },
    [8] = { name = "skybar_watermelon", price = 0, amount = 10, info = {}, type = "item", slot = 8, },
    [9] = { name = "skybar_water", price = 0, amount = 10, info = {}, type = "item", slot = 9, }, --
    [10] = { name = "skybar_daquiri", price = 0, amount = 10, info = {}, type = "item", slot = 10, },
    [11] = { name = "skybar_tequila", price = 0, amount = 10, info = {}, type = "item", slot = 11, }
}

-- ░█████╗░██████╗░░█████╗░███████╗████████╗░██████╗
-- ██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔════╝
-- ██║░░╚═╝██████╔╝███████║█████╗░░░░░██║░░░╚█████╗░
-- ██║░░██╗██╔══██╗██╔══██║██╔══╝░░░░░██║░░░░╚═══██╗
-- ╚█████╔╝██║░░██║██║░░██║██║░░░░░░░░██║░░░██████╔╝
-- ░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░

-- Craft non-alcoholic drinks
Config.NonAlcoholic = {
    ["skybar_berry_hydrating"] = { 
        hash = "skybar_berry_hydrating", 
        label = "Hydrating",
        materials = {
            [1] = { item = "skybar_water",      amount = 1 },
            [2] = { item = "skybar_strawberry", amount = 1 },
            [3] = { item = "skybar_sugar",      amount = 1 },
        }
    },
    ["skybar_green_dream"] = { 
        hash = "skybar_green_dream", 
        label = "Green Dream",
        materials = {
            [1] = { item = "skybar_water",       amount = 1 },
            [2] = { item = "skybar_kiwi",        amount = 1 },
            [3] = { item = "skybar_sugar",       amount = 1 },
        }
    },
    ["skybar_island_breeze"] = { 
        hash = "skybar_island_breeze", 
        label = "Island Breeze",
        materials = {
            [1] = { item = "skybar_strawberry",  amount = 2 },
            [2] = { item = "skybar_sugar",       amount = 1 },
            [3] = { item = "skybar_water",       amount = 2 },
        }
    },
    ["skybar_just_peachy"] = { 
        hash = "skybar_just_peachy", 
        label = "Just Peachy",
        materials = {
            [1] = { item = "skybar_water",       amount = 1 },
            [2] = { item = "skybar_caramel",     amount = 1 },
            [3] = { item = "skybar_sugar",       amount = 1 },
        }
    },
    ["skybar_watermelon_dream"] = { 
        hash = "skybar_watermelon_dream", 
        label = "Watermelon Dream",
        materials = {
            [1] = { item = "skybar_water",    amount = 2 },
            [2] = { item = "skybar_sugar",        amount = 1 },
            [3] = { item = "skybar_watermelon",         amount = 1 },
        }
    },
    ["skybar_kiwi_juice"] = { 
        hash = "skybar_kiwi_juice", 
        label = "Kiwi Juice",
        materials = {
            [1] = { item = "skybar_kiwi",    amount = 1 },
        }
    },
    ["skybar_orange_juice"] = { 
        hash = "skybar_orange_juice", 
        label = "Orange Juice",
        materials = {
            [1] = { item = "skybar_orange",    amount = 1 },
        }
    },
    ["skybar_strawberry_juice"] = { 
        hash = "skybar_strawberry_juice", 
        label = "Strawberry Juice",
        materials = {
            [1] = { item = "skybar_strawberry",    amount = 1 },
        }
    },
    ["skybar_banana_juice"] = { 
        hash = "skybar_banana_juice", 
        label = "Banana Juice",
        materials = {
            [1] = { item = "skybar_banana",    amount = 1 },
        }
    },
}


-- Craft alcoholic drinks

Config.Alcoholic = {
    ["skybar_cocktail"] = { 
        hash = "skybar_cocktail", 
        label = "Cocktail",
        materials = {
            [1] = { item = "skybar_water",      amount = 1 },
            [2] = { item = "skybar_strawberry", amount = 1 },
            [3] = { item = "skybar_sugar",      amount = 1 },
            [4] = { item = "skybar_tequila",     amount = 1 },
        }
    },
    ["skybar_coconut_drink"] = { 
        hash = "skybar_coconut_drink", 
        label = "Coconut Drink",
        materials = {
            [1] = { item = "skybar_water",       amount = 1 },
            [2] = { item = "skybar_coconut",     amount = 1 },
            [3] = { item = "skybar_sugar",       amount = 1 },
            [4] = { item = "skybar_tequila",     amount = 1 },
        }
    },
    ["skybar_island_fantasy"] = { 
        hash = "skybar_island_fantasy", 
        label = "Island Fantasy",
        materials = {
            [1] = { item = "skybar_orange",      amount = 1 },
            [2] = { item = "skybar_sugar",       amount = 1 },
            [3] = { item = "skybar_water",       amount = 1 },
            [4] = { item = "skybar_tequila",     amount = 1 },
        }
    },
    ["skybar_kamikaze"] = { 
        hash = "skybar_kamikaze", 
        label = "Kamikaze",
        materials = {
            [1] = { item = "skybar_water",       amount = 1 },
            [3] = { item = "skybar_sugar",       amount = 1 },
            [4] = { item = "skybar_tequila",     amount = 1 },
        }
    },
    ["skybar_redhot_daquiri"] = { 
        hash = "skybar_redhot_daquiri", 
        label = "Red Hot Daquiri",
        materials = {
            [1] = { item = "skybar_water",           amount = 1 },
            [2] = { item = "skybar_sugar",           amount = 1 },
            [3] = { item = "skybar_watermelon",      amount = 1 },
            [4] = { item = "skybar_daquiri",         amount = 1 },
        }
    },
}

