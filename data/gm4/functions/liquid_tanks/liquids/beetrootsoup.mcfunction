##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################


#beetrootsoup
#setting tag
execute as @e[tag=gm4LT,scores={gm4LiquidTanks=0}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:beetroot_soup",Count:1b}]} run tag @s add gm4LTbeetrootsoup

#adding 
	#bowl
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTslot,scores={gm4LiquidTanks=0..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:beetroot_soup",Count:1b}]} run tag @s add gm4LTbowladd
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowladd] run scoreboard players add @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowladd] run replaceitem block ~ ~ ~ container.0 minecraft:bowl 1
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowladd] run tellraw @p ["",{"text":"Beetroot Soup: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowladd] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowladd] run tag @s remove gm4LTbowladd


#removing
	#bowl
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTslot,scores={gm4LiquidTanks=250..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,id:"minecraft:bowl",Count:1b}]} run tag @s add gm4LTbowlremove 
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowlremove] run scoreboard players remove @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowlremove] run replaceitem block ~ ~ ~ container.4 minecraft:beetroot_soup 1
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowlremove] run tellraw @p ["",{"text":"Beetroot Soup: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowlremove] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTbowlremove] run tag @s remove gm4LTbowlremove

#reseting tags 
execute as @e[tag=gm4LTbeetrootsoup,scores={gm4LiquidTanks=0}] run tag @s remove gm4LTbeetrootsoup


