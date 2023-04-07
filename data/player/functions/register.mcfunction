execute store result score @s bpg_player_uid run scoreboard players add last_used_uid bpg_player_constants 1

execute at @s summon interaction run scoreboard players operation @s bpg_player_uid = last_used_uid bpg_player_constants
execute as @e[type=interaction] if score @s bpg_player_uid = last_used_uid bpg_player_constants run data merge entity @s {width: 1.5f, height: 2.718f, Tags:["bpg_player_interaction"]}

scoreboard players set @s bpg_player_mana_current 0
scoreboard players set @s bpg_player_mana_regen 1
scoreboard players set @s bpg_player_mana_max 100

scoreboard players set @s bpg_player_level_current 0
scoreboard players set @s bpg_player_level_xp 0
scoreboard players set @s bpg_player_level_required 10