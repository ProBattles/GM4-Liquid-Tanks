##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

#remove
execute as @e[tag=gm4LT] at @s if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:dispenser",Count:1b}}
execute as @e[tag=gm4LT] at @s if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:iron_trapdoor",Count:1b}}
execute as @e[tag=gm4LT] at @s if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:comparator",Count:1b}}
execute as @e[tag=gm4LT] at @s if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:hopper",Count:1b}}
execute as @e[tag=gm4LT] at @s if block ~ ~ ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:bucket",Count:1b}}
execute as @e[tag=gm4LT] at @s if block ~ ~ ~ air run kill @s
