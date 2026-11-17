_G.FishItConfig = {
    ["Fishing"] = {
        ["Instant Fishing"] = true,     -- Instant Fishing V1 with automatic timing.
        ["Perfect Result"] = true,     -- Fixed Perfect casts; Diamond quest may override.
        ["Random Result"] = false,      -- Random cast power; Perfect takes priority.
    },

    ["Favorite"] = {
        ["Auto Favorite"] = false,       -- Protect matching fish from selling and outgoing trades.
        ["Fish Name"] = {
            "Sacred Guardian Squid",               -- Any mutation.
            { Name = "Ruby", Variant = "Gemstone" }, -- Ruby with Gemstone mutation.
            -- { Variant = "None" },             -- example: match any fish with this mutation
            -- { Tier = "Secret" },                 -- example: match any Secret fish
        }, -- Match any rule; match all fields within it.
        -- Empty uses default Squid/Ruby rules.
    },

    ["Selling"] = {
        ["Auto Sell"] = true,           -- Sell at the count limit or near full capacity.
        ["Auto Sell Threshold"] = "Legendary", -- Sell up to: "Legendary", "Mythic", or "Secret".
        ["Auto Sell Count"] = 888,      -- Fish count, not seconds.
        -- Favorites stay protected; pending quest fish can delay selling.
    },

    ["Farming Coins"] = {
        ["Enabled"] = false,            -- Hold rod/bait purchases below Target.
        ["Target"] = 190000,            -- Required coin balance.
    },

    ["Quest"] = {
        ["Auto Ghostfinn Rod"] = false,  -- Deep Sea: Treasure Room and Sisyphus Statue.
        ["Auto Element Rod"] = false,    -- Fish Ancient Jungle and Sacred Temple objectives.
        ["Auto Element Ruin"] = false,   -- Fish Ancient Ruin after Jungle and Ruin sacrifices.
        -- Ruin Secret catches also count toward Sacred Temple.
        ["Auto Diamond Rod"] = false,    -- Complete Diamond Researcher and claim Diamond Rod.
        ["Auto Pickaxe"] = false,        -- Obtain Hank's Diary; requires Diamond Rod.
        ["Minimum Rod"] = "Starter Rod",-- Requires this exact rod in inventory.
    },

    ["Event"] = {
        ["Start Farm"] = false,         -- Farm selected events while active.
        ["Event List"] = {
            ["Blizzard Elemental Event"] = false,
            ["Storm Elemental Event"] = false,
            ["Volcano Elemental Event"] = false,
            ["Mutant Runic Koi"] = false,
            ["Ancient Lochness Monster"] = false,
            ["Ghost Shark Hunt"] = false,
            ["Shark Hunt"] = false,
            ["Megalodon Hunt"] = false,
            ["Dark Megalodon Hunt"] = false,
        }, -- true enables; false skips.
        ["Minimum Rod"] = "Ghostfinn Rod", -- Requires this exact rod in inventory.
        -- Empty uses default events.
    },

    ["Rod List"] = {
        ["Auto Buy"] = false,            -- Buy listed upgrades at current game prices.
        ["Buy List"] = {
            "Astral Rod",
        }, -- Buy in order; equip new inventory-confirmed upgrades.
        -- Keep existing equipment. Empty buys nothing.
    },

    ["Bait List"] = {
        ["Auto Buy"] = true,            -- Buy listed upgrades from shops or merchant.
        ["Buy List"] = {
            "Aether Bait",
            "Singularity Bait",
        }, -- Buy in order; keep current bait until upgraded.
        -- Singularity uses merchant. Empty buys nothing.
    },

    ["Potions"] = {
        ["Auto Use"] = true,            -- Use owned potion stacks.
    },

    ["Totems"] = {
        ["Auto Use"] = true,           -- Place the first selected totem.
        ["Auto Buy"] = true,           -- Restock to Quantity; requires Auto Use.
        ["Totem List"] = { "Luck Totem", "nothing" }, -- Place first entry; restock all entries.
        ["Quantity"] = 50,               -- Stock target per totem.
        ["Minimum Rod"] = "Ghostfinn Rod", -- Requires this exact rod in inventory.
        -- Shop: "Luck Totem", "Shiny Totem", "Mutation Totem".
        -- Empty: place Luck Totem; buy nothing.
    },

    ["Weather"] = {
        ["Auto Buy"] = true,            -- Buy the first available selected weather.
        ["Weather List"] = { "Fog", "Storm", "Wind" }, -- Checked in order; empty buys nothing.
        ["Minimum Rod"] = "Astral Rod", -- Requires this exact rod in inventory.
    },

    ["Black Market"] = {
        ["Auto Buy"] = false,           -- Buy selected items when stocked.
        ["Item List"] = {
            "Megalodon Hunt Potion",
            "Dark Megalodon Hunt Potion",
            "Glacial Serpent Hunt Potion",
            "Mutation IV Potion",
            "Luck III Potion",
            "Boombox Charm",
        }, -- Empty buys nothing.
        ["Minimum Rod"] = "Ghostfinn Rod", -- Requires this exact rod in inventory.
    },

    ["Auto Trade"] = {
        ["Enabled"] = true,             -- Send selected items to whitelisted usernames.
        ["Whitelist Username"] = { "Evolved_A3RF", "evolved_a3rf" }, -- Roblox usernames; empty sends no offers.
        ["Category Fish"] = { "Secret", "Forgotten" },-- Fish tiers, combined with Fish Name matches.
        ["Fish Name"] = {},             -- Names or { Name = "Deepsea Monster Axolotl", "Sea Eater", "Fluorivane" Variant = "None" }.
        ["Item Name"] = {
            "None",
            "Evolved Enchant Stone",
            "Runic Enchant Stone",
        }, -- Item names; empty selects none.
        ["Gears Name"] = {
            "None",
            "None",
        }, -- Gear names; empty selects none.
        -- Locked and protected items are excluded.
        -- Auto-accept requires Enabled and a whitelisted sender.
        -- 20 UUIDs per trade; stacks use repeated trades.
    },

    ["Enchant"] = {
        ["Auto Enchant"] = false,       -- Roll toward the first target in each list.
        ["Use Evolved Stone"] = false,   -- false: Evolved Stone; false: normal Enchant Stone.
        ["Second Enchant"] = false,     -- Enchant slot 2; requires Auto Enchant and stones.
        ["Enchant List"] = {            -- Altar 1: first entry is final target; empty skips.
            "SECRET Hunter",
            "Reeler II",
            "Shark Hunter",
            "Mutation Hunter III",
            "Prismatic I",
        },
        ["Second Enchant List"] = {     -- Altar 2 targets; empty skips.
            "Empowered I",
            "Stormhunter I",
        },
        ["Minimum Rod"] = "Element Rod", -- Requires this exact rod in inventory.
        -- Altar 2 uses Transcended Stone, then Withering Stone.
    },

    ["Create Transcended Stone"] = {
        ["Auto Create"] = false,        -- Sacrifice an allowed Secret fish; level 200+.
        ["Allowed Sacrifice"] = {
            "All",                      -- Any Secret fish, or use exact fish names.
        }, -- Empty allows no sacrifice.
        -- Does not check favorite or quest protection.
        -- Element Quest crafting runs separately.
    },

    ["WebHook"] = {
        ["Auto Sending"] = true,        -- Send personal fish/item/quest-rod notifications.
        ["Link Webhook"] = "https://discord.com/api/webhooks/1508700519760396341/0r39Ch7VhaxftNfKw7TSjSh_O1J_FXFU9gU2Wpa5WwIIY8BgeT3GuhWmY9k3vwNtQkTm",               -- Your Discord webhook URL.
        ["Link Webhook Quest Complete"] = "https://discord.com/api/webhooks/1547949922857255002/OXy1Etg5Q3mL2TcW0HPc4nBpeeQQowK9XonRSVCtXPUSDyn7ARwULhk3oOGSx6E55oyK", -- Quest-rod URL; blank uses Link Webhook.
        ["Tiers"] = {
            "Secret",
            "Forgotten",
        }, -- Fish tiers to notify.
        ["Specific Fish"] = {
            { Name = "Ruby", Variant = "Gemstone" },
        }, -- Additional fish matches.
        ["Special Items"] = {
            "Evolved Enchant Stone",
            "Runic Enchant Stone",
            "Withering Core",
            "Tribunal Withering Core",
        }, -- Item names to notify.
        -- Replace placeholder URLs.
        -- Global Secret/Forgotten alerts stay automatic.
        -- Quest rods: newly owned after the initial scan.
    },

    -- Use plain names: "Underwater City", "Underwater City".
    ["Location Rods"] = {
        ["Underwater City"]  = { "Element Rod", "Ghostfinn Rod", "Diamond Rod" },
    }, -- Fallback fishing spots; quest routes take priority.
    -- Unmatched rods keep the current spot.
    -- Empty keeps the current position.

    ["Potato FPS Boost"] = {
        ["Enabled"] = true,             -- Apply the selected graphics mode.
        ["Mode"] = "Aggressive",           -- "Smooth" or "Aggressive".
    },

    ["FPS Cap"] = {
        ["Enabled"] = true,             -- Enable the FPS limit.
        ["Value"] = 60,                 -- 8, 15, 30, 60, 120, 240 FPS; default 60.
    },

    ["Hide Other Player"] = true,    -- Hide other players on this client.
    ["Disable Fishing Animation"] = true, -- Suppress fishing animations and pause local character animations.
    ["Always Bright"] = false,           -- Bright lighting with less fog.
}
    
script_key = "YOUR KEY"
loadstring(game:HttpGet("https://limbohub.my.id/hub/kaitunfishit.lua"))()
