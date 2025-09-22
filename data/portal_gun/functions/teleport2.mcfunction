tag @s add teleport1
tag @e[type=armor_stand,tag=portal.2,limit=1,sort=nearest] add teleport.start
execute as @e[tag=teleport.start] at @s as @e[type=armor_stand,tag=portal.1] if score @s portal.sid = @e[tag=teleport.start,limit=1] portal.sid run tag @s add teleport.portal
scoreboard players operation @s portal.last.sid = @e[tag=teleport.start] portal.sid
execute as @e[tag=teleport.portal] at @s as @a[tag=teleport1] run tp @s ~ ~ ~
tag @e remove teleport.portal
tag @e remove teleport.start