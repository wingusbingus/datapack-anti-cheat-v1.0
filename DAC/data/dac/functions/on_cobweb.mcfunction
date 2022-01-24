# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnCWeb = 0 (cobweb)
scoreboard players set @a[tag=p1noCWeb] DACisOnCWeb 1
scoreboard players set @a[tag=p2noCWeb] DACisOnCWeb 1
scoreboard players set @a[tag=p3noCWeb] DACisOnCWeb 1
scoreboard players set @a[tag=p4noCWeb] DACisOnCWeb 1
# unless at least 1 of 4 points on ground, DACisOnCWeb = 1 (ground)
scoreboard players set @a[tag=!p1noCWeb,tag=!p2noCWeb,tag=!p3noCWeb,tag=!p4noCWeb] DACisOnCWeb 0



# Activates ground points
execute as @a at @s if block ~0.299 ~0.1 ~0.299 cobweb run tag @s add p1noCWeb
execute as @a at @s if block ~-0.299 ~0.1 ~0.299 cobweb run tag @s add p2noCWeb
execute as @a at @s if block ~0.299 ~0.1 ~-0.299 cobweb run tag @s add p3noCWeb
execute as @a at @s if block ~-0.299 ~0.1 ~-0.299 cobweb run tag @s add p4noCWeb

execute as @a at @s if block ~0.299 ~ ~0.299 cobweb run tag @s add p1noCWeb
execute as @a at @s if block ~-0.299 ~ ~0.299 cobweb run tag @s add p2noCWeb
execute as @a at @s if block ~0.299 ~ ~-0.299 cobweb run tag @s add p3noCWeb
execute as @a at @s if block ~-0.299 ~ ~-0.299 cobweb run tag @s add p4noCWeb

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~0.1 ~0.299 cobweb run tag @s remove p1noCWeb
execute as @a at @s unless block ~-0.299 ~0.1 ~0.299 cobweb run tag @s remove p2noCWeb
execute as @a at @s unless block ~0.299 ~0.1 ~-0.299 cobweb run tag @s remove p3noCWeb
execute as @a at @s unless block ~-0.299 ~0.1 ~-0.299 cobweb run tag @s remove p4noCWeb