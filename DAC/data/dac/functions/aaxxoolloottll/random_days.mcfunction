execute if score #ticks DACtimer matches 1 run scoreboard players operation days DACrandom += 3 constants
execute if score #ticks DACtimer matches 3 run scoreboard players operation days DACrandom *= 3 constants
execute if score #ticks DACtimer matches 5 run scoreboard players operation days DACrandom *= 2 constants
execute if score #ticks DACtimer matches 7 run scoreboard players operation days DACrandom /= 2 constants
execute if score #ticks DACtimer matches 9 run scoreboard players operation days DACrandom *= 3 constants
execute if score #ticks DACtimer matches 11 run scoreboard players operation days DACrandom += 9 constants
execute if score #ticks DACtimer matches 13 run scoreboard players operation days DACrandom *= 2 constants
execute if score #ticks DACtimer matches 15 run scoreboard players operation days DACrandom += 2 constants
execute if score #ticks DACtimer matches 17 run scoreboard players operation days DACrandom /= 3 constants
execute if score #ticks DACtimer matches 19 run scoreboard players operation days DACrandom += 9 constants

execute if score days DACrandom >= 30 constants run scoreboard players operation days DACrandom /= 3 constants

execute if score days DACrandom < 0 constants run scoreboard players operation days DACrandom *= -1 constants
execute if score days DACrandom = 0 constants run scoreboard players operation days DACrandom += 3 constants