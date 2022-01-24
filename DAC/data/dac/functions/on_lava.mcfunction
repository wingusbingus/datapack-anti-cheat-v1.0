# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnLava = 0 (Lava)
scoreboard players set @a[tag=p1noLav] DACisOnLava 1
scoreboard players set @a[tag=p2noLav] DACisOnLava 1
scoreboard players set @a[tag=p3noLav] DACisOnLava 1
scoreboard players set @a[tag=p4noLav] DACisOnLava 1
# unless at least 1 of 4 points on ground, DACisOnLava = 1 (ground)
scoreboard players set @a[tag=!p1noLav,tag=!p2noLav,tag=!p3noLav,tag=!p4noLav] DACisOnLava 0



# Activates ground points
execute as @a at @s if block ~0.299 ~0.1 ~0.299 lava run tag @s add p1noLav
execute as @a at @s if block ~-0.299 ~0.1 ~0.299 lava run tag @s add p2noLav
execute as @a at @s if block ~0.299 ~0.1 ~-0.299 lava run tag @s add p3noLav
execute as @a at @s if block ~-0.299 ~0.1 ~-0.299 lava run tag @s add p4noLav

execute as @a at @s if block ~0.299 ~ ~0.299 lava run tag @s add p1noLav
execute as @a at @s if block ~-0.299 ~ ~0.299 lava run tag @s add p2noLav
execute as @a at @s if block ~0.299 ~ ~-0.299 lava run tag @s add p3noLav
execute as @a at @s if block ~-0.299 ~ ~-0.299 lava run tag @s add p4noLav

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~0.1 ~0.299 lava run tag @s remove p1noLav
execute as @a at @s unless block ~-0.299 ~0.1 ~0.299 lava run tag @s remove p2noLav
execute as @a at @s unless block ~0.299 ~0.1 ~-0.299 lava run tag @s remove p3noLav
execute as @a at @s unless block ~-0.299 ~0.1 ~-0.299 lava run tag @s remove p4noLav