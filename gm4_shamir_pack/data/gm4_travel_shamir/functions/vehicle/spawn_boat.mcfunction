#run from vehicle/check_boat
#@s = player with shamir equipped, sneaking above water

tag @s add gm4_ml_invehicle

# spawn boat
summon minecraft:boat ~ ~ ~ {Invulnerable:1b,Tags:["gm4_ml_vehicle"]}
#execute as @e[tag=gm4_ml_vehicle] at @s run data modify entity @s Rotation[0] set from entity @p[tag=gm4_ml_invehicle] Rotation[0]

# link player to boat with id
execute store result score @s gm4_ml_travel_id run data get entity @s UUID[0]
scoreboard players operation @e[type=boat,tag=gm4_ml_vehicle,distance=..1,sort=nearest,limit=1] gm4_ml_travel_id = @s gm4_ml_travel_id

# start loop for check not in vehicle
schedule function gm4_travel_shamir:vehicle/check 40t
