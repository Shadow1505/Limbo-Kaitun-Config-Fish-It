_G.FishItConfig = {
    ["Fishing"] = {
        ["Instant Fishing"] = false,     -- Instant Fishing V1 with automatic timing.
        ["Perfect Result"] = false,     -- Fixed Perfect casts; Diamond quest may override.
        ["Random Result"] = false,      -- Random cast power; Perfect takes priority.
    },

    ["Favorite"] = {
        ["Auto Favorite"] = false,       -- Protect matching fish from selling and outgoing trades.
        ["Fish Name"] = {
            "Sacred Guardian Squid",               -- Any mutation.
            { Name = "Ruby", Variant = "Gemstone" }, -- Ruby with Gemstone mutation.
            -- { Variant = "Corrupt" },             -- example: match any fish with this mutation
            -- { Tier = "Secret" },                 -- example: match any Secret fish
        }, -- Match any rule; match all fields within it.
        -- Empty uses default Squid/Ruby rules.
    },

    ["Selling"] = {
        ["Auto Sell"] = false,           -- Sell at the count limit or near full capacity.
        ["Auto Sell Threshold"] = "Legendary", -- Sell up to: "Legendary", "Mythic", or "Secret".
        ["Auto Sell Count"] = 1000000,      -- Fish count, not seconds.
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
        ["Auto Aetherion Bait"] = false,  -- Complete Crystalline Secrets;
        ["Minimum Rod"] = "Starter Rod",-- Requires this exact rod in inventory.
    },

    ["Event"] = {
        ["Start Farm"] = false,         -- Farm selected events while active.
        ["Event List"] = {
            ["Blizzard Elemental Event"] = true,
            ["Storm Elemental Event"] = true,
            ["Volcano Elemental Event"] = true,
            ["Mutant Runic Koi"] = true,
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
            "Midnight Rod",
            "Angler Rod",
        }, -- Buy in order; equip new inventory-confirmed upgrades.
        -- Keep existing equipment. Empty buys nothing.
    },

    ["Bait List"] = {
        ["Auto Buy"] = false,            -- Buy listed upgrades from shops or merchant.
        ["Buy List"] = {
            "Midnight Bait",
            "Aether Bait",
            "Singularity Bait",
        }, -- Buy in order; keep current bait until upgraded.
        -- Singularity uses merchant. Empty buys nothing.
    },

    ["Potions"] = {
        ["Auto Use"] = false,            -- Use owned potion stacks.
    },

    ["Totems"] = {
        ["Auto Use"] = false,           -- Place the first selected totem.
        ["Auto Buy"] = false,           -- Restock to Quantity; requires Auto Use.
        ["Totem List"] = { "Luck Totem", "Mutation Totem" }, -- Place first entry; restock all entries.
        ["Quantity"] = 0,               -- Stock target per totem.
        ["Minimum Rod"] = "Ghostfinn Rod", -- Requires this exact rod in inventory.
        -- Shop: "Luck Totem", "Shiny Totem", "Mutation Totem".
        -- Empty: place Luck Totem; buy nothing.
    },

    ["Weather"] = {
        ["Auto Buy"] = false,            -- Buy the first available selected weather.
        ["Weather List"] = { "Fog", "Storm", "Wind" }, -- Checked in order; empty buys nothing.
        ["Minimum Rod"] = "Ghostfinn Rod", -- Requires this exact rod in inventory.
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
        ["Whitelist Username"] = { "username1", "username2" }, -- Roblox usernames; empty sends no offers.
        ["Category Fish"] = { "None", "None" },-- Fish tiers, combined with Fish Name matches.
        ["Fish Name"] = {},             -- Names or { Name = "Ruby", Variant = "Gemstone" }.
        ["Item Name"] = {
            "Enchant Stone",
            "None",
            "None",
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
        ["Use Evolved Stone"] = false,   -- true: Evolved Stone; false: normal Enchant Stone.
        ["Second Enchant"] = false,     -- Enchant slot 2; requires Auto Enchant and stones.
        ["Enchant List"] = {            -- Altar 1: first entry is final target; empty skips.
            "SECRET Hunter",
            "Reeler II",
            "Shark Hunter",
            "Mutation Hunter III",
            "Prismatic I",
        },
        ["Second Enchant List"] = {     -- Altar 2 targets; empty skips.
            "Stormhunter I",
            "Reeler I",
            "Prismatic I",
            "Mutation Hunter II",
        },
        ["Minimum Rod"] = "Ghostfinn Rod", -- Requires this exact rod in inventory.
        -- Altar 2 uses Transcended Stone, then Withering Stone.
    },

    ["Create Transcended Stone"] = {
        ["Auto Create"] = false,        -- Sacrifice an allowed Secret fish; level 200+.
        ["Allows no Sacrifice"] = {
            "All",                      -- Any Secret fish, or use exact fish names.
        }, -- Empty allows no sacrifice.
        -- Does not check favorite or quest protection.
        -- Element Quest crafting runs separately.
    },

    ["WebHook"] = {
        ["Auto Sending"] = false,        -- Send personal fish/item/quest-rod notifications.
        ["Link Webhook"] = "https://discord.com/api/webhooks/...",               -- Your Discord webhook URL.
        ["Link Webhook Quest Complete"] = "https://discord.com/api/webhooks/...", -- Quest-rod URL; blank uses Link Webhook.
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

    -- Use plain names: "Copper Canyon", "Crater Island".
    ["Location Rods"] = {
        ["Kohana Volcano"] = { "Grass Rod", "Midnight Rod" },
        ["Tropical Grove"] = { "Astral Rod" },
        ["Treasure Room"]  = { "Element Rod", "Ghostfinn Rod", "Diamond Rod" },
    }, -- Fallback fishing spots; quest routes take priority.
    -- Unmatched rods keep the current spot.
    -- Empty keeps the current position.

    ["Potato FPS Boost"] = {
        ["Enabled"] = true,             -- Apply the selected graphics mode.
        ["Mode"] = "Smooth",           -- "Smooth" or "Aggressive".
    },

    ["FPS Cap"] = {
        ["Enabled"] = true,             -- Enable the FPS limit.
        ["Value"] = 60,                 -- 8, 15, 30, 60, 120, 240 FPS; default 60.
    },

    ["Hide Other Player"] = true,    -- Hide other players on this client.
    ["Disable Fishing Animation"] = true, -- Suppress fishing animations and pause local character animations.
    ["Always Bright"] = true,           -- Bright lighting with less fog.
}
    
loadstring(game:HttpGet("https://limbohub.my.id/hub/kaitunfishit.lua"))()
