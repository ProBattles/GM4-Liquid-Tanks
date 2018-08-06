##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################


#experience
#setting tag
execute as @e[tag=gm4LT,scores={gm4LiquidTanks=0}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:experience_bottle",Count:1b}]} run tag @s add gm4LTexperience
execute as @e[tag=gm4LT,scores={gm4LiquidTanks=0}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:enchanted_book",Count:1b}]} run tag @s add gm4LTexperience

#adding 
	#bottle
	execute as @e[tag=gm4LTexperience,tag=gm4LTslot,scores={gm4LiquidTanks=0..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:experience_bottle",Count:1b}]} run tag @s add gm4LTbottleadd
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleadd] run scoreboard players add @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTexperience,tag=gm4LTbottleadd] run replaceitem block ~ ~ ~ container.0 minecraft:glass_bottle 1
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleadd] run tellraw @p ["",{"text":"Experience: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleadd] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleadd] run tag @s remove gm4LTbottleadd

	#item
	execute as @e[tag=gm4LTexperience,tag=gm4LTslot,scores={gm4LiquidTanks=0..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:enchanted_book",Count:1b}]} run tag @s add gm4LTitemadd
	execute as @e[tag=gm4LTexperience,tag=gm4LTitemadd] run scoreboard players add @s gm4LiquidTanks 1000
	execute at @e[tag=gm4LTexperience,tag=gm4LTitemadd] run replaceitem block ~ ~ ~ container.0 minecraft:air
	execute as @e[tag=gm4LTexperience,tag=gm4LTitemadd] run tellraw @p ["",{"text":"Experience: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTexperience,tag=gm4LTitemadd] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTexperience,tag=gm4LTitemadd] run tag @s remove gm4LTitemadd


#removing
	#bottle
	execute as @e[tag=gm4LTexperience,tag=gm4LTslot,scores={gm4LiquidTanks=250..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} run tag @s add gm4LTbottleremove 
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleremove] run scoreboard players remove @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTexperience,tag=gm4LTbottleremove] run replaceitem block ~ ~ ~ container.0 minecraft:experience_bottle 1
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleremove] run tellraw @p ["",{"text":"Experience: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleremove] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTexperience,tag=gm4LTbottleremove] run tag @s remove gm4LTbottleremove

#reseting tags 
execute as @e[tag=gm4LTexperience,scores={gm4LiquidTanks=0}] run tag @s remove gm4LTexperience


