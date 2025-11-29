execute as @s at @s run playsound portal_guns:dismantle voice @a ~ ~ ~ 0.5
execute store result score @s portal_id run data get entity @s UUID[3]
execute at @s as @e[tag=portal_gun_portal] if score @s portal_id = @a[limit=1,sort=nearest,distance=0] portal_id at @s run function portal_guns:entities/portal/dismantle_fx
