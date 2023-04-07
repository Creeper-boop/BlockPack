execute as @e[type=minecraft:item, tag=!bpg_editor] if data entity @s Item.tag.weapon if data entity @s Thrower unless score @s bpg_player_uid matches -2147483648..2147483647 run data merge entity @s {Invulnerable:1b, PickupDelay:32767s, Age:-32768s, Tags:["bpg_editor"]}
execute as @e[type=minecraft:item, tag=bpg_editor, nbt={OnGround:1b}] if data entity @s[nbt=!{NoGravity:1b}] Item.tag.weapon at @s run function editor:summon

execute as @e[type=interaction, tag=bpg_editor_close] if data entity @s interaction run function editor:checks/interaction
execute as @e[type=item, tag=bpg_editor, nbt={NoGravity:1b}] run function editor:checks/distance
execute as @e[type=item, tag=bpg_editor, nbt={NoGravity:1b}] run function editor:checks/held

execute as @e[type=block_display, tag=bpg_editor_data] if data entity @s Passengers.[].attack run function editor:checks/break

execute as @a if data entity @s SelectedItem.tag.type run function editor:placement
execute as @e[type=interaction, tag=bpg_editor_placement] if data entity @s interaction at @s run function editor:checks/place