    # WATER
# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOverWater = 0 (water)
scoreboard players set @a[tag=!p1noOWater] DACisOverWater 0
scoreboard players set @a[tag=!p2noOWater] DACisOverWater 0
scoreboard players set @a[tag=!p3noOWater] DACisOverWater 0
scoreboard players set @a[tag=!p4noOWater] DACisOverWater 0
# unless at least 1 of 4 points on ground, DACisOverWater = 1 (ground)
scoreboard players set @a[tag=p1noOWater,tag=p2noOWater,tag=p3noOWater,tag=p4noOWater] DACisOverWater 1



# Activates ground points
execute as @a[scores={DACisOnGround=0}] at @s if block ~0.301 ~-1.3 ~0.301 water run tag @s add p1noOWater
execute as @a[scores={DACisOnGround=0}] at @s if block ~-0.301 ~-1.3 ~0.301 water run tag @s add p2noOWater
execute as @a[scores={DACisOnGround=0}] at @s if block ~0.301 ~-1.3 ~-0.301 water run tag @s add p3noOWater
execute as @a[scores={DACisOnGround=0}] at @s if block ~-0.301 ~-1.3 ~-0.301 water run tag @s add p4noOWater

execute as @a[scores={DACisOnGround=1}] at @s if block ~0.301 ~-0.3 ~0.301 water run tag @s add p1noOWater
execute as @a[scores={DACisOnGround=1}] at @s if block ~-0.301 ~-0.3 ~0.301 water run tag @s add p2noOWater
execute as @a[scores={DACisOnGround=1}] at @s if block ~0.301 ~-0.3 ~-0.301 water run tag @s add p3noOWater
execute as @a[scores={DACisOnGround=1}] at @s if block ~-0.301 ~-0.3 ~-0.301 water run tag @s add p4noOWater

# Deactivates ground points
execute as @a[scores={DACisOnGround=0}] at @s unless block ~0.301 ~-1.3 ~0.301 water run tag @s remove p1noOWater
execute as @a[scores={DACisOnGround=0}] at @s unless block ~-0.301 ~-1.3 ~0.301 water run tag @s remove p2noOWater
execute as @a[scores={DACisOnGround=0}] at @s unless block ~0.301 ~-1.3 ~-0.301 water run tag @s remove p3noOWater
execute as @a[scores={DACisOnGround=0}] at @s unless block ~-0.301 ~-1.3 ~-0.301 water run tag @s remove p4noOWater

execute as @a[scores={DACisOnGround=1}] at @s unless block ~0.301 ~-0.3 ~0.301 water run tag @s remove p1noOWater
execute as @a[scores={DACisOnGround=1}] at @s unless block ~-0.301 ~-0.3 ~0.301 water run tag @s remove p2noOWater
execute as @a[scores={DACisOnGround=1}] at @s unless block ~0.301 ~-0.3 ~-0.301 water run tag @s remove p3noOWater
execute as @a[scores={DACisOnGround=1}] at @s unless block ~-0.301 ~-0.3 ~-0.301 water run tag @s remove p4noOWater





    # LAVA
# unless 4 points (X;Y, -X;Y, X;-Y, -X;-Y) deactivated, DACisOverLava = 0 (lava)
scoreboard players set @a[tag=!p1noOLava] DACisOverLava 0
scoreboard players set @a[tag=!p2noOLava] DACisOverLava 0
scoreboard players set @a[tag=!p3noOLava] DACisOverLava 0
scoreboard players set @a[tag=!p4noOLava] DACisOverLava 0
# unless at least 1 of 4 points on ground, DACisOverLava = 1 (ground)
scoreboard players set @a[tag=p1noOLava,tag=p2noOLava,tag=p3noOLava,tag=p4noOLava] DACisOverLava 1



# Activates ground points
execute as @a at @s if block ~0.301 ~-1.3 ~0.301 lava run tag @s add p1noOLava
execute as @a at @s if block ~-0.301 ~-1.3 ~0.301 lava run tag @s add p2noOLava
execute as @a at @s if block ~0.301 ~-1.3 ~-0.301 lava run tag @s add p3noOLava
execute as @a at @s if block ~-0.301 ~-1.3 ~-0.301 lava run tag @s add p4noOLava

