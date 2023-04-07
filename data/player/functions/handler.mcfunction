execute if score @s bpg_player_mana_current <= @s bpg_player_mana_max run scoreboard players operation @s bpg_player_mana_current += @s bpg_player_mana_regen
execute if score @s bpg_player_mana_current > @s bpg_player_mana_max run scoreboard players operation @s bpg_player_mana_current = @s bpg_player_mana_max

execute if data entity @s Inventory[{tag:{xp_orb:1b}}] run function player:xp/gain

execute if score @s bpg_player_level_xp >= @s bpg_player_level_required run function player:xp/levelup

scoreboard players operation @s bpg_player_level_next = @s bpg_player_level_required
scoreboard players operation @s bpg_player_level_next -= @s bpg_player_level_xp

title @s actionbar [{"color": "dark_green", "text": "Next level in: "}, {"color": "green", "score":{"name":"*", "objective": "bpg_player_level_next"}}]

experience set @s 242 levels
scoreboard players set @s bpg_player_mana_mapped 2048
scoreboard players operation @s bpg_player_mana_mapped /= @s bpg_player_mana_max
scoreboard players operation @s bpg_player_mana_mapped *= @s bpg_player_mana_current

experience set @s 0 points
scoreboard players set @s bpg_player_xp_points 1024
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 1024 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 512
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 512 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 256
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 256 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 128
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 128 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 64
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 64 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 32
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 32 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 16
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 16 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 8
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 8 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 4
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 4 points
execute store result score @s bpg_player_xp_points run experience query @s points
scoreboard players add @s bpg_player_xp_points 2
execute if score @s bpg_player_xp_points <= @s bpg_player_mana_mapped run experience add @s 2 points

experience set @s 0 levels
scoreboard players set @s bpg_player_xp_levels 64
execute if score @s bpg_player_xp_levels <= @s bpg_player_level_current run experience add @s 64 levels
execute store result score @s bpg_player_xp_levels run experience query @s levels
scoreboard players add @s bpg_player_xp_levels 32
execute if score @s bpg_player_xp_levels <= @s bpg_player_level_current run experience add @s 32 levels
execute store result score @s bpg_player_xp_levels run experience query @s levels
scoreboard players add @s bpg_player_xp_levels 16
execute if score @s bpg_player_xp_levels <= @s bpg_player_level_current run experience add @s 16 levels
execute store result score @s bpg_player_xp_levels run experience query @s levels
scoreboard players add @s bpg_player_xp_levels 8
execute if score @s bpg_player_xp_levels <= @s bpg_player_level_current run experience add @s 8 levels
execute store result score @s bpg_player_xp_levels run experience query @s levels
scoreboard players add @s bpg_player_xp_levels 4
execute if score @s bpg_player_xp_levels <= @s bpg_player_level_current run experience add @s 4 levels
execute store result score @s bpg_player_xp_levels run experience query @s levels
scoreboard players add @s bpg_player_xp_levels 2
execute if score @s bpg_player_xp_levels <= @s bpg_player_level_current run experience add @s 2 levels
execute store result score @s bpg_player_xp_levels run experience query @s levels
scoreboard players add @s bpg_player_xp_levels 1
execute if score @s bpg_player_xp_levels <= @s bpg_player_level_current run experience add @s 1 levels

tag @s add bpg_player

execute if data entity @s SelectedItem.tag.interaction at @s positioned ^ ^ ^1 as @e[tag=bpg_player_interaction] if score @s bpg_player_uid = @a[tag=bpg_player, limit=1] bpg_player_uid run tp @s ~ ~-.25 ~
execute unless data entity @s SelectedItem.tag.interaction at @s positioned ^ ^ ^1 as @e[tag=bpg_player_interaction] if score @s bpg_player_uid = @a[tag=bpg_player, limit=1] bpg_player_uid run tp @s ~ ~64 ~

tag @s remove bpg_player