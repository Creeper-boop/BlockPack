execute on target run scoreboard players operation test_player_uid bpg_editor_constants = @s bpg_player_uid
scoreboard players operation test_editor_uid bpg_editor_constants = @s bpg_editor_uid

execute as @e[tag=bpg_editor, type=item] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants if score @s bpg_player_uid = test_player_uid bpg_editor_constants run function editor:close

data remove entity @s interaction