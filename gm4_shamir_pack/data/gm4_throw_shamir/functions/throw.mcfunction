#run from advancement
#@s = player

advancement revoke @s only gm4_throw_shamir:throw

execute as @e[type=minecraft:ender_pearl,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion
execute as @e[type=minecraft:snowball,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion
execute as @e[type=minecraft:egg,distance=..2,sort=nearest,limit=1] at @s run function gm4_throw_shamir:add_motion
