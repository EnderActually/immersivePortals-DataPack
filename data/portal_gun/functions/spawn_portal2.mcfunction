scoreboard players operation .portal_temp portal.sid = @s portal.sid
execute as @e[type=armor_stand,tag=portal.2] if score @s portal.sid = .portal_temp portal.sid run kill @s
summon armor_stand ~ ~.2 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal.2","portal.temp","portal.for.gun"],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b,tag:{display:{Name:'{"text":"Portal"}'},CustomModelData:1345435}}]}
particle flash ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=portal.temp] run scoreboard players operation @s portal.sid = .portal_temp portal.sid
execute as @e[tag=portal.temp] run tag @s remove portal.temp
scoreboard players reset .portal_temp portal.sid