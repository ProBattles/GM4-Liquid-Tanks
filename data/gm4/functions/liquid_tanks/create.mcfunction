##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

#check
execute at @e[type=minecraft:item,name="Glass"] if block ~ ~-1 ~ minecraft:hopper{Items:[{id:"minecraft:bucket"},{id:"minecraft:hopper"},{id:"minecraft:dispenser"},{id:"minecraft:iron_trapdoor"},{id:"minecraft:comparator"}]} run summon minecraft:item_frame ~ ~ ~ {CustomName:"\"gm4tank\"",NoGravity:1b,Facing:1b,Item:{}}


#create
execute at @e[name="gm4tank"] run summon minecraft:armor_stand ~ ~-1 ~ {CustomNameVisible:1b,NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["gm4LT"],ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b}],CustomName:"{\"text\":\"Liquid Tanks\",\"color\":\"blue\"}"}
execute at @e[name="gm4tank"] if block ~ ~-1 ~ minecraft:hopper run setblock ~ ~-1 ~ minecraft:hopper replace
execute at @e[name="gm4tank"] run scoreboard players set @e[distance=..2,name="Liquid Tanks"] gm4LiquidTanks 0
tp @e[name=gm4tank] ~ ~-200 ~




