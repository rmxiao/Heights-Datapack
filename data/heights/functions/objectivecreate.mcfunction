scoreboard objectives add HasArrows dummy 
scoreboard objectives add HasMissiles dummy 
scoreboard objectives add Kills playerKillCount 
scoreboard objectives add hasDied deathCount
scoreboard objectives add Deaths deathCount
scoreboard objectives add RespawnTime dummy
scoreboard objectives add NetKD playerKillCount "Score"
scoreboard objectives add Spawn dummy 
scoreboard objectives add BowDelay dummy
scoreboard objectives add BowReloaded dummy
scoreboard objectives add SpawnpointSet dummy
scoreboard objectives add KillEffect playerKillCount
scoreboard objectives add TopDominate dummy "Score"

scoreboard players set @a SpawnpointSet 0
scoreboard players set @a BowDelay 5
scoreboard players set @a BowReloaded 0
scoreboard players set @a HasArrows 0
scoreboard players set @a HasMissiles 0
scoreboard players set @a hasDied 0 
scoreboard players set @a Spawn 5
scoreboard players set @a TopDominate 0

scoreboard objectives setdisplay sidebar TopDominate
team add Green
team add Red
team add Yellow
team add Blue
spawnpoint @a 43 53 -49
