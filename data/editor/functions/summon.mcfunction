data merge entity @s {NoGravity:1b, Motion:[0d, 0d, 0d]}
data modify entity @s Owner set from entity @s Thrower
execute store result score @s bpg_player_uid on origin run scoreboard players get @s bpg_player_uid

scoreboard players add last_used_uid bpg_editor_constants 1
execute as @e[type=item, tag=bpg_editor] if score @s bpg_editor_uid = last_used_uid bpg_editor_constants run function editor:close

execute summon interaction run data merge entity @s {width:0.5f, height:0.5f, Tags:["bpg_editor", "bpg_editor_close"]}

execute store result score @s bpg_editor_x run data get entity @s Pos[0] 1000
execute store result score @s bpg_editor_y run data get entity @s Pos[1] 1000
execute store result score @s bpg_editor_z run data get entity @s Pos[2] 1000

execute if data entity @s Item.tag.weapon[0] run function editor:data/expand

execute as @e[tag=bpg_editor] unless score @s bpg_editor_uid matches -2147483648..2147483647 store result score @s bpg_editor_uid run scoreboard players get last_used_uid bpg_editor_constants