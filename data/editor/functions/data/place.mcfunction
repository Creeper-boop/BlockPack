execute as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run scoreboard players operation @e[tag=bpg_editor_expand] bpg_editor_x += @s bpg_editor_x
execute as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run scoreboard players operation @e[tag=bpg_editor_expand] bpg_editor_y += @s bpg_editor_y
execute as @e[type=block_display, tag=bpg_editor_data, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run scoreboard players operation @e[tag=bpg_editor_expand] bpg_editor_z += @s bpg_editor_z

execute on target if data entity @s SelectedItem.tag.breakable run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_breakable

execute on target if data entity @s SelectedItem.tag.connections.x run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_x
execute on target if data entity @s SelectedItem.tag.connections.-x run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_-x

execute on target if data entity @s SelectedItem.tag.connections.y run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_y
execute on target if data entity @s SelectedItem.tag.connections.-y run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_-y

execute on target if data entity @s SelectedItem.tag.connections.z run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_z
execute on target if data entity @s SelectedItem.tag.connections.-z run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_-z

execute on target store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_type run data get entity @s SelectedItem.tag.type

execute on target run data modify entity @e[tag=bpg_editor_expand, limit=1] block_state set from entity @s SelectedItem.tag.block_state
execute on target run data modify entity @e[tag=bpg_editor_expand, limit=1] transformation.scale set from entity @s SelectedItem.tag.scale
execute on target run data modify entity @e[tag=bpg_editor_expand, limit=1] transformation.translation set from entity @s SelectedItem.tag.translation

execute if entity @e[tag=bpg_editor_expand, tag=bpg_editor_breakable, limit=1] run summon interaction ~ ~ ~ {Tags:["bpg_editor", "bpg_editor_summon"], width: 0.25f, height: 0.25f}

execute if entity @e[tag=bpg_editor_expand, tag=bpg_editor_breakable, limit=1] run ride @e[type=interaction, tag=bpg_editor_summon, limit=1] mount @e[tag=bpg_editor_expand, tag=bpg_editor_breakable, limit=1]

scoreboard players operation @e[tag=bpg_editor_expand] bpg_editor_uid = test_editor_uid bpg_editor_constants
scoreboard players operation @e[tag=bpg_editor_summon] bpg_editor_uid = test_editor_uid bpg_editor_constants

execute on target run item modify entity @s weapon editor:place

tag @e remove bpg_editor_summon