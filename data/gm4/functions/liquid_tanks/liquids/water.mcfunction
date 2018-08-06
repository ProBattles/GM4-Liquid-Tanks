##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
########################################## 


#Water
#setting tag
execute as @e[tag=gm4LT,scores={gm4LiquidTanks=0}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:water_bucket",Count:1b}]} run tag @s add gm4LTwater
execute as @e[tag=gm4LT,scores={gm4LiquidTanks=0}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:potion",Count:1b,tag:{Potion: "minecraft:water"}}]} run tag @s add gm4LTwater

#adding 
	#bucket
	execute as @e[tag=gm4LTwater,tag=gm4LTslot,scores={gm4LiquidTanks=0..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:water_bucket",Count:1b}]} run tag @s add gm4LTbucketadd
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketadd] run scoreboard players add @s gm4LiquidTanks 1000
	execute at @e[tag=gm4LTwater,tag=gm4LTbucketadd] run replaceitem block ~ ~ ~ container.0 minecraft:bucket 1
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketadd] run tellraw @p ["",{"text":"Water: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketadd] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketadd] run tag @s remove gm4LTbucketadd

	#bottle
	execute as @e[tag=gm4LTwater,tag=gm4LTslot,scores={gm4LiquidTanks=0..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:potion",Count:1b,tag:{Potion: "minecraft:water"}}]} run tag @s add gm4LTbottleadd
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleadd] run scoreboard players add @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTwater,tag=gm4LTbottleadd] run replaceitem block ~ ~ ~ container.0 minecraft:glass_bottle 1
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleadd] run tellraw @p ["",{"text":"Water: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleadd] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleadd] run tag @s remove gm4LTbottleadd


#removing
	#buckets
	execute as @e[tag=gm4LTwater,tag=gm4LTslot,scores={gm4LiquidTanks=1000..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:bucket",Count:1b}]} run tag @s add gm4LTbucketremove 
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketremove] run scoreboard players remove @s gm4LiquidTanks 1000
	execute at @e[tag=gm4LTwater,tag=gm4LTbucketremove] run replaceitem block ~ ~ ~ container.0 minecraft:water_bucket 1
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketremove] run tellraw @p ["",{"text":"Water: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketremove] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTwater,tag=gm4LTbucketremove] run tag @s remove gm4LTbucketremove

	#bottle
	execute as @e[tag=gm4LTwater,tag=gm4LTslot,scores={gm4LiquidTanks=250..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} run tag @s add gm4LTbottleremove 
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleremove] run scoreboard players remove @s gm4LiquidTanks 250
	execute at @e[tag=gm4LTwater,tag=gm4LTbottleremove] run replaceitem block ~ ~ ~ container.0 minecraft:potion{Potion:"minecraft:water"} 1
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleremove] run tellraw @p ["",{"text":"Water: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleremove] run tag @s remove gm4LTslot
	execute as @e[tag=gm4LTwater,tag=gm4LTbottleremove] run tag @s remove gm4LTbottleremove

#reseting tags 
execute as @e[tag=gm4LTwater,scores={gm4LiquidTanks=0}] run tag @s remove gm4LTclick
execute as @e[tag=gm4LTwater,scores={gm4LiquidTanks=0}] run tag @s remove gm4LTwater