# Fast Place
execute as @a[advancements={dac:placed_block=true}] run scoreboard players add @s DACblocksPlaced 1

tag @a remove DDACfbPlacement
execute as @a[scores={DACblocksPlaced=5..}] run tag @s add DDACfbPlacement

execute if score #10ticks DACtimer matches 9 run scoreboard players set @a DACblocksPlaced 0
