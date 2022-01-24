# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnWater = 0 (water)
scoreboard players set @a[tag=p1noGw] DACisOnWater 1
scoreboard players set @a[tag=p2noGw] DACisOnWater 1
scoreboard players set @a[tag=p3noGw] DACisOnWater 1
scoreboard players set @a[tag=p4noGw] DACisOnWater 1
# unless at least 1 of 4 points on ground, DACisOnWater = 1 (ground)
scoreboard players set @a[tag=!p1noGw,tag=!p2noGw,tag=!p3noGw,tag=!p4noGw] DACisOnWater 0



# Activates ground points
execute as @a at @s if block ~0.299 ~0.1 ~0.299 water run tag @s add p1noGw
execute as @a at @s if block ~-0.299 ~0.1 ~0.299 water run tag @s add p2noGw
execute as @a at @s if block ~0.299 ~0.1 ~-0.299 water run tag @s add p3noGw
execute as @a at @s if block ~-0.299 ~0.1 ~-0.299 water run tag @s add p4noGw

execute as @a at @s if block ~0.299 ~ ~0.299 water run tag @s add p1noGw
execute as @a at @s if block ~-0.299 ~ ~0.299 water run tag @s add p2noGw
execute as @a at @s if block ~0.299 ~ ~-0.299 water run tag @s add p3noGw
execute as @a at @s if block ~-0.299 ~ ~-0.299 water run tag @s add p4noGw

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~0.1 ~0.299 water run tag @s remove p1noGw
execute as @a at @s unless block ~-0.299 ~0.1 ~0.299 water run tag @s remove p2noGw
execute as @a at @s unless block ~0.299 ~0.1 ~-0.299 water run tag @s remove p3noGw
execute as @a at @s unless block ~-0.299 ~0.1 ~-0.299 water run tag @s remove p4noGw