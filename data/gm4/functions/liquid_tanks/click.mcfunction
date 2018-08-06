##########################################
# Author: ProBattles 
# Date: 23 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

#action bar
execute at @a[scores={gm4LTclick=1..}] as @e[tag=gm4LT,sort=nearest,limit=1] run tag @s add gm4LTopen
execute as @e[tag=gm4LT,tag=gm4LTopen] run title @p actionbar ["",{"text":"Empty"}]
execute as @e[tag=gm4LTwater,tag=gm4LTopen] run title @p actionbar ["",{"text":"Water: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}}]
execute as @e[tag=gm4LTlava,tag=gm4LTopen] run title @p actionbar ["",{"text":"Lava: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}}]
execute as @e[tag=gm4LTmilk,tag=gm4LTopen] run title @p actionbar ["",{"text":"Milk: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}}]
execute as @e[tag=gm4LTrabbitstew,tag=gm4LTopen] run title @p actionbar ["",{"text":"Rabbitstew: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}}]
execute as @e[tag=gm4LTmushroomstew,tag=gm4LTopen] run title @p actionbar ["",{"text":"Mushroomstew: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}}]
execute as @e[tag=gm4LTbeetrootsoup,tag=gm4LTopen] run title @p actionbar ["",{"text":"Beetrootsoup: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}}]
execute as @e[tag=gm4LTexperience,tag=gm4LTopen] run title @p actionbar ["",{"text":"Experience: "},{"score":{"name":"@s","objective":"gm4LiquidTanks"}}]
execute at @a[scores={gm4LTclick=1..}] as @e[tag=gm4LT,sort=nearest,limit=1] run tag @s remove gm4LTopen

#Water
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTwater] at @s if block ~ ~ ~1 minecraft:cauldron run tag @s add gm4LTclick
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTwater] at @s if block ~ ~ ~-1 minecraft:cauldron run tag @s add gm4LTclick 
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTwater] at @s if block ~1 ~ ~ minecraft:cauldron run tag @s add gm4LTclick
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTwater] at @s if block ~-1 ~ ~ minecraft:cauldron run tag @s add gm4LTclick

#Lava
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTlava] at @s if block ~ ~ ~1 minecraft:furnace run tag @s add gm4LTclick
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTlava] at @s if block ~ ~ ~-1 minecraft:furnace run tag @s add gm4LTclick 
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTlava] at @s if block ~1 ~ ~ minecraft:furnace run tag @s add gm4LTclick
execute as @a[scores={gm4LTclick=1..}] as @e[tag=gm4LTlava] at @s if block ~-1 ~ ~ minecraft:furnace run tag @s add gm4LTclick


#reset
execute as @a[scores={gm4LTclick=1..}] run scoreboard players reset @s gm4LTclick