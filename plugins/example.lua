local PLUGIN = PLUGIN

-- Sets the name for this plugin
PLUGIN.name = "Example Plugin"
-- The one who created this plugin
PLUGIN.author = "Zoephix"
-- A description to explain what the plugin does
PLUGIN.desc = "Adds a shared function to check whether the player is in observer."

local playerMeta = FindMetaTable("Player")

-- Returns whether a player is currently in observer
function playerMeta:isObserving()
	if (self:GetMoveType() == MOVETYPE_NOCLIP and !self:InVehicle()) then
		return true
	else
		return false
	end
end
