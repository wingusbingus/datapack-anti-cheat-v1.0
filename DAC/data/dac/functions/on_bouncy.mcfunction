    # BEDS
# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnBouncy = 0 (#beds)
scoreboard players set @a[tag=p1noBed] DACisOnBouncy 1
scoreboard players set @a[tag=p2noBed] DACisOnBouncy 1
scoreboard players set @a[tag=p3noBed] DACisOnBouncy 1
scoreboard players set @a[tag=p4noBed] DACisOnBouncy 1
# unless at least 1 of 4 points on ground, DACisOnBouncy = 1 (ground)
scoreboard players set @a[tag=!p1noSlime,tag=!p2noSlime,tag=!p3noSlime,tag=!p4noSlime,tag=!p1noBed,tag=!p2noBed,tag=!p3noBed,tag=!p4noBed] DACisOnBouncy 0



# Activates ground points
execute as @a at @s if block ~0.299 ~-0.5 ~0.299 #beds run tag @s add p1noBed
execute as @a at @s if block ~-0.299 ~-0.5 ~0.299 #beds run tag @s add p2noBed
execute as @a at @s if block ~0.299 ~-0.5 ~-0.299 #beds run tag @s add p3noBed
execute as @a at @s if block ~-0.299 ~-0.5 ~-0.299 #beds run tag @s add p4noBed

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-0.5 ~0.299 #beds run tag @s remove p1noBed
execute as @a at @s unless block ~-0.299 ~-0.5 ~0.299 #beds run tag @s remove p2noBed
execute as @a at @s unless block ~0.299 ~-0.5 ~-0.299 #beds run tag @s remove p3noBed
execute as @a at @s unless block ~-0.299 ~-0.5 ~-0.299 #beds run tag @s remove p4noBed



    # SLIME BLOCK
# If 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnBouncy = 0 (slime_block)
scoreboard players set @a[tag=!p1noSlime,tag=!p2noSlime,tag=!p3noSlime,tag=!p4noSlime,tag=!p1noBed,tag=!p2noBed,tag=!p3noBed,tag=!p4noBed] DACisOnBouncy 0
# If at least 1 of 4 points on ground, DACisOnBouncy = 1 (ground)
scoreboard players set @a[tag=p1noSlime] DACisOnBouncy 1
scoreboard players set @a[tag=p2noSlime] DACisOnBouncy 1
scoreboard players set @a[tag=p3noSlime] DACisOnBouncy 1
scoreboard players set @a[tag=p4noSlime] DACisOnBouncy 1

# Activates ground points
execute as @a at @s if block ~0.299 ~-0.4 ~0.299 slime_block run tag @s add p1noSlime
execute as @a at @s if block ~-0.299 ~-0.4 ~0.299 slime_block run tag @s add p2noSlime
execute as @a at @s if block ~0.299 ~-0.4 ~-0.299 slime_block run tag @s add p3noSlime
execute as @a at @s if block ~-0.299 ~-0.4 ~-0.299 slime_block run tag @s add p4noSlime
# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-0.4 ~0.299 slime_block run tag @s remove p1noSlime
execute as @a at @s unless block ~-0.299 ~-0.4 ~0.299 slime_block run tag @s remove p2noSlime
execute as @a at @s unless block ~0.299 ~-0.4 ~-0.299 slime_block run tag @s remove p3noSlime
execute as @a at @s unless block ~-0.299 ~-0.4 ~-0.299 slime_block run tag @s remove p4noSlime