execute as @a run scoreboard players set @s DACmaxBPS 0

execute as @a run scoreboard players add @s DACmaxBPS 12

execute as @a[tag=DACunderBlock] at @s run scoreboard players add @s DACmaxBPS 2

execute as @a[scores={DACisOnSlippery=1}] run scoreboard players add @s DACmaxBPS 9
execute as @a[nbt={ActiveEffects:[{Id:1b}]}] run scoreboard players add @s DACmaxBPS 5
execute as @a[nbt={RootVehicle:{}}] run scoreboard players add @s DACmaxBPS 10

execute as @a[scores={DACisOnCWeb=1}] run scoreboard players set @s DACmaxBPS 1
