scoreboard players operation test_editor_uid bpg_editor_constants = @s bpg_editor_uid

execute on origin unless data entity @s SelectedItem.tag.connections.x as @e[type=interaction, tag=bpg_editor_placement_-x] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s
execute on origin unless data entity @s SelectedItem.tag.connections.-x as @e[type=interaction, tag=bpg_editor_placement_x] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s

execute on origin unless data entity @s SelectedItem.tag.connections.y as @e[type=interaction, tag=bpg_editor_placement_-y] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s
execute on origin unless data entity @s SelectedItem.tag.connections.-y as @e[type=interaction, tag=bpg_editor_placement_y] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s

execute on origin unless data entity @s SelectedItem.tag.connections.z as @e[type=interaction, tag=bpg_editor_placement_-z] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s
execute on origin unless data entity @s SelectedItem.tag.connections.-z as @e[type=interaction, tag=bpg_editor_placement_z] if score @s bpg_editor_uid = test_editor_uid bpg_editor_constants run kill @s