# Deactivates ground points
execute as @a at @s unless block ~0.301 ~-1.3 ~0.301 lava run tag @s remove p1noOLava
execute as @a at @s unless block ~-0.301 ~-1.3 ~0.301 lava run tag @s remove p2noOLava
execute as @a at @s unless block ~0.301 ~-1.3 ~-0.301 lava run tag @s remove p3noOLava
execute as @a at @s unless block ~-0.301 ~-1.3 ~-0.301 lava run tag @s remove p4noOLava







# If player is right over WATER but not touching it for 0.25s => trigger "jesus" cheat
execute as @a[scores={DACisOverWater=1,DACisOnWater=0,DACjesusTimer=5}] at @s unless entity @e[type=!player,distance=..1.6] run tag @s add DDACJesus
execute as @a[scores={DACisOverWater=1,DACisOnWater=0,DACjesusTimer=5}] at @s unless entity @e[type=!player,distance=..1.6] run scoreboard players set @s DACjesusTimer 0

execute as @a[scores={DACisOverWater=1,DACisOnWater=0,DACjesusTimer=4}] at @s unless entity @e[type=!player,distance=..1.6] run scoreboard players set @s DACjesusTimer 5
execute as @a[scores={DACisOverWater=1,DACisOnWater=0,DACjesusTimer=3}] at @s unless entity @e[type=!player,distance=..1.6] run scoreboard players set @s DACjesusTimer 4
execute as @a[scores={DACisOverWater=1,DACisOnWater=0,DACjesusTimer=2}] at @s unless entity @e[type=!player,distance=..1.6] run scoreboard players set @s DACjesusTimer 3
execute as @a[scores={DACisOverWater=1,DACisOnWater=0,DACjesusTimer=1}] at @s unless entity @e[type=!player,distance=..1.6] run scoreboard players set @s DACjesusTimer 2
execute as @a[scores={DACisOverWater=1,DACisOnWater=0,DACjesusTimer=0}] at @s unless entity @e[type=!player,distance=..1.6] run scoreboard players set @s DACjesusTimer 1

# If player is right over LAVA but not touching it for 0.25s => trigger "jesus" cheat
execute as @a[scores={DACisOverLava=1,DACisOnLava=0,DACjesusTimer=5}] run tag @s add DDACJesus
execute as @a[scores={DACisOverLava=1,DACisOnLava=0,DACjesusTimer=5}] run scoreboard players set @s DACjesusTimer 0

execute as @a[scores={DACisOverLava=1,DACisOnLava=0,DACjesusTimer=4}] run scoreboard players set @s DACjesusTimer 5
execute as @a[scores={DACisOverLava=1,DACisOnLava=0,DACjesusTimer=3}] run scoreboard players set @s DACjesusTimer 4
execute as @a[scores={DACisOverLava=1,DACisOnLava=0,DACjesusTimer=2}] run scoreboard players set @s DACjesusTimer 3
execute as @a[scores={DACisOverLava=1,DACisOnLava=0,DACjesusTimer=1}] run scoreboard players set @s DACjesusTimer 2
execute as @a[scores={DACisOverLava=1,DACisOnLava=0,DACjesusTimer=0}] run scoreboard players set @s DACjesusTimer 1




# If the jesusTimer SC's chain is interrupted, scoreboard gets set back to 0
execute as @a[scores={DACisOnWater=1}] run scoreboard players set @s DACjesusTimer 0
execute as @a at @s unless block ~ ~-1.3 ~ water run scoreboard players set @s DACjesusTimer 0


scoreboard players add @a[tag=DDACJesus,tag=DDACJesusNew] DDACJesus 1

execute as @a[tag=DDACJesus,tag=DDACJesusNew] at @s run tag @s remove DDACJesus
execute as @a[tag=DDACJesusNew] at @s run tag @s remove DDACJesusNew
execute as @a[tag=DDACJesus,tag=!DDACJesusNew] at @s run tag @s add DDACJesusNew
