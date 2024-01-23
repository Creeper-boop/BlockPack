scoreboard objectives remove bpg_player_constants

scoreboard objectives remove bpg_player_uid

scoreboard objectives remove bpg_player_xp_points
scoreboard objectives remove bpg_player_xp_levels

scoreboard objectives remove bpg_player_mana_current
scoreboard objectives remove bpg_player_mana_regen
scoreboard objectives remove bpg_player_mana_max
scoreboard objectives remove bpg_player_mana_mapped

scoreboard objectives remove bpg_player_xp_orb_value
scoreboard objectives remove bpg_player_xp_orb_multiplier


scoreboard objectives remove bpg_player_level_current
scoreboard objectives remove bpg_player_level_xp
scoreboard objectives remove bpg_player_level_next
scoreboard objectives remove bpg_player_level_required

kill @e[tag=bpg_player_interaction]

reload

scoreboard objectives add bpg_player_constants dummy

scoreboard players set level_mult bpg_player_constants 2
scoreboard players set last_used_uid bpg_player_constants -1

scoreboard objectives add bpg_player_uid dummy

scoreboard objectives add bpg_player_xp_points dummy
scoreboard objectives add bpg_player_xp_levels dummy

scoreboard objectives add bpg_player_mana_current dummy
scoreboard objectives add bpg_player_mana_regen dummy
scoreboard objectives add bpg_player_mana_max dummy
scoreboard objectives add bpg_player_mana_mapped dummy

scoreboard objectives add bpg_player_xp_orb_value dummy
scoreboard objectives add bpg_player_xp_orb_multiplier dummy

scoreboard objectives add bpg_player_level_current dummy
scoreboard objectives add bpg_player_level_xp dummy
scoreboard objectives add bpg_player_level_next dummy
scoreboard objectives add bpg_player_level_required dummy

scoreboard objectives add bpg_player_show_health health
scoreboard objectives add bpg_player_show_level level

scoreboard objectives setdisplay below_name bpg_player_show_health
scoreboard objectives setdisplay list bpg_player_show_level

scoreboard objectives add bpg_player_crouch minecraft.custom:minecraft.sneak_time
scoreboard objectives add bpg_player_sprint minecraft.custom:sprint_one_cm

data modify storage bpg_player xp_orbs set value []

advancement revoke @a everything
