##########################################
# Author: ProBattles 
# Date: 23 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

#cow add milk
execute at @e[type=cow] as @e[tag=gm4LT,dy=0,scores={gm4LiquidTanks=0}] at @s run tag @s add gm4LTmilk
execute at @e[type=cow] as @e[tag=gm4LTmilk,dy=0,scores={gm4LiquidTanks=0..29990}] at @s run scoreboard players add @s gm4LiquidTanks 1