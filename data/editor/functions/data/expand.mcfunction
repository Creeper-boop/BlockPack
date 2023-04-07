summon block_display ~ ~ ~ {Tags:["bpg_editor", "bpg_editor_data", "bpg_editor_expand"]}

execute if data entity @s Item.tag.weapon[0].breakable run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_breakable

execute if data entity @s Item.tag.weapon[0].connections.x run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_x
execute if data entity @s Item.tag.weapon[0].connections.-x run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_-x

execute if data entity @s Item.tag.weapon[0].connections.y run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_y
execute if data entity @s Item.tag.weapon[0].connections.-y run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_-y

execute if data entity @s Item.tag.weapon[0].connections.z run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_z
execute if data entity @s Item.tag.weapon[0].connections.-z run tag @e[tag=bpg_editor_expand, limit=1] add bpg_editor_-z

execute store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_type run data get entity @s Item.tag.weapon[0].type

data modify entity @e[tag=bpg_editor_expand, limit=1] block_state set from entity @s Item.tag.weapon[0].block_state
data modify entity @e[tag=bpg_editor_expand, limit=1] transformation.scale set from entity @s Item.tag.weapon[0].scale
data modify entity @e[tag=bpg_editor_expand, limit=1] transformation.translation set from entity @s Item.tag.weapon[0].translation

execute store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_x run data get entity @s Item.tag.weapon[0].Pos[0] 250
execute store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_y run data get entity @s Item.tag.weapon[0].Pos[1] 250
execute store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_z run data get entity @s Item.tag.weapon[0].Pos[2] 250

execute store result entity @e[tag=bpg_editor_expand, limit=1] Pos[0] double 0.001 run scoreboard players operation @e[tag=bpg_editor_expand, limit=1] bpg_editor_x += @s bpg_editor_x
execute store result entity @e[tag=bpg_editor_expand, limit=1] Pos[1] double 0.001 run scoreboard players operation @e[tag=bpg_editor_expand, limit=1] bpg_editor_y += @s bpg_editor_y
execute store result entity @e[tag=bpg_editor_expand, limit=1] Pos[2] double 0.001 run scoreboard players operation @e[tag=bpg_editor_expand, limit=1] bpg_editor_z += @s bpg_editor_z

execute store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_x run data get entity @s Item.tag.weapon[0].Pos[0] 1000
execute store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_y run data get entity @s Item.tag.weapon[0].Pos[1] 1000
execute store result score @e[tag=bpg_editor_expand, limit=1] bpg_editor_z run data get entity @s Item.tag.weapon[0].Pos[2] 1000

execute if entity @e[tag=bpg_editor_expand, tag=bpg_editor_breakable, limit=1] run summon interaction ~ ~ ~ {Tags:["bpg_editor", "bpg_editor_summon"], width: 0.25f, height: 0.25f}

execute if entity @e[tag=bpg_editor_expand, tag=bpg_editor_breakable, limit=1] run ride @e[type=interaction, tag=bpg_editor_summon, limit=1] mount @e[tag=bpg_editor_expand, tag=bpg_editor_breakable, limit=1]

tag @e remove bpg_editor_expand
tag @e remove bpg_editor_summon

execute if data entity @s Item.tag.weapon[0].children run data modify entity @s Item.tag.weapon append from entity @s Item.tag.weapon[0].children[]
data remove entity @s Item.tag.weapon[0]
execute if data entity @s Item.tag.weapon[0] run function editor:data/expand