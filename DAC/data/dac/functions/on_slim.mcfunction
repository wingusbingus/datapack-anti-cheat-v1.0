    # BANNERS
# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnSlim = 0 (#dac:slim_blocks)
scoreboard players set @a[tag=p1noSlim] DACisOnSlim 1
scoreboard players set @a[tag=p2noSlim] DACisOnSlim 1
scoreboard players set @a[tag=p3noSlim] DACisOnSlim 1
scoreboard players set @a[tag=p4noSlim] DACisOnSlim 1
scoreboard players set @a[tag=p5noSlim] DACisOnSlim 1
# unless at least 1 of 4 points on ground, DACisOnSlim = 1 (ground)
scoreboard players set @a[tag=!p1noSlim,tag=!p2noSlim,tag=!p3noSlim,tag=!p4noSlim,tag=!p5noSlim] DACisOnSlim 0



# Activates ground points
execute as @a at @s if block ~0.299 ~-0.8 ~0.299 #dac:slim_blocks run tag @s add p1noSlim
execute as @a at @s if block ~-0.299 ~-0.8 ~0.299 #dac:slim_blocks run tag @s add p2noSlim
execute as @a at @s if block ~0.299 ~-0.8 ~-0.299 #dac:slim_blocks run tag @s add p3noSlim
execute as @a at @s if block ~-0.299 ~-0.8 ~-0.299 #dac:slim_blocks run tag @s add p4noSlim

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-0.8 ~0.299 #dac:slim_blocks run tag @s remove p1noSlim
execute as @a at @s unless block ~-0.299 ~-0.8 ~0.299 #dac:slim_blocks run tag @s remove p2noSlim
execute as @a at @s unless block ~0.299 ~-0.8 ~-0.299 #dac:slim_blocks run tag @s remove p3noSlim
execute as @a at @s unless block ~-0.299 ~-0.8 ~-0.299 #dac:slim_blocks run tag @s remove p4noSlim