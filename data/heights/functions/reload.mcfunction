effect clear @s minecraft:haste
msg @s reloaded
#give @s minecraft:firework_star 1
clear @s minecraft:firework_star
give @s minecraft:firework_star 32
clear @s minecraft:glass_bottle
give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:3,Duration:20}],display:{Name:"\"Reload\""}}

tag @a[nbt=!{ActiveEffects:[{Id:3b}]}] remove Hasty
