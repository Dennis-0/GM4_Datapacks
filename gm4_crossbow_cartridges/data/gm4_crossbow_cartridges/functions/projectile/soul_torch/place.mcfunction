# Place soul torch on a valid adjacent block
# @s = arrow with tag gm4_cb_storch, in a block
# at @s
# run from projectile/soul_torch/check

execute positioned ~.05 ~ ~ if predicate gm4_crossbow_cartridges:check_block/east run setblock ~-.1 ~ ~ minecraft:soul_wall_torch[facing=west]
execute positioned ~ ~ ~.05 if predicate gm4_crossbow_cartridges:check_block/south run setblock ~ ~ ~-.1 minecraft:soul_wall_torch[facing=north]
execute positioned ~-.05 ~ ~ if predicate gm4_crossbow_cartridges:check_block/west run setblock ~.1 ~ ~ minecraft:soul_wall_torch[facing=east]
execute positioned ~ ~ ~-.05 if predicate gm4_crossbow_cartridges:check_block/north run setblock ~ ~ ~.1 minecraft:soul_wall_torch[facing=south]
execute positioned ~ ~-.05 ~ if predicate gm4_crossbow_cartridges:check_block/below run setblock ~ ~.1 ~ minecraft:soul_torch
