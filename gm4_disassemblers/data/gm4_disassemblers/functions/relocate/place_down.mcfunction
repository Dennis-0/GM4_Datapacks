# @s = command block placed by "gm4_relocators:place_down/replace_head"
# located at the command block (where the player head was)

execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ dropper[facing=west]
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ dropper[facing=east]
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ dropper[facing=north]
execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ dropper[facing=south]
execute if block ~ ~ ~ command_block[facing=down] run setblock ~ ~ ~ dropper[facing=up]

data merge block ~ ~ ~ {CustomName:'{"translate":"%1$s%3427655$s","with":["Disassembler",{"translate":"block.gm4.disassembler"}]}'}
summon armor_stand ~ ~-.4 ~ {Small:1,NoGravity:1,Marker:1,Invulnerable:1,Invisible:1,DisabledSlots:2039552,Tags:["gm4_no_edit","gm4_disassembler"],HasVisualFire:1,CustomName:'"gm4_disassembler"',ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:1}}]}
playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.9 0.1
