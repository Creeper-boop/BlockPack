execute on attacker if data entity @s SelectedItem.tag.weapon unless score @s bpg_player_crouch matches 1.. unless score @s bpg_player_sprint matches 1.. run function weapon:attack
execute on attacker if data entity @s SelectedItem.tag.weapon if score @s bpg_player_crouch matches 1.. unless score @s bpg_player_sprint matches 1.. run function weapon:attack_crouch
execute on attacker if data entity @s SelectedItem.tag.weapon unless score @s bpg_player_crouch matches 1.. if score @s bpg_player_sprint matches 1.. run function weapon:attack_sprint
execute on target if data entity @s SelectedItem.tag.weapon unless score @s bpg_player_crouch matches 1.. unless score @s bpg_player_sprint matches 1.. run function weapon:interact
execute on target if data entity @s SelectedItem.tag.weapon if score @s bpg_player_crouch matches 1.. unless score @s bpg_player_sprint matches 1.. run function weapon:interact_crouch
execute on target if data entity @s SelectedItem.tag.weapon unless score @s bpg_player_crouch matches 1.. if score @s bpg_player_sprint matches 1.. run function weapon:interact_sprint

data remove entity @s attack
data remove entity @s interaction