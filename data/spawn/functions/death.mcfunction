#Teleports player to respawn room for duration of hit cooldown
#tp @s 43 43 -49

scoreboard players set @s RespawnTime 60

scoreboard players operation @s NetKD -= @s hasDied

execute as @s run function spawn:setspawn
#msg @s lol richard died
clear @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:3,Duration:20}],display:{Name:"\"Reload\""}} 1
execute as @s run function heights:reload
scoreboard players set @s hasDied 0

#Kills all arrows
kill @e[type=arrow]
