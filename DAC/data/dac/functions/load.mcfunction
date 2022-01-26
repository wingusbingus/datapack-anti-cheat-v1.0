    #   TEXT & PERMS
tellraw @p {"text":"DAC reloaded","color":"blue","clickEvent":{"action":"run_command","value":"/function dac:aaxxoolloottll/axolotlsummon/summon_dac"},"hoverEvent":{"action":"show_text","contents":["Click to summon \"Mr. DAC\""]}}
tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"Do you want to disable ",{"text":"experimental mode?","underlined":true,"hoverEvent":{"action":"show_text","contents":["Experimental mode tells everyone on the server when a player is detected cheating"]}}]
tellraw @p ["",{"text":"[YES]   ","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/tag @p add DACdisExp"}},{"text":"   [NO]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/tag @p add DACenExp"}}]
#tag @p add DACadmin


    #   SCs
# Leave Game
scoreboard objectives add DACleft minecraft.custom:minecraft.leave_game
scoreboard players set @a DACleft 1

# ID, Amount of Players
scoreboard objectives add DACid dummy
scoreboard objectives add DAClinkedId dummy
scoreboard objectives add DACplayerAmount dummy

# Health
scoreboard objectives add DAChealth health
scoreboard objectives add DACmodHealth dummy
scoreboard objectives add DACstoreHealth dummy

# Constants
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 0 constants 0
scoreboard players set 1 constants 1
scoreboard players set 2 constants 2
scoreboard players set 3 constants 3
scoreboard players set 4 constants 4
scoreboard players set 5 constants 5
scoreboard players set 6 constants 6
scoreboard players set 7 constants 7
scoreboard players set 8 constants 8
scoreboard players set 9 constants 9
scoreboard players set 10 constants 10
scoreboard players set 11 constants 11
scoreboard players set 12 constants 12
scoreboard players set 13 constants 13
scoreboard players set 15 constants 15
scoreboard players set 18 constants 18
scoreboard players set 20 constants 20
scoreboard players set 25 constants 25
scoreboard players set 30 constants 30
scoreboard players set 35 constants 35
scoreboard players set 10000 constants 10000

# Experimental MODE
scoreboard objectives add DACexperimental dummy

# Randomizer
scoreboard objectives add DACrandom dummy

# Used items that modify motion
scoreboard objectives add DACePearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add DACcFruit minecraft.used:minecraft.chorus_fruit
scoreboard objectives add DACcDownCFruit dummy

# TNT count
scoreboard objectives add DACtntCount dummy

# Timer
scoreboard objectives add DACtimer dummy

# X & Z movement
scoreboard objectives add DACxcoord dummy
scoreboard objectives add DACzcoord dummy
scoreboard objectives add DAClastxcoord dummy
scoreboard objectives add DAClastzcoord dummy
scoreboard objectives add DACsavexcoord dummy
scoreboard objectives add DACsavezcoord dummy
scoreboard objectives add DACtimeSinceMove dummy
scoreboard players set @a DACtimeSinceMove 0
scoreboard objectives add DACmaxBPS dummy

# Is On Ground?
scoreboard objectives add DACisOnGround dummy
scoreboard objectives add DACisOverGround dummy

# Is On X Ground?
scoreboard objectives add DACisOnWater dummy
scoreboard objectives add DACisOverWater dummy
scoreboard objectives add DACisOnLava dummy
scoreboard objectives add DACisOverLava dummy
scoreboard objectives add DACisOnSoftG dummy
scoreboard objectives add DACisOnNonSolid dummy
scoreboard objectives add DACisOnBouncy dummy
scoreboard objectives add DACisOnFence dummy
scoreboard objectives add DACisOnSlim dummy
scoreboard objectives add DACisOnSlippery dummy
scoreboard objectives add DACisOnCWeb dummy

# Time off ground
scoreboard objectives add DACtimeOnAir dummy
scoreboard objectives add DACtimeOnAir20 dummy

# Time since started falling
scoreboard objectives add DACstartFalling dummy
scoreboard objectives add DACtimeFallen dummy

# NoFall & Float (same function)
scoreboard objectives add DACrecFDmg dummy

# DET NoFall & Float (same function)
scoreboard objectives add DDACNoFall dummy
scoreboard objectives modify DDACNoFall displayname {"text":"NoFall Detection","color":"dark_red"}
scoreboard objectives add DDACFloat dummy
scoreboard objectives modify DDACFloat displayname {"text":"Float Detection","color":"dark_red"}
scoreboard objectives add DDACGlide dummy
scoreboard objectives modify DDACGlide displayname {"text":"Glide Detection","color":"dark_red"}

# Vertical Flight
scoreboard objectives add DACycoord dummy
scoreboard objectives add DACmaxycoord dummy

# DET Vertical Flight
scoreboard objectives add DDACVertFlight dummy
scoreboard objectives modify DDACVertFlight displayname {"text":"Vertical Flight Detection","color":"dark_red"}

# "Jesus" cheat
scoreboard objectives add DACjesusTimer dummy
scoreboard players set @a DACjesusTimer 0

# DET "Jesus" cheat
scoreboard objectives add DDACJesus dummy
scoreboard objectives modify DDACJesus displayname {"text":"\"Jesus\" Cheat Detection","color":"dark_red"}

# NoFall & Float
scoreboard objectives add DACfloatycoord dummy
scoreboard objectives add DACminFall dummy
scoreboard objectives add DACtallycoord dummy

# DET Speed
scoreboard objectives add DDACSpeed dummy
scoreboard objectives modify DDACSpeed displayname {"text":"Speed Detection","color":"dark_red"}

# Block placement & Block look
scoreboard objectives add DACblocksPlaced dummy
scoreboard objectives add DACrange dummy

# DET Block placement
scoreboard objectives add DDACfbPlacement dummy
scoreboard objectives modify DDACfbPlacement displayname {"text":"Fast Block Placement","color":"dark_red"}
scoreboard objectives add DDACIllBPlace dummy
scoreboard objectives modify DDACIllBPlace displayname {"text":"Illegal Block Placement","color":"dark_red"}

# Hit Detection
scoreboard objectives add DACdealtDmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add DAChitBy dummy

# DET Hit
scoreboard objectives add DDACIllegalHit dummy
scoreboard objectives modify DDACIllegalHit displayname {"text":"Illegal Hit Detection","color":"dark_red"}








    #   TEAMS

team add DAC
team modify DAC collisionRule never
