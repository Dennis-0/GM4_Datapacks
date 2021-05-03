scoreboard objectives add gm4_ml_throw_mot dummy

execute unless score throw_shamir gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Throw Shamir"}
scoreboard players set throw_shamir gm4_modules 1

#$moduleUpdateList
