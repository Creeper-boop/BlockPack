execute on passengers on attacker run scoreboard players operation test_player_uid bpg_editor_constants = @s bpg_player_uid
scoreboard players operation test_editor_uid bpg_editor_constants = @s bpg_editor_uid

execute on passengers run data remove entity @s attack

execute as @e[type=item, tag=bpg_editor] if score @s bpg_player_uid = test_player_uid bpg_editor_constants if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run tag @s add bpg_editor_item

execute if entity @e[tag=bpg_editor_item] on passengers run kill @s

execute at @s if entity @e[tag=bpg_editor_item] run function editor:data/drop

execute as @e[type=interaction, tag=bpg_editor_placement] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s

tag @e remove bpg_editor_item