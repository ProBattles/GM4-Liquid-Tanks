##########################################
# Author: ProBattles 
# Date: 20 july 2018
# Version: 0.1
# Minecraft Version: 1.13
# Description:
# 
##########################################

function gm4:liquid_tanks/create
function gm4:liquid_tanks/remove
function gm4:liquid_tanks/click

#liquids
execute if score gm4Clockticks gm4Clock matches 1 run function gm4:liquid_tanks/liquids/water
execute if score gm4Clockticks gm4Clock matches 2 run function gm4:liquid_tanks/liquids/lava
execute if score gm4Clockticks gm4Clock matches 3 run function gm4:liquid_tanks/liquids/milk
execute if score gm4Clockticks gm4Clock matches 4 run function gm4:liquid_tanks/liquids/rabbitstew
execute if score gm4Clockticks gm4Clock matches 5 run function gm4:liquid_tanks/liquids/mushroomstew
execute if score gm4Clockticks gm4Clock matches 6 run function gm4:liquid_tanks/liquids/beetrootsoup
execute if score gm4Clockticks gm4Clock matches 7 run function gm4:liquid_tanks/liquids/experience

#render  
execute if score gm4Clockticks gm4Clock matches 1 run function gm4:liquid_tanks/render/water
execute if score gm4Clockticks gm4Clock matches 2 run function gm4:liquid_tanks/render/lava
execute if score gm4Clockticks gm4Clock matches 3 run function gm4:liquid_tanks/render/milk
execute if score gm4Clockticks gm4Clock matches 4 run function gm4:liquid_tanks/render/rabbitstew
execute if score gm4Clockticks gm4Clock matches 5 run function gm4:liquid_tanks/render/mushroomstew
execute if score gm4Clockticks gm4Clock matches 6 run function gm4:liquid_tanks/render/beetrootsoup
execute if score gm4Clockticks gm4Clock matches 7 run function gm4:liquid_tanks/render/experience

#Interactions
execute if score gm4Clockticks gm4Clock matches 1 run function gm4:liquid_tanks/interactions/water
execute if score gm4Clockticks gm4Clock matches 2 run function gm4:liquid_tanks/interactions/lava
execute if score gm4Clockticks gm4Clock matches 3 run function gm4:liquid_tanks/interactions/milk
execute if score gm4Clockticks gm4Clock matches 5 run function gm4:liquid_tanks/interactions/mushroomstew


