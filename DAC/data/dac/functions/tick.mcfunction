    # TIMER

# 1.0 seconds
scoreboard players add #ticks DACtimer 1
execute if score #ticks DACtimer >= 20 constants run scoreboard players reset #ticks DACtimer
# 0.5 seconds
scoreboard players add #10ticks DACtimer 1
execute if score #10ticks DACtimer >= 10 constants run scoreboard players reset #10ticks DACtimer

    
    #   ID (identify each player with a number)
execute as @a[tag=!DACjoined] store result score @s DACid run scoreboard players add #global DACid 1
tag @a[tag=!DACjoined] add DACjoined

    #   Player Left
execute as @a[scores={DACleft=1}] at @s run scoreboard players set @a[scores={DACleft=1},limit=1,sort=nearest] DACleft 0


    # X & Z movement
function dac:xymovement
function dac:xymaxbps

    # Health
execute as @a[nbt={HurtTime:9s}] run scoreboard players operation @s DACmodHealth = @s DAChealth
scoreboard players set @a[scores={DACmodHealth=0,DAChealth=1..}] DACmodHealth 20


    # Is On Water? (also "jesus" cheat detection)
function dac:on_water
function dac:detection/det_jesus_cheat

    # Is On Lava?
function dac:on_lava

    # Is On Non-Solid?
function dac:on_non_solid

    # Is on slippery block?
function dac:on_slippery

    # Is on cobweb?
function dac:on_cobweb

    # Is on "Bouncy" block?
function dac:on_bouncy

# Is on "Slim" block?
function dac:on_slim

    # Is on slabs?
function dac:on_slab

# Is on fences?
function dac:on_fence

# Is riding a mob?
execute as @a if data entity @s RootVehicle run tag @s add DACriding
execute as @a unless data entity @s RootVehicle run tag @s remove DACriding

    # Has eaten "Chorus Fruit" in the last 0.5s?
tag @a[scores={DACcFruit=1}] add DACcFruit
scoreboard players set @a[scores={DACcFruit=1}] DACcDownCFruit 10
scoreboard players remove @a[tag=DACcFruit] DACcDownCFruit 1
tag @a[scores={DACcDownCFruit=0}] remove DACcFruit

    # Is On Ground?
function dac:on_block
function dac:over_block

    # Is Under Ground?
function dac:under_block

    # Vertical Flight
function dac:detection/det_vertical_flight



    # Time On Air SC
execute as @a[scores={DACisOnGround=0}] at @s run scoreboard players add @s DACtimeOnAir 1
execute as @a[scores={DACisOnGround=1}] at @s run scoreboard players reset @s DACtimeOnAir

execute as @a[scores={DACisOnGround=0}] at @s run scoreboard players add @s DACtimeOnAir20 1
execute as @a[scores={DACisOnGround=1}] at @s run scoreboard players reset @s DACtimeOnAir20
execute as @a if score @s DACtimeOnAir20 > 20 constants run scoreboard players reset @s DACtimeOnAir20

    # Player Jump (it conserves the jump tag unless player spends X ticks on air)
execute as @a[scores={DACjump=1}] run tag @s add DACjump
execute as @a[tag=DACjump] run scoreboard players add @s DACjumpTimer 1
execute as @a[scores={DACjumpTimer=10}] run tag @s remove DACjump
execute as @a[scores={DACjumpTimer=10}] run scoreboard players set @s DACjumpTimer 0
scoreboard players reset @a DACjump
scoreboard players set @a[scores={DACisOnGround=1}] DACjumpTimer 0


    # NoFall & Float
function dac:detection/det_fall_dmg






    # Block Placement & Block look
tag @a remove DACillegalBPlace
tag @a remove DDACIllBPlace


function dac:detection/det_block_placement
scoreboard players set @a DACrange 20
execute as @a[advancements={dac:placed_block=true}] at @s anchored eyes run function dac:detection/det_block_look
execute as @a[tag=!DACillegalBPlace,advancements={dac:placed_block=true}] run tag @s add DDACIllBPlace

