##########################################
# Author: ProBattles 
# Date: 23 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

execute as @e[tag=gm4LTwater,tag=gm4LTclick,scores={gm4LiquidTanks=1000..30000}] at @s if block ~ ~ ~1 minecraft:cauldron[level=0] run tag @s add gm4LTfill
execute at @e[tag=gm4LTwater,tag=gm4LTfill] run setblock ~ ~ ~1 minecraft:cauldron[level=3]
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run scoreboard players remove @s gm4LiquidTanks 1000
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run tag @s remove gm4LTfill

execute as @e[tag=gm4LTwater,tag=gm4LTclick,scores={gm4LiquidTanks=1000..30000}] at @s if block ~ ~ ~-1 minecraft:cauldron[level=0] run tag @s add gm4LTfill
execute at @e[tag=gm4LTwater,tag=gm4LTfill] run setblock ~ ~ ~-1 minecraft:cauldron[level=3]
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run scoreboard players remove @s gm4LiquidTanks 1000
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run tag @s remove gm4LTfill

execute as @e[tag=gm4LTwater,tag=gm4LTclick,scores={gm4LiquidTanks=1000..30000}] at @s if block ~1 ~ ~ minecraft:cauldron[level=0] run tag @s add gm4LTfill
execute at @e[tag=gm4LTwater,tag=gm4LTfill] run setblock ~1 ~ ~ minecraft:cauldron[level=3]
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run scoreboard players remove @s gm4LiquidTanks 1000
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run tag @s remove gm4LTfill

execute as @e[tag=gm4LTwater,tag=gm4LTclick,scores={gm4LiquidTanks=1000..30000}] at @s if block ~-1 ~ ~ minecraft:cauldron[level=0] run tag @s add gm4LTfill
execute at @e[tag=gm4LTwater,tag=gm4LTfill] run setblock ~-1 ~ ~ minecraft:cauldron[level=3]
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run scoreboard players remove @s gm4LiquidTanks 1000
execute as @e[tag=gm4LTwater,tag=gm4LTfill] run tag @s remove gm4LTfill
