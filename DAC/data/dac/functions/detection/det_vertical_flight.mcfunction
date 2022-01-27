# Detects Y coord. & stores it at DACycoord SC
execute as @a store result score @s DACycoord run data get entity @s Pos[1] 10
# Adds DACmaxycoord (value 0) the value of DACycoord
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s DACtimeOnAir20 matches 2 run scoreboard players operation @s DACmaxycoord += @s DACycoord


# DACmaxycoord (w/ DACycoord value) gets added 20
    execute as @a[gamemode=!creative,gamemode=!spectator] if score @s DACtimeOnAir matches 2 run scoreboard players operation @s DACmaxycoord += 5 constants
# DACmaxycoord (w/ DACycoord value) gets added 30 (IF PLAYER HAS JUMP BOOST AMPF. 0-1)
    execute as @a[gamemode=!creative,gamemode=!spectator,nbt={ActiveEffects:[{Id:8b, Amplifier:0b}]}] if score @s DACtimeOnAir matches 2 run scoreboard players operation @s DACmaxycoord += 15 constants
    execute as @a[gamemode=!creative,gamemode=!spectator,nbt={ActiveEffects:[{Id:8b, Amplifier:1b}]}] if score @s DACtimeOnAir matches 2 run scoreboard players operation @s DACmaxycoord += 15 constants
# DACmaxycoord (w/ DACycoord value) gets added 35 (IF PLAYER HAS JUMP BOOST AMPF. 2 AND/OR LEVITATION)
    execute as @a[gamemode=!creative,gamemode=!spectator,nbt={ActiveEffects:[{Id:8b, Amplifier:2b}]}] if score @s DACtimeOnAir matches 2 run scoreboard players operation @s DACmaxycoord += 20 constants
    execute as @a[gamemode=!creative,gamemode=!spectator,nbt={ActiveEffects:[{Id:25b, Amplifier:1b}]}] if score @s DACtimeOnAir matches 2 run scoreboard players operation @s DACmaxycoord += 20 constants

# Prevents False-Positive by KB
    execute as @a[] at @s if score @s DACtimeOnAir20 matches 2 if entity @e[type=minecraft:iron_golem,distance=..5] run scoreboard players operation @s DACmaxycoord += 20 constants
    execute as @a[] at @s if score @s DACtimeOnAir20 matches 2 if entity @e[type=minecraft:ender_dragon,distance=..1000] run scoreboard players operation @s DACmaxycoord += 1500 constants

# Resets DACmaxycoord (1 tick before it gets updated to match DACycoord's value & get added 20)
execute as @a[gamemode=!creative,gamemode=!spectator,scores={DACisOnGround=1}] at @s run scoreboard players reset @s DACmaxycoord
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s DACtimeOnAir20 matches 20 run scoreboard players reset @s DACmaxycoord



# Adds 1 to DDACVertFlight
execute as @a[gamemode=!creative,gamemode=!spectator,scores={DACisOnGround=0,DACisOverGround=0},nbt=!{HurtTime:9s},nbt=!{RootVehicle:{}}] at @s if score @s DACycoord > @s DACmaxycoord run scoreboard players add @s DDACVertFlight 1
# TPs to Last Ground
execute as @a[gamemode=!creative,gamemode=!spectator,scores={DACisOnGround=0,DACisOverGround=0},nbt=!{HurtTime:9s},nbt=!{RootVehicle:{}}] at @s if score @s DACycoord > @s DACmaxycoord run tp @s @e[limit=1,sort=nearest,tag=DAClastGround]
# Tags player
execute as @a[gamemode=!creative,gamemode=!spectator,scores={DACisOnGround=0,DACisOverGround=0},nbt=!{HurtTime:9s},nbt=!{RootVehicle:{}}] at @s if score @s DACycoord > @s DACmaxycoord run tag @s add DDACVertFlight

execute as @a[tag=DDACVertFlight,tag=DDACVFlightNew] at @s run tag @s remove DDACVertFlight
execute as @a[tag=DDACVFlightNew] at @s run tag @s remove DDACVFlightNew
execute as @a[tag=DDACVertFlight,tag=!DDACVFlightNew] at @s run tag @s add DDACVFlightNew





# So it don't trigger after coming out of spec. mode VV
execute as @a[gamemode=!survival,gamemode=!adventure,scores={DACisOnGround=0}] at @s run scoreboard players reset @s DACmaxycoord

# Last Ground (TPs to last ground player was on before triggering flight)
#execute as @a[gamemode=!creative,gamemode=!spectator] at @s if score @s DACtimeOnAir matches 1 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Small:1,Tags:[DAClastGround]}
#scoreboard players add @e[tag=DAClastGround] DACtimer 1
#kill @e[tag=DAClastGround,type=minecraft:armor_stand,scores={DACtimer=20..}]
