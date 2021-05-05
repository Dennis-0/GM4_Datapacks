scoreboard objectives add gm4_ml_throw_prl minecraft.used:minecraft.ender_pearl
scoreboard objectives add gm4_ml_throw_snw minecraft.used:minecraft.snowball
scoreboard objectives add gm4_ml_throw_egg minecraft.used:minecraft.egg
scoreboard objectives add gm4_ml_throw_sp minecraft.used:minecraft.splash_potion
scoreboard objectives add gm4_ml_throw_lp minecraft.used:minecraft.lingering_potion

execute unless score throw_shamir gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Throw Shamir"}
scoreboard players set throw_shamir gm4_modules 1

#$moduleUpdateList
