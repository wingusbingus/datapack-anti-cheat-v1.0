# If 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnGround = 0 (air)
scoreboard players set @a[tag=p1noG,tag=p2noG,tag=p3noG,tag=p4noG] DACisOnGround 0
# If at least 1 of 4 points on ground, DACisOnGround = 1 (ground)
scoreboard players set @a[tag=!p1noG] DACisOnGround 1
scoreboard players set @a[tag=!p2noG] DACisOnGround 1
scoreboard players set @a[tag=!p3noG] DACisOnGround 1
scoreboard players set @a[tag=!p4noG] DACisOnGround 1

scoreboard players set @a[scores={DACisOnFence=1}] DACisOnGround 1
scoreboard players set @a[scores={DACisOnSlim=1}] DACisOnGround 1

# Activates ground points
execute as @a at @s if block ~0.299 ~-0.1 ~0.299 air run tag @s add p1noG
execute as @a at @s if block ~-0.299 ~-0.1 ~0.299 air run tag @s add p2noG
execute as @a at @s if block ~0.299 ~-0.1 ~-0.299 air run tag @s add p3noG
execute as @a at @s if block ~-0.299 ~-0.1 ~-0.299 air run tag @s add p4noG

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-0.1 ~0.299 air run tag @s remove p1noG
execute as @a at @s unless block ~-0.299 ~-0.1 ~0.299 air run tag @s remove p2noG
execute as @a at @s unless block ~0.299 ~-0.1 ~-0.299 air run tag @s remove p3noG
execute as @a at @s unless block ~-0.299 ~-0.1 ~-0.299 air run tag @s remove p4noG