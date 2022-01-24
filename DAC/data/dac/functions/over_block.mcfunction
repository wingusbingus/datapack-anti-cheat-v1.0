# If 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOverGround = 0 (air)
scoreboard players set @a[tag=p1noOG,tag=p2noOG,tag=p3noOG,tag=p4noOG] DACisOverGround 0
# If at least 1 of 4 points on ground, DACisOverGround = 1 (ground)
scoreboard players set @a[tag=!p1noOG] DACisOverGround 1
scoreboard players set @a[tag=!p2noOG] DACisOverGround 1
scoreboard players set @a[tag=!p3noOG] DACisOverGround 1
scoreboard players set @a[tag=!p4noOG] DACisOverGround 1

scoreboard players set @a[scores={DACisOnFence=1}] DACisOverGround 1
scoreboard players set @a[scores={DACisOnSlim=1}] DACisOverGround 1

# Activates ground points
execute as @a at @s if block ~0.299 ~-1.5 ~0.299 air run tag @s add p1noOG
execute as @a at @s if block ~-0.299 ~-1.5 ~0.299 air run tag @s add p2noOG
execute as @a at @s if block ~0.299 ~-1.5 ~-0.299 air run tag @s add p3noOG
execute as @a at @s if block ~-0.299 ~-1.5 ~-0.299 air run tag @s add p4noOG

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-1.5 ~0.299 air run tag @s remove p1noOG
execute as @a at @s unless block ~-0.299 ~-1.5 ~0.299 air run tag @s remove p2noOG
execute as @a at @s unless block ~0.299 ~-1.5 ~-0.299 air run tag @s remove p3noOG
execute as @a at @s unless block ~-0.299 ~-1.5 ~-0.299 air run tag @s remove p4noOG