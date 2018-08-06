##########################################
# Author: ProBattles 
# Date: 23 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

#mooshroom add mushroomsoup
execute at @e[type=mooshroom] as @e[tag=gm4LT,dy=0,scores={gm4LiquidTanks=0}] at @s run tag @s add gm4LTmushroomstew
execute at @e[type=mooshroom] as @e[tag=gm4LTmushroomstew,dy=0,scores={gm4LiquidTanks=0..29990}] at @s run scoreboard players add @s gm4LiquidTanks 1