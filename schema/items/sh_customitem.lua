-- Set the item display name
ITEM.name = "Special Watermelon"
-- Set a basic description for the item
ITEM.desc = "It's not just a watermelon."
-- The model this item will use
ITEM.model = "models/props_junk/watermelon01.mdl"
-- How much slots the item takes up in the inventory
ITEM.width = 1
ITEM.height = 1

-- Set allowed factions
ITEM.factions = { FACTION_BOSS }

-- Item function for assigning
ITEM.functions.Assign = {
    onRun = function( item )
        -- Item owner
        local client = item.player

        -- If the player health is not full, restore it :)
        if (client:Health() < 100) then
            -- Restores the health
            client:SetHealth(client:GetMaxHealth())

            -- Tell the player the melon took it's effect
            client:notify( "Your health has been restored by the almighty melon." )

            -- Since the action succeeded, return true so the item gets removed
            return true
        end

        -- Return false and prevent the item from being removed,
        -- since the player already had full health
        return false
    end,

    -- Check if the player is allowed to use the item
    onCanRun = function( item )
        -- Returns whether the player is one of the allowed factions
        return item.factions[ item.player:getChar():getFaction() ]
    end
}
