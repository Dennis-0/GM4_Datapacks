
execute store result score motionx gm4_ml_throw_mot run data get entity @s Motion[0] 2000
execute store result score motiony gm4_ml_throw_mot run data get entity @s Motion[1] 2000
execute store result score motionz gm4_ml_throw_mot run data get entity @s Motion[2] 2000

execute store result entity @s Motion[0] double 0.001 run scoreboard players get motionx gm4_ml_throw_mot
execute store result entity @s Motion[1] double 0.001 run scoreboard players get motiony gm4_ml_throw_mot
execute store result entity @s Motion[2] double 0.001 run scoreboard players get motionz gm4_ml_throw_mot
