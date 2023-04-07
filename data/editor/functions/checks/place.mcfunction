execute on target run scoreboard players operation test_player_uid bpg_editor_constants = @s bpg_player_uid
scoreboard players operation test_editor_uid bpg_editor_constants = @s bpg_editor_uid

execute as @e[tag=bpg_editor, type=item] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants if score @s bpg_player_uid = test_player_uid bpg_editor_constants run tag @s add bpg_editor_item


execute if entity @s[tag=bpg_editor_placement_x] if entity @e[tag=bpg_editor_item] as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants at @s run summon block_display ~.25 ~ ~ {Tags:["bpg_editor", "bpg_editor_data", "bpg_editor_expand"]}
execute if entity @s[tag=bpg_editor_placement_x] as @e[tag=bpg_editor_expand] run scoreboard players set @s bpg_editor_x 1000

execute if entity @s[tag=bpg_editor_placement_-x] if entity @e[tag=bpg_editor_item] as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants at @s run summon block_display ~-.25 ~ ~ {Tags:["bpg_editor", "bpg_editor_data", "bpg_editor_expand"]}
execute if entity @s[tag=bpg_editor_placement_-x] as @e[tag=bpg_editor_expand] run scoreboard players set @s bpg_editor_x -1000

execute if entity @s[tag=bpg_editor_placement_y] if entity @e[tag=bpg_editor_item] as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants at @s run summon block_display ~ ~.25 ~ {Tags:["bpg_editor", "bpg_editor_data", "bpg_editor_expand"]}
execute if entity @s[tag=bpg_editor_placement_y] as @e[tag=bpg_editor_expand] run scoreboard players set @s bpg_editor_y 1000

execute if entity @s[tag=bpg_editor_placement_-y] if entity @e[tag=bpg_editor_item] as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants at @s run summon block_display ~ ~-.25 ~ {Tags:["bpg_editor", "bpg_editor_data", "bpg_editor_expand"]}
execute if entity @s[tag=bpg_editor_placement_-y] as @e[tag=bpg_editor_expand] run scoreboard players set @s bpg_editor_y -1000

execute if entity @s[tag=bpg_editor_placement_z] if entity @e[tag=bpg_editor_item] as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants at @s run summon block_display ~ ~ ~.25 {Tags:["bpg_editor", "bpg_editor_data", "bpg_editor_expand"]}
execute if entity @s[tag=bpg_editor_placement_z] as @e[tag=bpg_editor_expand] run scoreboard players set @s bpg_editor_z 1000

execute if entity @s[tag=bpg_editor_placement_-z] if entity @e[tag=bpg_editor_item] as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants at @s run summon block_display ~ ~ ~-.25 {Tags:["bpg_editor", "bpg_editor_data", "bpg_editor_expand"]}
execute if entity @s[tag=bpg_editor_placement_-z] as @e[tag=bpg_editor_expand] run scoreboard players set @s bpg_editor_z -1000

execute if entity @e[tag=bpg_editor_expand] run function editor:data/place

data remove entity @s interaction

execute if entity @e[tag=bpg_editor_item] as @e[type=interaction, tag=bpg_editor_placement] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s

tag @e remove bpg_editor_expand
tag @e remove bpg_editor_item