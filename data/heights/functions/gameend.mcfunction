execute as @p[scores={TopDominate=1200}] at @s run title @a title [{"selector":"@s"},{"text":" won the game!","color":"dark_green"}]
tp @a -7 32 -98
scoreboard players @a set TopDominate 0