--[[-------------------------------------------------------------------------
Purpose: This is where you set up everything for your schema. Title, description,
author, currency, custom flags.
---------------------------------------------------------------------------]]

-- Schema info
SCHEMA.name = "Skeleton"
SCHEMA.author = "Zoephix"
SCHEMA.desc = "A template project to kickstart schema development."

-- Set the currency
-- Symbol, singular tense of currency, plural tense of currency
nut.currency.set("$", "dollar", "dollars")

-- Custom flag, flags are used to give access to certain restrictions.
nut.flag.add("C", "Gives access to the custom class.")

-- Additional files that aren't auto-included should be included here using nut.util.include,
-- while doing so make sure that the file has the proper naming scheme.

-- The prefixes in front indicate how the file should be loaded.

-- i.e
-- "cl_example.lua" for clientside files
-- "sh_example.lua" for shared files
-- "sv_example.lua" for serverside files

-- Include additional clientside

-- Include additional shared

-- Include additional serverside
nut.util.include( "sv_hooks.lua" )
