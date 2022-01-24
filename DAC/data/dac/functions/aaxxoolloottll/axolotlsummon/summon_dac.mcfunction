execute at @s unless entity @e[tag=DAC] run tellraw @p ["",{"text":"[DAC] ","color":"yellow"},{"text":"joined the game","color":"yellow"}]
execute at @s unless entity @e[tag=DAC] run playsound minecraft:block.amethyst_cluster.place ambient @a ~ ~ ~ 5 2


kill @e[tag=DAC]
kill @e[tag=DACai]
execute unless entity @e[tag=DAC] run summon minecraft:axolotl ~ ~ ~ {Tags:[DAC],CustomName:"\"Mr. DAC\"",Variant:4,NoAI:0,ActiveEffects:[{Id:10,Amplifier:2,Duration:999999,ShowParticles:0b},{Id:11,Amplifier:1,Duration:999999,ShowParticles:0b},{Id:22,Amplifier:5,Duration:999999,ShowParticles:0b}]}



