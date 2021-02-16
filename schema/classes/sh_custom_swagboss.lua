-- Set the display name for this class
CLASS.name = "Swag Boss"
-- Set the description for this class
CLASS.desc = "Custom class for the custonm faction."
-- Which faction this class belongs to
CLASS.faction = FACTION_CUSTOM

--[[-------------------------------------------------------------------------
Purpose: Who in the faction is allowed to become this class?
---------------------------------------------------------------------------]]
function CLASS:onCanBe(client)
	--If the client has the custom flag B then allow them to become this class.
	if client:getChar():hasFlags("B") then
		return true
	end
end

-- Set a unique identifier for this class,
-- this is used when deriving the class from the player.
CLASS_CUSTOM_SWAGBOSS = CLASS.index
