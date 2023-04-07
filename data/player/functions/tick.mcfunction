execute as @a run function player:handler
stopsound @a player entity.player.levelup

execute as @e[tag=bpg_player_interaction] run function player:interaction

scoreboard players reset @a bpg_player_crouch
execute as @a if score @s bpg_player_sprint matches 1.. run scoreboard players reset @s bpg_player_sprint