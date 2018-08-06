##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################


#rabbitstew
#setting tag
execute as @e[tag=gm4LT,scores={gm4LiquidTanks=0}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:rabbit_stew",Count:1b}]} run tag @s add gm4LTrabbitstew

#adding 
	#bowl
	execute as @e[tag=gm4LTrabbitstew,scores={gm4LiquidTanks=0..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:rabbit_stew",Count:1b}]} run tag @s add gm4LTbowladd
	execute as @e[tag=gm4LTrabbitstew,tag=gm4LTbowladd] run scoreboard players add @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTrabbitstew,tag=gm4LTbowladd] run replaceitem block ~ ~ ~ container.0 minecraft:bowl 1
	execute as @e[tag=gm4LTrabbitstew,tag=gm4LTbowladd] run tellraw @p ["",{"text":"Rabbit Stew: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTrabbitstew,tag=gm4LTbowladd] run tag @s remove gm4LTbowladd


#removing
	#bowl
	execute as @e[tag=gm4LTrabbitstew,scores={gm4LiquidTanks=250..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,id:"minecraft:bowl",Count:1b}]} run tag @s add gm4LTbowlremove 
	execute as @e[tag=gm4LTrabbitstew,tag=gm4LTbowlremove] run scoreboard players remove @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTrabbitstew,tag=gm4LTbowlremove] run replaceitem block ~ ~ ~ container.4 minecraft:rabbit_stew 1
	execute as @e[tag=gm4LTrabbitstew,tag=gm4LTbowlremove] run tellraw @p ["",{"text":"Rabbit Stew: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTrabbitstew,tag=gm4LTbowlremove] run tag @s remove gm4LTbowlremove

#reseting tags 
execute as @e[tag=gm4LTrabbitstew,scores={gm4LiquidTanks=0}] run tag @s remove gm4LTrabbitstew


