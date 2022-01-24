    # NoFall
# PART 1: Detect when player is on air & make a point (DACfloatycoord) to detect where the jump started or the tallest point achieved in the jump (DACfloatycoord updates every 1/2 second)
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s DACtimeOnAir20 matches 1 run scoreboard players operation @s DACfloatycoord = @s DACycoord
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s DACtimeOnAir20 matches 11 run scoreboard players operation @s DACfloatycoord = @s DACycoord
scoreboard players reset @a[scores={DACisOnGround=1}] DACfloatycoord


    # PART 2: If score DACycoord (current Y value) is inferior to DACfloatycoord (tallest point in jump), player has started to fall. It also stores the health.
execute as @a at @s if score @s DACycoord < @s DACfloatycoord run scoreboard players add @s DACstartFalling 1
execute as @a at @s if score @s DACycoord < @s DACfloatycoord run scoreboard players operation @s DACstoreHealth = @s DACmodHealth


    # PART 3: Once player touches ground, the total # of ticks that the fall took (since player has started to fall) is stored in DACtimeFallen.
execute as @a[scores={DACisOnGround=1,DACstartFalling=1..}] at @s run scoreboard players operation @s DACtimeFallen = @s DACstartFalling


    # PART 4: Compare the time fallen to how much damage is expected.
execute as @a[scores={DACisOnGround=1,DACstartFalling=1..}] at @s store result score @s DACrecFDmg run scoreboard players operation @s DACstoreHealth -= @s DACmodHealth
execute as @a[tag=!DACriding,tag=!DACcFruit,nbt=!{ActiveEffects:[{Id:28b}]},scores={DACisOnWater=0,DACisOnLava=0,DACisOnNonSolid=0,DACisOnBouncy=0,DACtimeFallen=10..}] at @s if score @s DACrecFDmg < 1 constants run tag @s add DDACNoFall
execute as @a[tag=!DACriding,tag=!DACcFruit,nbt=!{ActiveEffects:[{Id:28b}]},scores={DACisOnWater=0,DACisOnLava=0,DACisOnNonSolid=0,DACisOnBouncy=1,DACtimeFallen=14..}] at @s if score @s DACrecFDmg < 1 constants run tag @s add DDACNoFall
execute as @a[tag=DDACNoFall,tag=DDACNoFallNew] at @s run scoreboard players add @s DDACNoFall 1



    # PART 5: Cycle 1 tick with the DDACNoFall tag so that the rest of the DP can see who triggered NoFall.
execute as @a[tag=DDACNoFall,tag=DDACNoFallNew] at @s run tag @s remove DDACNoFall
execute as @a[tag=DDACNoFallNew] at @s run tag @s remove DDACNoFallNew
execute as @a[tag=DDACNoFall,tag=!DDACNoFallNew] at @s run tag @s add DDACNoFallNew

    # Last PART: Reset DACstartFalling for use in the next fall
scoreboard players reset @a[scores={DACisOnGround=1}] DACstartFalling
scoreboard players reset @a DACrecFDmg




    # Float
# Using this first command could trigger false-positives.
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=2,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=4,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=6,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=8,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=10,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=12,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=14,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=16,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=18,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACfloatycoord = @s DACycoord run tag @s add DDACFloat





    # Float (similar to float; but it doesn't have to be exactly the same to trigger. Good to detect "bypass" Float & glide)
execute as @a[scores={DACfloatycoord=-700..}] at @s run scoreboard players operation @s DACminFall = @s DACfloatycoord
execute as @a[scores={DACfloatycoord=-700..}] at @s run scoreboard players operation @s DACminFall -= 5 constants
scoreboard players reset @a[scores={DACisOnGround=1}] DACminFall

execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=2,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=4,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=6,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=8,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=10,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=12,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=14,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=16,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
execute as @a[tag=!DACjump,gamemode=!creative,gamemode=!spectator,scores={DACtimeOnAir20=18,DACtimeOnAir=15..,DACmodHealth=1..},nbt=!{RootVehicle:{}}] if score @s DACminFall < @s DACycoord unless score @s DACfloatycoord <= @s DACycoord run tag @s add DDACFloat
scoreboard players add @a[tag=DDACFloat,tag=DDACFloatNew] DDACFloat 1

execute as @a[tag=DDACFloat,tag=DDACFloatNew] at @s run tag @s remove DDACFloat
execute as @a[tag=DDACFloatNew] at @s run tag @s remove DDACFloatNew
execute as @a[tag=DDACFloat,tag=!DDACFloatNew] at @s run tag @s add DDACFloatNew