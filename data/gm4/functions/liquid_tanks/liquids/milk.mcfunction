##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################


#milk


#setting tag
execute as @e[tag=gm4LT,scores={gm4LiquidTanks=0}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:milk_bucket",Count:1b}]} run tag @s add gm4LTmilk

#adding 
execute as @e[tag=gm4LTmilk,tag=gm4LTslot,scores={gm4LiquidTanks=0..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:milk_bucket",Count:1b}]} run tag @s add gm4LTbucketadd
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketadd] run scoreboard players add @s gm4LiquidTanks 1000
execute at @e[tag=gm4LTmilk,tag=gm4LTbucketadd] run replaceitem block ~ ~ ~ container.0 minecraft:bucket 1
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketadd] run tellraw @p ["",{"text":"Milk: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketadd] run tag @s remove gm4LTslot
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketadd] run tag @s remove gm4LTbucketadd

#removing
execute as @e[tag=gm4LTmilk,tag=gm4LTslot,scores={gm4LiquidTanks=1000..30000}] at @s if block ~ ~ ~ minecraft:hopper{Items:[{Slot:4b,id:"minecraft:bucket",Count:1b}]} run tag @s add gm4LTbucketremove 
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketremove] run scoreboard players remove @s gm4LiquidTanks 1000
execute at @e[tag=gm4LTmilk,tag=gm4LTbucketremove] run replaceitem block ~ ~ ~ container.4 minecraft:milk_bucket 1
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketremove] run tellraw @p ["",{"text":"Milk: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}},{"text":"mb/30000mb"}]
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketremove] run tag @s remove gm4LTslot
execute as @e[tag=gm4LTmilk,tag=gm4LTbucketremove] run tag @s remove gm4LTbucketremove

#reseting tags 
execute as @e[tag=gm4LTmilk,scores={gm4LiquidTanks=0}] run tag @s remove gm4LTmilk
