execute if score #ticks DACtimer matches 1 run scoreboard players operation years DACrandom += 13 constants
execute if score #ticks DACtimer matches 3 run scoreboard players operation years DACrandom *= 30 constants
execute if score #ticks DACtimer matches 5 run scoreboard players operation years DACrandom *= 5 constants
execute if score #ticks DACtimer matches 7 run scoreboard players operation years DACrandom /= 20 constants
execute if score #ticks DACtimer matches 9 run scoreboard players operation years DACrandom *= 10 constants
execute if score #ticks DACtimer matches 11 run scoreboard players operation years DACrandom += 15 constants
execute if score #ticks DACtimer matches 13 run scoreboard players operation years DACrandom *= 15 constants
execute if score #ticks DACtimer matches 15 run scoreboard players operation years DACrandom *= 3 constants
execute if score #ticks DACtimer matches 17 run scoreboard players operation years DACrandom /= 20 constants
execute if score #ticks DACtimer matches 19 run scoreboard players operation years DACrandom += 18 constants

execute if score years DACrandom >= 10000 constants run scoreboard players operation years DACrandom /= 10 constants

execute if score years DACrandom < 0 constants run scoreboard players operation years DACrandom *= -1 constants