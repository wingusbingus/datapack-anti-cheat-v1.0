execute if score #ticks DACtimer matches 1 run scoreboard players operation months DACrandom += 3 constants
execute if score #ticks DACtimer matches 3 run scoreboard players operation months DACrandom *= 3 constants
execute if score #ticks DACtimer matches 5 run scoreboard players operation months DACrandom *= 5 constants
execute if score #ticks DACtimer matches 7 run scoreboard players operation months DACrandom /= 2 constants
execute if score #ticks DACtimer matches 9 run scoreboard players operation months DACrandom *= 4 constants
execute if score #ticks DACtimer matches 11 run scoreboard players operation months DACrandom += 10 constants
execute if score #ticks DACtimer matches 13 run scoreboard players operation months DACrandom *= 2 constants
execute if score #ticks DACtimer matches 15 run scoreboard players operation months DACrandom *= 2 constants
execute if score #ticks DACtimer matches 17 run scoreboard players operation months DACrandom /= 9 constants
execute if score #ticks DACtimer matches 19 run scoreboard players operation months DACrandom += 9 constants

execute if score months DACrandom >= 12 constants run scoreboard players operation months DACrandom /= 10 constants

execute if score months DACrandom < 0 constants run scoreboard players operation months DACrandom *= -1 constants
execute if score months DACrandom = 0 constants run scoreboard players operation months DACrandom += 1 constants