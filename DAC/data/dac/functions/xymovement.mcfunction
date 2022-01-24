    # X coord variation
# 2 ticks before repeat DAClastxcoord gets assigned DACxcoord value
execute as @a[scores={DACtimeSinceMove=15}] at @s run scoreboard players operation @s DAClastxcoord = @s DACxcoord
# DACxcoord = x coordenate
execute as @a store result score @s DACxcoord run data get entity @s Pos[0] 10
# If DACxcoord doesn't match DAClastxcoord => player moved, DACtimeSinceMove starts again.
execute as @a[scores={DACtimeSinceMove=0}] at @s unless score @s DACxcoord = @s DAClastxcoord run scoreboard players set @s DACtimeSinceMove 1


# Decimeters moved
execute as @a[scores={DACtimeSinceMove=16}] run scoreboard players operation @s DAClastxcoord -= @s DACxcoord
execute as @a[scores={DACtimeSinceMove=16}] if score @s DAClastxcoord <= 0 constants run scoreboard players operation @s DACsavexcoord = @s DAClastxcoord
execute as @a[scores={DACtimeSinceMove=17..18}] if score @s DAClastxcoord <= 0 constants run scoreboard players operation @s DAClastxcoord -= @s DACsavexcoord



    # Y coord variation
# 2 ticks before repeat DAClastzcoord gets assigned DACzcoord value
execute as @a[scores={DACtimeSinceMove=15}] at @s run scoreboard players operation @s DAClastzcoord = @s DACzcoord
# DACzcoord = x coordenate
execute as @a store result score @s DACzcoord run data get entity @s Pos[2] 10
# If DACzcoord doesn't match DAClastzcoord => player moved, DACtimeSinceMove starts again.
execute as @a[scores={DACtimeSinceMove=0}] at @s unless score @s DACzcoord = @s DAClastzcoord run scoreboard players set @s DACtimeSinceMove 1


# Decimeters moved
execute as @a[scores={DACtimeSinceMove=16}] run scoreboard players operation @s DAClastzcoord -= @s DACzcoord
execute as @a[scores={DACtimeSinceMove=16}] if score @s DAClastzcoord <= 0 constants run scoreboard players operation @s DACsavezcoord = @s DAClastzcoord
execute as @a[scores={DACtimeSinceMove=17..18}] if score @s DAClastzcoord <= 0 constants run scoreboard players operation @s DAClastzcoord -= @s DACsavezcoord



    # X + Z = total moved
execute as @a[scores={DACtimeSinceMove=19}] run scoreboard players operation @s DAClastxcoord += @s DAClastzcoord
execute as @a[gamemode=!creative,gamemode=!spectator,scores={DACtimeSinceMove=20}] if score @s DAClastxcoord > @s DACmaxBPS run tag @s add DDACSpeed
execute as @a[gamemode=!creative,gamemode=!spectator,scores={DACtimeSinceMove=20}] if score @s DAClastxcoord > @s DACmaxBPS run scoreboard players add @s DDACSpeed 1

execute as @a[tag=DDACSpeed,tag=DDACSpeedNew] at @s run tag @s remove DDACSpeed
execute as @a[tag=DDACSpeedNew] at @s run tag @s remove DDACSpeedNew
execute as @a[tag=DDACSpeed,tag=!DDACSpeedNew] at @s run tag @s add DDACSpeedNew





    # ESSENTIAL4X&Z
execute as @a[scores={DACtimeSinceMove=20..}] at @s run scoreboard players set @s DACtimeSinceMove 0
execute as @a[scores={DACtimeSinceMove=1..}] run scoreboard players add @s DACtimeSinceMove 1