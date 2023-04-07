scoreboard objectives remove bpg_editor_constants

scoreboard objectives remove bpg_editor_uid

scoreboard objectives remove bpg_editor_type

scoreboard objectives remove bpg_editor_x
scoreboard objectives remove bpg_editor_y
scoreboard objectives remove bpg_editor_z

kill @e[tag=bpg_editor]

reload

scoreboard objectives add bpg_editor_constants dummy

scoreboard players set last_used_uid bpg_editor_constants -1
scoreboard players set test_player_uid bpg_editor_constants -1
scoreboard players set test_editor_uid bpg_editor_constants -1

scoreboard objectives add bpg_editor_uid dummy

scoreboard objectives add bpg_editor_type dummy

scoreboard objectives add bpg_editor_x dummy
scoreboard objectives add bpg_editor_y dummy
scoreboard objectives add bpg_editor_z dummy
