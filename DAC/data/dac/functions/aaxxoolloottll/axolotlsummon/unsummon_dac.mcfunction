execute at @e[tag=DAC] run tellraw @p ["",{"text":"[DAC] ","color":"yellow"},{"text":"left the game","color":"yellow"}]
execute at @e[tag=DAC] run playsound minecraft:item.totem.use ambient @a ~ ~ ~ 25 2
execute at @e[tag=DAC] run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 100 force
tp @e[tag=DAC] ~ -700 ~
kill @e[tag=DAC]