scoreboard players add @a[tag=DDACIllBPlace] DDACIllBPlace 1



    # Hit Detection
function dac:detection/det_hit




    # Experimental (enable for tests)
    
execute unless score #exp DACexperimental matches 0 run function dac:xperimental

execute as @a[tag=DACdisExp] at @s unless score #exp DACexperimental matches 0 run tellraw @a ["",{"text":"[DAC] ","bold":true,"color":"blue"},"player ",{"selector":"@s","bold":true}," disabled ",{"text":"experimental mode","underlined":true,"hoverEvent":{"action":"show_text","contents":["Experimental mode tells everyone on the server when a player is detected cheating"]}}]
execute as @a[tag=DACdisExp] at @s if score #exp DACexperimental matches 0 run tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"blue"},{"text":"experimental mode","underlined":true,"hoverEvent":{"action":"show_text","contents":["Experimental mode tells everyone on the server when a player is detected cheating"]}}," is already disabled"]

execute as @a[tag=DACenExp] at @s unless score #exp DACexperimental matches 1 run tellraw @a ["",{"text":"[DAC] ","bold":true,"color":"blue"},"player ",{"selector":"@s","bold":true}," enabled ",{"text":"experimental mode","underlined":true,"hoverEvent":{"action":"show_text","contents":["Experimental mode tells everyone on the server when a player is detected cheating"]}}]
execute as @a[tag=DACenExp] at @s if score #exp DACexperimental matches 1 run tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"blue"},{"text":"experimental mode","underlined":true,"hoverEvent":{"action":"show_text","contents":["Experimental mode tells everyone on the server when a player is detected cheating"]}}," is already enabled"]

execute as @a[tag=DACenExp] at @s run scoreboard players set #exp DACexperimental 1
execute as @a[tag=DACdisExp] at @s run scoreboard players set #exp DACexperimental 0


tag @a remove DACdisExp
tag @a remove DACenExp






















    # DAC axolotl
# DAC A.I.
execute as @e[tag=DAC] run tp @e[tag=DACai,sort=nearest,limit=1]
execute as @e[tag=DACai] at @s unless entity @e[tag=DAC,distance=..0.5] run kill @e[tag=DACai]

# DAC becomes angry
execute as @e[tag=DAC,nbt={HurtTime:10s}] at @s unless entity @e[tag=DACai,distance=..1] run playsound minecraft:entity.wither.spawn ambient @a ~ ~ ~ 1000 1.25
execute as @e[tag=DAC,nbt={HurtTime:10s}] at @s unless entity @e[tag=DACai,distance=..1] run tag @s add angryDAC
execute as @e[tag=DAC,nbt={HurtTime:10s}] at @s unless entity @e[tag=DACai,distance=..1] run summon wolf ~ ~ ~ {Tags:[DACai],PersistenceRequired:1,Silent:1,Invulnerable:1,ActiveEffects:[{Id:1,Amplifier:0,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
# NoCollision rule
team join DAC @e[tag=DAC]
team join DAC @e[tag=DACai]


# DAC's AI (when angry)
execute as @e[tag=DACai] at @s run data modify entity @e[tag=DACai,limit=1] AngryAt set from entity @e[limit=1,sort=nearest,tag=!DAC,tag=!DACai] UUID


# DAC bans players when angry
execute as @e[tag=DACban] at @s run spawnpoint @s ~ -900 ~
execute as @e[tag=DACban] at @s run tp ~ -900 ~
execute as @e[tag=DACban] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 1000 0.5
execute as @e[tag=DACban] at @s run function dac:aaxxoolloottll/ban_reasons

tag @e[tag=DACban] remove DACban


execute as @e[tag=!DAC,tag=!DACai] at @s if entity @e[tag=angryDAC,distance=..1.5] run tag @s add DACban



















# Randomizer
function dac:aaxxoolloottll/random_years
function dac:aaxxoolloottll/random_months
function dac:aaxxoolloottll/random_days

    # ESSENTIALS #

tag @e[tag=DACnew] remove DACnew

scoreboard players set @a DACcFruit 0

advancement revoke @a only dac:placed_block
