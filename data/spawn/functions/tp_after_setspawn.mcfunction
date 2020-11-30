effect clear @s minecraft:luck
tag @s remove ChangeSpawn
tag @s remove TPAfterSpawn
give @s potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:4,Duration:1}],display:{Name:"\"Change Spawn\"",Lore:["\"Upon respawn, you will be able to select new spawnpoint.\""]}} 1
clear @s glass_bottle 1
execute as @s run function spawn:tp_spawn