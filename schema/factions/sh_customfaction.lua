-- The name used to display the faction
FACTION.name = "Custom Faction"
-- Set a basic description for the faction,
-- this will show on the character creation menu.
FACTION.desc = "Custom faction for only some people to use."
-- Set the faction color, this color is used in various areas,
-- such as the scoreboard and chat.
FACTION.color = Color(255, 0, 0)
-- Whether or not the faction is whitelisted.
FACTION.isDefault = false
-- Each configured payday the faction salary will be given
FACTION.pay = 40
-- Whether or not everyone can recognize this faction,
-- without needing to use F3 to allow manual recognition.
FACTION.isGloballyRecognized = true

-- Assigns default spawning weapons for this faction
FACTION.weapons = {
	"stunstick"
}

-- Set playermodels which players can select from upon character creation.
FACTION.models = {
	"models/alyx.mdl",
	"models/police.mdl"
}

-- Set a unique identifier for this faction,
-- this is used when deriving the faction from the player.
FACTION_CUSTOM = FACTION.index
