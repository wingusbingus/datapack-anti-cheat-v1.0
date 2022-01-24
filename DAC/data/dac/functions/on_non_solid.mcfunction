    # BANNERS
# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnNonSolid = 0 (#dac:transparent_blocks)
scoreboard players set @a[tag=p1nonSb] DACisOnNonSolid 1
scoreboard players set @a[tag=p2nonSb] DACisOnNonSolid 1
scoreboard players set @a[tag=p3nonSb] DACisOnNonSolid 1
scoreboard players set @a[tag=p4nonSb] DACisOnNonSolid 1
scoreboard players set @a[tag=p5nonSb] DACisOnNonSolid 1
# unless at least 1 of 4 points on ground, DACisOnNonSolid = 1 (ground)
scoreboard players set @a[tag=!p1nonSb,tag=!p2nonSb,tag=!p3nonSb,tag=!p4nonSb,tag=!p5nonSb] DACisOnNonSolid 0



# Activates ground points
execute as @a at @s if block ~0.299 ~0.1 ~0.299 #dac:transparent_blocks run tag @s add p1nonSb
execute as @a at @s if block ~-0.299 ~0.1 ~0.299 #dac:transparent_blocks run tag @s add p2nonSb
execute as @a at @s if block ~0.299 ~0.1 ~-0.299 #dac:transparent_blocks run tag @s add p3nonSb
execute as @a at @s if block ~-0.299 ~0.1 ~-0.299 #dac:transparent_blocks run tag @s add p4nonSb

execute as @a at @s if block ~0.299 ~ ~0.299 #dac:transparent_blocks run tag @s add p1nonSb
execute as @a at @s if block ~-0.299 ~ ~0.299 #dac:transparent_blocks run tag @s add p2nonSb
execute as @a at @s if block ~0.299 ~ ~-0.299 #dac:transparent_blocks run tag @s add p3nonSb
execute as @a at @s if block ~-0.299 ~ ~-0.299 #dac:transparent_blocks run tag @s add p4nonSb

execute as @a at @s if block ~ ~ ~ #dac:transparent_blocks run tag @s add p5nonSb

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~0.1 ~0.299 #dac:transparent_blocks run tag @s remove p1nonSb
execute as @a at @s unless block ~-0.299 ~0.1 ~0.299 #dac:transparent_blocks run tag @s remove p2nonSb
execute as @a at @s unless block ~0.299 ~0.1 ~-0.299 #dac:transparent_blocks run tag @s remove p3nonSb
execute as @a at @s unless block ~-0.299 ~0.1 ~-0.299 #dac:transparent_blocks run tag @s remove p4nonSb

execute as @a at @s unless block ~ ~ ~ #dac:transparent_blocks run tag @s remove p5nonSb