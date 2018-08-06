##########################################
# Author: ProBattles 
# Date: 06 August 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
########################################## 

#Add tag gm4Ltslot when slot 1 is air
    execute as @e[tag=gm4LT] run scoreboard players set @s slot 0
    execute as @e[tag=gm4LT] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,Count:1b}]} run scoreboard players set @s slot 1
    execute as @e[tag=gm4LT] unless score @s slot matches 1 run tag @s add gm4LTslot