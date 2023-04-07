data modify storage bpg_player xp_orbs append from entity @s Inventory[{tag:{xp_orb:1b}}].tag
clear @s wooden_sword{xp_orb:1b}

execute if data storage bpg_player xp_orbs[0] run function player:xp/recursive