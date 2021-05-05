#run from advancement
#@s = player with throw shamir equipped

advancement revoke @s only gm4_throw_shamir:inventory_changed

execute if score @s gm4_ml_throw_prl matches 1.. as @e[type=minecraft:ender_pearl,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion
execute if score @s gm4_ml_throw_snw matches 1.. as @e[type=minecraft:snowball,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion
execute if score @s gm4_ml_throw_egg matches 1.. as @e[type=minecraft:egg,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion
execute if score @s gm4_ml_throw_lp matches 1.. as @e[type=minecraft:potion,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion
execute if score @s gm4_ml_throw_sp matches 1.. as @e[type=minecraft:potion,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion

execute as @e[type=item,distance=..2,nbt={Age:0s},limit=1] at @s run function gm4_throw_shamir:add_motion

scoreboard players reset @s gm4_ml_throw_prl
scoreboard players reset @s gm4_ml_throw_snw
scoreboard players reset @s gm4_ml_throw_egg
scoreboard players reset @s gm4_ml_throw_sp
scoreboard players reset @s gm4_ml_throw_lp
