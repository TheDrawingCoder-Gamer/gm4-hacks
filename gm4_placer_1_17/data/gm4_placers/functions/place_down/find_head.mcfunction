# @s = fill replacing armor stand
# run from place_down/place_relocated_block

# replace the head with a command block
scoreboard players set fill_success gm4_pl_data 0
scoreboard players set fill_counter gm4_pl_data -5
tp @s ~ ~-5 ~
execute at @s run function gm4_placers:place_down/replace_head

# find the command block with raycasting
scoreboard players set fill_counter gm4_pl_data 0
execute at @s run tp @s ~ ~-1 ~
execute at @s run function gm4_placers:place_down/find_command_block

# set command block command to the head's command
execute at @s run data merge block ~ ~ ~ {CustomName:'{"text":"Marked Placed Block"}'}
execute at @s run data modify block ~ ~ ~ Command set from entity @s ArmorItems[0].tag.gm4_placement_data.Command

execute at @e[type=armor_stand,tag=gm4_placer_fill] run playsound minecraft:block.beacon.activate block @a[distance=..8] ~ ~ ~ 1 2
execute at @s if block ~ ~ ~ command_block{CustomName:'{"text":"Marked Placed Block"}'} run kill @s
