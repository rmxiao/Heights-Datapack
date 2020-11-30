execute store success score @s HasMissiles run clear @s firework_rocket 1
execute store success score @s[scores={HasMissiles=1}] BowReloaded as @s[scores={HasMissiles=1}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] weapon.mainhand minecraft:crossbow{display:{Name:'[{"text":"SBG","italic":true}]'},Enchantments:[{id:quick_charge,lvl:5}],Charged:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:3,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;15790320]},{Type:4,Flicker:1,Trail:1,Colors:[I;4312372,15790320]}]}}}]} 1
scoreboard players set @s[scores={BowReloaded=1}] BowDelay 5


execute store success score @s[scores={BowDelay=0}] HasArrows unless entity @s[scores={BowReloaded=1}] run clear @s firework_star 1
execute store success score @s[scores={HasArrows=1}] BowReloaded run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] weapon.mainhand minecraft:crossbow{display:{Name:'[{"text":"SBG","italic":true}]'},Enchantments:[{id:quick_charge,lvl:5}],Charged:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1}]} 1


scoreboard players set @s[scores={BowReloaded=1}] BowDelay 5
scoreboard players set @s[scores={BowReloaded=1}] BowReloaded 0
scoreboard players set @s HasArrows 0
scoreboard players set @s HasMissiles 0


