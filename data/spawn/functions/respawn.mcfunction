#Respawn timer countdown and execution manage
#scoreboard players remove @a RespawnTime 1 
#execute as @a[scores={RespawnTime=0}] at @s run function spawn:tp_spawn

#Do bow delay timer here too
execute as @a at @s unless entity @s[scores={BowDelay=0}] run scoreboard players remove @s BowDelay 1 
execute as @a at @s unless entity @s[scores={SpawnpointSet=0}] run scoreboard players remove @s SpawnpointSet 1 

#Drops, boxes missile
scoreboard players remove @e[name="Missile Drop"] Timing 1
execute as @e[name="Missile Drop"] at @s if entity @e[scores={Timing=1200}] run summon item 41.90 19.00 -21.08 {Item:{id:"minecraft:firework_rocket",Count:1}}
execute as @e[name="Missile Drop"] at @s if entity @e[scores={Timing=2400}] run summon item 69.90 19.00 -48.08 {Item:{id:"minecraft:firework_rocket",Count:1}}
execute as @e[name="Missile Drop"] at @s if entity @e[scores={Timing=3600}] run summon item 42.90 19.00 -76.08 {Item:{id:"minecraft:firework_rocket",Count:1}}
execute as @e[name="Missile Drop"] at @s if entity @e[scores={Timing=1}] run summon item 15.90 19.00 -49.08 {Item:{id:"minecraft:firework_rocket",Count:1}}
execute as @e[name="Missile Drop"] at @s if entity @e[scores={Timing=0}] as @s run scoreboard players set @s Timing 4800 

#Score if playing top dominate mode
execute positioned 43 32.00 -48 run scoreboard players add @a[x=42,dx=1,y=32,dy=2,z=-49,dz=1] TopDominate 1
execute as @a at @s if entity @s[scores={TopDominate=1200}] run function heights:gameend
schedule function spawn:respawn 1