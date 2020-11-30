# TPs player to their spawn
execute as @a[scores={SpawnpointSet=0}] run scoreboard players set @s SpawnpointSet -1 
# Blue 
execute if entity @s[team=Blue,scores={Spawn=1}] as @s run tp @s -2 15 -2
execute if entity @s[team=Blue,scores={Spawn=2}] as @s run tp @s -2 15 -17
execute if entity @s[team=Blue,scores={Spawn=3}] as @s run tp @s 1 15 -28
execute if entity @s[team=Blue,scores={Spawn=4}] as @s run tp @s 12 15 -2 
execute if entity @s[team=Blue,scores={Spawn=5}] as @s run tp @s 13 15 -19
execute if entity @s[team=Blue,scores={Spawn=6}] as @s run tp @s 13 15 -37
execute if entity @s[team=Blue,scores={Spawn=7}] as @s run tp @s 22 15 -6
execute if entity @s[team=Blue,scores={Spawn=8}] as @s run tp @s 23 15 -29
execute if entity @s[team=Blue,scores={Spawn=9}] as @s run tp @s 31 15 -19


# Yellow
execute if entity @s[team=Yellow,scores={Spawn=1}] as @s run tp @s 88 15 -93
execute if entity @s[team=Yellow,scores={Spawn=2}] as @s run tp @s 89 15 -79
execute if entity @s[team=Yellow,scores={Spawn=3}] as @s run tp @s 85 15 -68
execute if entity @s[team=Yellow,scores={Spawn=4}] as @s run tp @s 74 15 -94
execute if entity @s[team=Yellow,scores={Spawn=5}] as @s run tp @s 72 15 -77
execute if entity @s[team=Yellow,scores={Spawn=6}] as @s run tp @s 72 15 -59
execute if entity @s[team=Yellow,scores={Spawn=7}] as @s run tp @s 63 15 -90
execute if entity @s[team=Yellow,scores={Spawn=8}] as @s run tp @s 62 15 -67
execute if entity @s[team=Yellow,scores={Spawn=9}] as @s run tp @s 54 15 -77

# Green
execute if entity @s[team=Green,scores={Spawn=1}] as @s run tp @s -1 15 -93
execute if entity @s[team=Green,scores={Spawn=2}] as @s run tp @s 12 15 -94
execute if entity @s[team=Green,scores={Spawn=3}] as @s run tp @s 23 15 -90
execute if entity @s[team=Green,scores={Spawn=4}] as @s run tp @s -2 15 -79
execute if entity @s[team=Green,scores={Spawn=5}] as @s run tp @s 14 15 -77
execute if entity @s[team=Green,scores={Spawn=6}] as @s run tp @s 32 15 -77
execute if entity @s[team=Green,scores={Spawn=7}] as @s run tp @s 1 15 -68
execute if entity @s[team=Green,scores={Spawn=8}] as @s run tp @s 24 15 -67
execute if entity @s[team=Green,scores={Spawn=9}] as @s run tp @s 14 15 -59


# Red
execute if entity @s[team=Red, scores={Spawn=1}] as @s run tp @s 88 15 -3
execute if entity @s[team=Red, scores={Spawn=2}] as @s run tp @s 74 15 -2
execute if entity @s[team=Red, scores={Spawn=3}] as @s run tp @s 63 15 -6
execute if entity @s[team=Red, scores={Spawn=4}] as @s run tp @s 89 15 -17
execute if entity @s[team=Red, scores={Spawn=5}] as @s run tp @s 72 15 -19
execute if entity @s[team=Red, scores={Spawn=6}] as @s run tp @s 54 15 -19
execute if entity @s[team=Red, scores={Spawn=7}] as @s run tp @s 85 15 -28
execute if entity @s[team=Red, scores={Spawn=8}] as @s run tp @s 62 15 -29
execute if entity @s[team=Red, scores={Spawn=9}] as @s run tp @s 72 15 -37
