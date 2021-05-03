#run from check_projectile
# @s = player using the crossbow

#summon fireball at player's location
summon minecraft:small_fireball ~ ~1 ~ {Tags:["gm4_cb_proj"],power:[0.0,0.0,0.0],Motion:[0.0,0.0,0.0]}

#copy motion of arrow to fireball
data modify entity @e[tag=gm4_cb_proj,distance=..2,sort=nearest,limit=1] power set from entity @e[tag=gm4_cb_arrow,distance=..2,sort=nearest,limit=1] Motion
function gm4_crossbow_cartridges:projectile/arrow_motion

#clear fire charge from player
clear @s[gamemode=!creative] minecraft:fire_charge 1

#firecharge sound
playsound minecraft:item.firecharge.use player @a[distance=..15]
