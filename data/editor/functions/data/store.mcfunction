tag @s add bpg_editor_processed

data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon append value {connections:{}, type:0, Pos:[0d, 0d, 0d], block_state:{Name:"minecraft:air"}, scale:[0f, 0f, 0f], translation:[0f, 0f, 0f]}

execute store result entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].type int 1 run scoreboard players get @s bpg_editor_type

execute if entity @s[tag=bpg_editor_breakable] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].breakable set value 1b

execute if entity @s[tag=bpg_editor_x] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].connections.x set value 1b
execute if entity @s[tag=bpg_editor_-x] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].connections.-x set value 1b

execute if entity @s[tag=bpg_editor_y] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].connections.y set value 1b
execute if entity @s[tag=bpg_editor_-y] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].connections.-y set value 1b

execute if entity @s[tag=bpg_editor_z] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].connections.z set value 1b
execute if entity @s[tag=bpg_editor_-z] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].connections.-z set value 1b

data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].block_state set from entity @s block_state
data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].scale set from entity @s transformation.scale
data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].translation set from entity @s transformation.translation

execute store result entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].Pos[0] double 0.001 run scoreboard players get @s bpg_editor_x
execute store result entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].Pos[1] double 0.001 run scoreboard players get @s bpg_editor_y
execute store result entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1].Pos[2] double 0.001 run scoreboard players get @s bpg_editor_z

execute if entity @s[tag=bpg_editor_x] positioned ~.25 ~ ~ as @e[type=block_display, tag=bpg_editor_data, tag=!bpg_editor_processed, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run function editor:data/store
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-2].children append from entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data remove entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
kill @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child]

execute if entity @s[tag=bpg_editor_-x] positioned ~-.25 ~ ~ as @e[type=block_display, tag=bpg_editor_data, tag=!bpg_editor_processed, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run function editor:data/store
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-2].children append from entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data remove entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
kill @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child]

execute if entity @s[tag=bpg_editor_y] positioned ~ ~.25 ~ as @e[type=block_display, tag=bpg_editor_data, tag=!bpg_editor_processed, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run function editor:data/store
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-2].children append from entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data remove entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
kill @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child]

execute if entity @s[tag=bpg_editor_-y] positioned ~ ~-.25 ~ as @e[type=block_display, tag=bpg_editor_data, tag=!bpg_editor_processed, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run function editor:data/store
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-2].children append from entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data remove entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
kill @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child]

execute if entity @s[tag=bpg_editor_z] positioned ~ ~ ~.25 as @e[type=block_display, tag=bpg_editor_data, tag=!bpg_editor_processed, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run function editor:data/store
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-2].children append from entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data remove entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
kill @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child]

execute if entity @s[tag=bpg_editor_-z] positioned ~ ~ ~-.25 as @e[type=block_display, tag=bpg_editor_data, tag=!bpg_editor_processed, distance=..0.1] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run function editor:data/store
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data modify entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-2].children append from entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
execute if entity @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child] run data remove entity @e[tag=bpg_editor_item, limit=1] Item.tag.weapon[-1]
kill @e[type=block_display, tag=bpg_editor_data, tag=bpg_editor_child]

tag @s add bpg_editor_child