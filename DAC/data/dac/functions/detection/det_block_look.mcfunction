#particle flame ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ air run tag @s add DACillegalBPlace
scoreboard players remove @s DACrange 1
execute if score @s DACrange matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function dac:detection/det_block_look
