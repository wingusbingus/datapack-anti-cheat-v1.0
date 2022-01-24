tag @a[tag=DDACIllegalHit] remove DDACIllegalHit
execute as @a[gamemode=!creative,scores={DACdealtDmg=1..}] at @s anchored eyes unless entity @e[nbt={HurtTime:10s},distance=..4] if entity @e[nbt={HurtTime:10s},distance=4..10] run tag @s add DDACIllegalHit



scoreboard players add @a[tag=DDACIllegalHit] DDACIllegalHit 1



# Reset SC
scoreboard players set @a[scores={DACdealtDmg=1..}] DACdealtDmg 0
