# Flight
execute as @a[tag=DDACVertFlight] run tellraw @a ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"Flight","color":"red","hoverEvent":{"action":"show_text","contents":["Abnormal vertical movement"]}}]
# NoFall
execute as @a[tag=DDACNoFall,tag=DDACNoFallNew] at @s run tellraw @a ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"NoFall","color":"red","hoverEvent":{"action":"show_text","contents":["Fall damage was less than expected"]}}]
# Float
execute as @a[tag=DDACFloat] run tellraw @a ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"Float","color":"red","hoverEvent":{"action":"show_text","contents":["Y coordenate did not vary while off-ground"]}}]
# Glide (not used)
execute as @a[tag=DDACGlide] run tellraw @a ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"Glide","color":"red","hoverEvent":{"action":"show_text","contents":["Fall speed was slower than expected"]}}]
# "Jesus"
execute as @a[tag=DDACJesus] run tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"Jesus","color":"red","hoverEvent":{"action":"show_text","contents":["Walked on water"]}}]
# Speed
execute as @a[tag=DDACSpeed] run tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"Speed","color":"red","hoverEvent":{"action":"show_text","contents":["Moved faster than allowed"]}}]
# FastPlace
execute as @a[tag=DDACfbPlacement] run tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"FastPlace","color":"red","hoverEvent":{"action":"show_text","contents":["Placed blocks faster than allowed"]}}]
# Illegal Block Placement
execute as @a[tag=DDACIllBPlace] run tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"Illegal Block Placement","color":"red","hoverEvent":{"action":"show_text","contents":["Placed block either was not in player's crosshair or it was too far away"]}}]
# Illegal Hit (Reach)
execute as @a[tag=DDACIllegalHit] run tellraw @p ["",{"text":"[DAC] ","bold":true,"color":"dark_red"},"player ",{"selector":"@s","bold":true}," triggered ",{"text":"Reach","color":"red","hoverEvent":{"action":"show_text","contents":["Hit too far away"]}}]
