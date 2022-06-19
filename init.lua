----------------------------------------------------------
--        ___ _                         _  _ _____      --
--       | __| |_____ __ _____ _ _ ___ | \| |_   _|     --
--       | _|| / _ \ V  V / -_) '_(_-< | .` | | |       --
--       |_| |_\___/\_/\_/\___|_| /__/ |_|\_| |_|       --
----------------------------------------------------------
--         Flowers Node Timer for Minetest Game         --
----------------------------------------------------------

-- modname and path
local m_name = minetest.get_current_modname()
local m_path = minetest.get_modpath(m_name)

-- setup mod global table and registered flowers table
flowers_nt_minetestgame = {}


-- Specific game files to load
local game_id = Settings(minetest.get_worldpath()..DIR_DELIM..'world.mt'):get('gameid')

-- Check for Ethereal
local is_ethereal = minetest.get_modpath("ethereal")

	if game_id == "minetest" and not is_ethereal then
		dofile(m_path.. "/i_mtg_settings.lua" )
	elseif is_ethereal then
		minetest.debug("[MOD] flowers_nt_minetestgame - Please download flowers_nt_ethereal for ethereal support")	
	else
		minetest.debug("[MOD] flowers_nt_minetestgame - This mod is designed for base Minetest Game, no flower settings have been loaded")	
	end

-- if Bonemeal mod loaded
if minetest.get_modpath("bonemeal") ~= nil then
	dofile(m_path.. "/i_bonemeal_override.lua" )		
end