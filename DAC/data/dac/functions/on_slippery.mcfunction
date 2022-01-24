# If 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOnSlippery = 0 (#ice)
scoreboard players set @a[tag=!p1noSlip,tag=!p2noSlip,tag=!p3noSlip,tag=!p4noSlip] DACisOnSlippery 0
# If at least 1 of 4 points on ground, DACisOnSlippery = 1 (ground)
scoreboard players set @a[tag=p1noSlip] DACisOnSlippery 1
scoreboard players set @a[tag=p2noSlip] DACisOnSlippery 1
scoreboard players set @a[tag=p3noSlip] DACisOnSlippery 1
scoreboard players set @a[tag=p4noSlip] DACisOnSlippery 1


# Activates ground points
execute as @a at @s if block ~0.299 ~-0.01 ~0.299 #ice run tag @s add p1noSlip
execute as @a at @s if block ~-0.299 ~-0.01 ~0.299 #ice run tag @s add p2noSlip
execute as @a at @s if block ~0.299 ~-0.01 ~-0.299 #ice run tag @s add p3noSlip
execute as @a at @s if block ~-0.299 ~-0.01 ~-0.299 #ice run tag @s add p4noSlip

# Deactivates ground points
execute as @a at @s unless block ~0.299 ~-0.01 ~0.299 #ice run tag @s remove p1noSlip
execute as @a at @s unless block ~-0.299 ~-0.01 ~0.299 #ice run tag @s remove p2noSlip
execute as @a at @s unless block ~0.299 ~-0.01 ~-0.299 #ice run tag @s remove p3noSlip
execute as @a at @s unless block ~-0.299 ~-0.01 ~-0.299 #ice run tag @s remove p4noSlip