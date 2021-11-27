# @s = fill replacing armor stand
# run from self and place_down/find_head

tp @s ^ ^ ^0.01
scoreboard players add fill_counter gm4_pl_data 1
execute unless score fill_counter gm4_pl_data matches 500.. unless block ~ ~ ~ command_block{CustomName:'{"text":"Placed Block"}'} at @s run function gm4_placers:place_down/find_command_block
