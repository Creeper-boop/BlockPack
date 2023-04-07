execute store result score @s bpg_player_xp_orb_value run data get storage bpg_player xp_orbs[0].Damage
execute store result score @s bpg_player_xp_orb_multiplier run data get storage bpg_player xp_orbs[0].xp_multiplier

scoreboard players operation @s bpg_player_xp_orb_value *= @s bpg_player_xp_orb_multiplier
scoreboard players operation @s bpg_player_level_xp += @s bpg_player_xp_orb_value

data remove storage bpg_player xp_orbs[0]

execute if data storage bpg_player xp_orbs[0] run function player:xp/recursive