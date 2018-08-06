##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

scoreboard players add gm4Clockticks gm4Clock 1
execute if score gm4Clockticks gm4Clock matches 20 run scoreboard players add gm4Clocksec gm4Clock 1
execute if score gm4Clocksec gm4Clock matches 60 run scoreboard players add gm4Clockmin gm4Clock 1
execute if score gm4Clockmin gm4Clock matches 60 run scoreboard players add gm4Clockhour gm4Clock 1
execute if score gm4Clockhour gm4Clock matches 24 run scoreboard players add gm4Clockday gm4Clock 1

execute if score gm4Clockticks gm4Clock matches 20 run scoreboard players reset gm4Clockticks gm4Clock 
execute if score gm4Clocksec gm4Clock matches 60 run scoreboard players reset gm4Clocksec gm4Clock
execute if score gm4Clockmin gm4Clock matches 60 run scoreboard players reset gm4Clockmin gm4Clock
execute if score gm4Clockhour gm4Clock matches 24 run scoreboard players reset gm4Clockhour gm4Clock   