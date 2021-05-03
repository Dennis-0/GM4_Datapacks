scoreboard objectives add gm4_ml_travel_id dummy

execute unless score travel_shamir gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Travel Shamir"}
scoreboard players set travel_shamir gm4_modules 1

schedule function gm4_travel_shamir:main 4t

#$moduleUpdateList
