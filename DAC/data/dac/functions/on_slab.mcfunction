# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnSlab = 0 (#slabs)
scoreboard players set @a[tag=p1noSlab] DACisOnSlab 1
scoreboard players set @a[tag=p2noSlab] DACisOnSlab 1
scoreboard players set @a[tag=p3noSlab] DACisOnSlab 1
scoreboard players set @a[tag=p4noSlab] DACisOnSlab 1
# unless at least 1 of 4 points on ground, DACisOnSlab = 1 (ground)
scoreboard players set @a[tag=!p1noSlab,tag=!p2noSlab,tag=!p3noSlab,tag=!p4noSlab] DACisOnSlab 0



# Activates ground points
execute as @a at @s if block ~0.299 ~-0.5 ~0.299 #slabs run tag @s add p1noSlab
execute as @a at @s if block ~-0.299 ~-0.5 ~0.299 #slabs run tag @s add p2noSlab
execute as @a at @s if block ~0.299 ~-0.5 ~-0.299 #slabs run tag @s add p3noSlab
execute as @a at @s if block ~-0.299 ~-0.5 ~-0.299 #slabs run tag @s add p4noSlab

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-0.5 ~0.299 #slabs run tag @s remove p1noSlab
execute as @a at @s unless block ~-0.299 ~-0.5 ~0.299 #slabs run tag @s remove p2noSlab
execute as @a at @s unless block ~0.299 ~-0.5 ~-0.299 #slabs run tag @s remove p3noSlab
execute as @a at @s unless block ~-0.299 ~-0.5 ~-0.299 #slabs run tag @s remove p4noSlab