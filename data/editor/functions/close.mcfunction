scoreboard players operation test_editor_uid bpg_editor_constants = @s bpg_editor_uid
scoreboard players operation test_player_uid bpg_editor_constants = @s bpg_player_uid

tag @s add bpg_editor_item

execute at @s positioned ~ ~1.25 ~ as @e[tag=bpg_editor_data, type=block_display, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants at @s run function editor:data/store

data modify entity @s PickupDelay set value 0
execute as @a if score @s bpg_player_uid = test_player_uid bpg_editor_constants run tp @e[tag=bpg_editor_item] @s

execute as @e[tag=bpg_editor_data, type=block_display] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants unless entity @s[tag=bpg_editor_processed] at @s run function editor:data/drop
execute as @e[tag=bpg_editor, type=!item] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s

tag @e remove bpg_editor_item