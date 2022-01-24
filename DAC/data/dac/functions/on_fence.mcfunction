    # BANNERS
# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnFence = 0 (#dac:fence_blocks)
scoreboard players set @a[tag=p1noFen] DACisOnFence 1
scoreboard players set @a[tag=p2noFen] DACisOnFence 1
scoreboard players set @a[tag=p3noFen] DACisOnFence 1
scoreboard players set @a[tag=p4noFen] DACisOnFence 1
scoreboard players set @a[tag=p5noFen] DACisOnFence 1
# unless at least 1 of 4 points on ground, DACisOnFence = 1 (ground)
scoreboard players set @a[tag=!p1noFen,tag=!p2noFen,tag=!p3noFen,tag=!p4noFen,tag=!p5noFen] DACisOnFence 0



# Activates ground points
execute as @a at @s if block ~0.299 ~-0.8 ~0.299 #dac:fence_blocks run tag @s add p1noFen
execute as @a at @s if block ~-0.299 ~-0.8 ~0.299 #dac:fence_blocks run tag @s add p2noFen
execute as @a at @s if block ~0.299 ~-0.8 ~-0.299 #dac:fence_blocks run tag @s add p3noFen
execute as @a at @s if block ~-0.299 ~-0.8 ~-0.299 #dac:fence_blocks run tag @s add p4noFen

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-0.8 ~0.299 #dac:fence_blocks run tag @s remove p1noFen
execute as @a at @s unless block ~-0.299 ~-0.8 ~0.299 #dac:fence_blocks run tag @s remove p2noFen
execute as @a at @s unless block ~0.299 ~-0.8 ~-0.299 #dac:fence_blocks run tag @s remove p3noFen
execute as @a at @s unless block ~-0.299 ~-0.8 ~-0.299 #dac:fence_blocks run tag @s remove p4noFen