# Ranjit-Skybar script for QB-Core

| If you are intested in recieving updates join the community on **[Discord][https://discord.gg/M2Umqvd832]**! |

|Big Thanks To **Marcinhu**[His Tebex] https://marcinhu.tebex.io/ |
# Preview

https://www.youtube.com/watch?v=sw8pf4nb1ZM

#Contact
Discord:-Ranjit#6511
# Required
**Lift**
https://github.com/DanielCoelh0/qb-lift.git

**Map**

[https://dons.tebex.io/package/4489363]

**qb-lift/config.lua**
```    ["Skybar"] = {
        Sound = "liftSoundBellRing",
        Name = "Elevator One",
        Floors = {
            [1] = {
                Label = "Ground Floor",
                FloorDesc = "Skybar Ground Lobby",
                Coords = vector3(310.01, -929.95, 29.47),
                ExitHeading = "171.9"
            },
            [2] = {
                Label = "First Floor",
                FloorDesc = "Skybar Upper Lobby",
                Coords = vector3(310.0, -930.07, 52.81),
                ExitHeading = "171.85"
            },
        }
    },
    ```
    ```     [X] = { name = "Skybar Ground", location = vector3(308.9, -931.2, 29.47), width = 1, length = 1, heading = 177.09, minz = 28.47, maxz = 30.47},
    [X] = { name = "Skybar ", location = vector3(308.91, -931.21, 52.81), width = 1, length = 1, heading = 177.09, minz = 51.81, maxz = 53.81},
    -- [X] is Defined as The Number of Lift you are using depending on your need Make Sure to Fill It
  ```
    
# **qb-core/shared/items.lua**
```
    -- Ranjit-Skybar
	["skybar_berry_hydrating"] 		= {["name"] = "skybar_berry_hydrating", 		["label"] = "Berry Hydrating", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_berry_hydrating.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_cake"] 				= {["name"] = "skybar_cake", 					["label"] = "Cake", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_cake.png", 					["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_chocolate_cake"] 		= {["name"] = "skybar_chocolate_cake", 			["label"] = "Chocolate Cake", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_chocolate_cake.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_cocktail"] 			= {["name"] = "skybar_cocktail", 				["label"] = "Cocktail", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_cocktail.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_coconut_drink"] 		= {["name"] = "skybar_coconut_drink", 			["label"] = "Coconut Drink", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_coconut_drink.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_coffee"] 				= {["name"] = "skybar_coffee", 					["label"] = "Coffee", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_coffee.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_coffee_heart"] 		= {["name"] = "skybar_coffee_heart", 			["label"] = "Coffee Heart", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_coffee_heart.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_green_dream"] 			= {["name"] = "skybar_green_dream", 			["label"] = "Green Dream", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_green_dream.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_island_breeze"] 		= {["name"] = "skybar_island_breeze", 			["label"] = "Island Breeze", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_island_breeze.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_island_fantasy"] 		= {["name"] = "skybar_island_fantasy", 			["label"] = "Island Fantasy", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_island_fantasy.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_just_peachy"] 			= {["name"] = "skybar_just_peachy", 			["label"] = "Just Peachy", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_just_peachy.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_kamikaze"] 			= {["name"] = "skybar_kamikaze", 				["label"] = "Kamikaze", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_kamikaze.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_redhot_daquiri"] 		= {["name"] = "skybar_redhot_daquiri", 			["label"] = "Redhot Daquiri", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_redhot_daquiri.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_watermelon_dream"] 	= {["name"] = "skybar_watermelon_dream", 		["label"] = "Watermelon Dream", 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_watermelon_dream.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_tequila"] 				= {["name"] = "skybar_tequila", 				["label"] = "Tequila", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_tequila.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_daquiri"] 				= {["name"] = "skybar_daquiri", 				["label"] = "Daquiri", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_daquiri.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_water"] 				= {["name"] = "skybar_water", 					["label"] = "Water", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_water.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_caramel"] 				= {["name"] = "skybar_caramel", 				["label"] = "Caramel", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_caramel.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_chocolate"] 			= {["name"] = "skybar_chocolate", 				["label"] = "Chocolate", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_chocolate.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_cheese"] 				= {["name"] = "skybar_cheese", 					["label"] = "Cheese", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_cheese.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_milk"] 				= {["name"] = "skybar_milk", 					["label"] = "Milk", 			 	     ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_milk.png", 					["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	
		-- Juices
	["skybar_orange_juice"] 		= {["name"] = "skybar_orange_juice", 			["label"] = "Orange Juice", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_orange_juice.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_kiwi_juice"] 			= {["name"] = "skybar_kiwi_juice", 				["label"] = "Kiwi Juice", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_kiwi_juice.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_strawberry_juice"] 	= {["name"] = "skybar_strawberry_juice", 		["label"] = "Strawberry Juice", 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_strawberry_juice.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_banana_juice"] 		= {["name"] = "skybar_banana_juice", 			["label"] = "Banana Juice", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_banana_juice.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_ban_straw_juice"] 		= {["name"] = "skybar_ban_straw_juice", 		["label"] = "Banana & Strawberry Juice", ["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_ban_straw_juice.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},

	-- Fruits
	["skybar_kiwi"] 			= {["name"] = "skybar_kiwi", 						["label"] = "Kiwi", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_kiwi.png", 					["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_orange"] 			= {["name"] = "skybar_orange", 						["label"] = "Orange", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_orange.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_strawberry"] 		= {["name"] = "skybar_strawberry", 					["label"] = "Strawberry", 			 	["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_strawberry.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_sugar"] 			= {["name"] = "skybar_sugar", 						["label"] = "Sugar", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_sugar.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_watermelon"] 		= {["name"] = "skybar_watermelon", 					["label"] = "Watermelon", 			 	["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_watermelon.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_banana"] 			= {["name"] = "skybar_banana", 						["label"] = "Banana", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_banana.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_coconut"] 			= {["name"] = "skybar_coconut", 					["label"] = "Coconut", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_coconut.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_banana_nut"] 		= {["name"] = "skybar_banana_nut", 					["label"] = "skybar banana nut", 			 	["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_vanillacupcakes.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_chocolatecup"] 			= {["name"] = "skybar_chocolatecup", 						["label"] = "skybar chocolatecup", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_vanillacupcakes.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["skybar_strawberrycup"] 			= {["name"] = "skybar_strawberrycup", 					["label"] = "skybar strawberrycup", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "skybar_vanillacupcakes.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
```
# **qb-smallresources/config.lua**
	ConsumeablesDrink = {
	    ["skybar_berry_hydrating"] = math.random(20, 40),
	    ["skybar_green_dream"] = math.random(20, 40),
	    ["skybar_island_breeze"] = math.random(20, 40),
	    ["skybar_just_peachy"] = math.random(20, 40),
	    ["skybar_watermelon_dream"] = math.random(20, 40),
	    ["skybar_ban_straw_juice"] = math.random(20, 40),
	    ["skybar_banana_juice"] = math.random(20, 40),
	    ["skybar_kiwi_juice"] = math.random(20, 40),
	    ["skybar_strawberry_juice"] = math.random(20, 40),
	    ["skybar_orange_juice"] = math.random(20, 40),
	}

	ConsumeablesEat = {
		["skybar_banana_nut"] = math.random(20, 40),
		["skybar_chocolatecup"] = math.random(20, 40),
		["skybar_strawberrycup"] = math.random(20, 40),
	}

	ConsumeablesAlcohol = {
	    ["skybar_cocktail"] = math.random(20, 30),
	    ["skybar_coconut_drink"] = math.random(30, 40),
	    ["skybar_island_fantasy"] = math.random(20, 40),
	    ["skybar_kamikaze"] = math.random(20, 40),
	    ["skybar_redhot_daquiri"] = math.random(20, 40),
	}

# **qb-core/shared/jobs.lua**
	['Skybar'] = {
        label = 'Skybar',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Employee',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                payment = 100
            },
            ['3'] = {
                name = 'Chief',
                isboss = true,
                payment = 150
            },
        },
    },
