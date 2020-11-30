#Remove this and move this to a On-Start function
#give @s potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:4,Duration:1}],display:{Name:"\"Change Spawn\"",Lore:["\"Upon respawn, you will be able to select new spawnpoint.\""]}} 1

#tp groxen_nin 100 100 100

#Removes effects
execute as @a[nbt=!{Inventory:[{Slot:-106b, id:"minecraft:crossbow"}]}] run effect clear @s minecraft:slowness
execute as @a[nbt=!{SelectedItem:{id:"minecraft:crossbow"}}] run effect clear @s minecraft:slowness

effect give @a saturation 100000 1
#Gives effects
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:crossbow"}]}] run effect give @s minecraft:slowness 1 3 true
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run effect give @s minecraft:slowness 1 3 true

#Runs Reload Function
tag @a[nbt={ActiveEffects:[{Id:3b}]}] add Hasty
execute as @a[tag=Hasty] at @s run function heights:reload

#Runs tp_after_setspawn Function
#tag @a[nbt={ActiveEffects:[{Id:26b}]}] add TPAfterSpawn
#execute as @a[tag=TPAfterSpawn] at @s run function spawn:tp_after_setspawn

#Runs kill effect function
execute as @a[scores={KillEffect=1}] at @s run function heights:killeffect

#Runs Checkpoint variable setting function
#tag @a[nbt={ActiveEffects:[{Id:4b}]}] add ChangeSpawn
#effect clear @a[tag=ChangeSpawn] minecraft:mining_fatigue
#clear @a[tag=ChangeSpawn] minecraft:glass_bottle 1

#Death and spawnpoint check
execute as @a at @s if block ~ ~-1 ~ minecraft:gray_stained_glass run function spawn:death
execute as @a at @s if block ~ ~-1 ~ minecraft:white_stained_glass run function spawn:death

#Spawnpoint timer check
execute as @a[scores={SpawnpointSet=0}] at @s run function spawn:tp_spawn

#Auto-reloads crossbow
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] at @s run function heights:autoreload

#Handles grenades
execute as @e[type=snowball] at @s run kill @e[tag=tracker,distance=..2]
execute as @e[tag=tracker] at @s run summon creeper ~ ~ ~ {Fuse:0,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}
kill @e[tag=tracker]
execute as @e[type=snowball] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:[tracker]}
#fall damage
execute as @a at @s if block ~ ~-35 ~ air run effect give @s resistance 1 255 

#Prevents dropping items
function heights:preventdrop

kill @e[type=arrow,nbt={inGround:1b}]

#scoreboard players remove @a BowDelay 1