execute if score gm4 load.status matches 1 if score gm4_custom_crafters load.status matches 1 run scoreboard players set gm4_placers load.status 1
execute unless score gm4 load.status matches 1 run data modify storage gm4:log queue append value {type:"missing",module:"Placers",require:"Gamemode 4"}
execute unless score gm4_custom_crafters load.status matches 1 run data modify storage gm4:log queue append value {type:"missing",module:"{Placers}",require:"Custom Crafters"}

execute if score gm4_placers load.status matches 1 run function gm4_placers:init
