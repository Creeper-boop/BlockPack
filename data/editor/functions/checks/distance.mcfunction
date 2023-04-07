scoreboard players operation test_player_uid bpg_editor_constants = @s bpg_player_uid
tag @s add bpg_editor_item
execute as @a if score @s bpg_player_uid = test_player_uid bpg_editor_constants at @s as @e[tag=bpg_editor_item, distance=16..] run function editor:close
tag @e remove bpg_editor_item