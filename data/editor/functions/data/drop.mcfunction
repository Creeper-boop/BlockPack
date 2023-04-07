summon item ~ ~ ~ {Tags:["bpg_editor_dropped"], Item:{id:"minecraft:red_stained_glass_pane", Count:1, tag:{type:0}}}

execute store result entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.type int 1 run scoreboard players get @s bpg_editor_type

execute if entity @s[tag=bpg_editor_breakable] run data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.breakable set value 1b

execute if entity @s[tag=bpg_editor_x] run data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.connections.x set value 1b
execute if entity @s[tag=bpg_editor_-x] run data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.connections.-x set value 1b

execute if entity @s[tag=bpg_editor_y] run data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.connections.y set value 1b
execute if entity @s[tag=bpg_editor_-y] run data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.connections.-y set value 1b

execute if entity @s[tag=bpg_editor_z] run data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.connections.z set value 1b
execute if entity @s[tag=bpg_editor_-z] run data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.connections.-z set value 1b

data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.block_state set from entity @s block_state
data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.scale set from entity @s transformation.scale
data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.tag.translation set from entity @s transformation.translation

data modify entity @e[tag=bpg_editor_dropped, limit=1] Item.id set from entity @s block_state.Name
data modify entity @e[tag=bpg_editor_dropped, limit=1] Owner set from entity @e[tag=bpg_editor_item, limit=1] Owner

execute as @a if score @s bpg_player_uid = @e[tag=bpg_editor_item, limit=1] bpg_player_uid run tp @e[tag=bpg_editor_dropped, limit=1] @s

tag @e remove bpg_editor_dropped

kill @s