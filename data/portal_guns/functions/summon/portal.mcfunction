execute as @s[y_rotation=135..-135] run scoreboard players set @s portal_rotation 0
execute as @s[y_rotation=-135..-45] run scoreboard players set @s portal_rotation 1
execute as @s[y_rotation=-45..45] run scoreboard players set @s portal_rotation 2
execute as @s[y_rotation=45..135] run scoreboard players set @s portal_rotation 3
execute store result score @s portal_id run data get entity @s UUID[3]

#===< Rotate portal on strange angles >===
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=0}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~ ~ ~.5 #portal_guns:nonsolid unless block ~-.5 ~ ~ #portal_guns:nonsolid run scoreboard players set @s portal_rotation 3
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=0}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~ ~ ~.5 #portal_guns:nonsolid unless block ~.5 ~ ~ #portal_guns:nonsolid run scoreboard players set @s portal_rotation 1
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=1}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~.5 ~ ~ #portal_guns:nonsolid unless block ~ ~ ~-.5 #portal_guns:nonsolid run scoreboard players set @s portal_rotation 0
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=1}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~.5 ~ ~ #portal_guns:nonsolid unless block ~ ~ ~.5 #portal_guns:nonsolid run scoreboard players set @s portal_rotation 2
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=2}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~ ~ ~.5 #portal_guns:nonsolid unless block ~-.5 ~ ~ #portal_guns:nonsolid run scoreboard players set @s portal_rotation 3
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=2}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~ ~ ~.5 #portal_guns:nonsolid unless block ~.5 ~ ~ #portal_guns:nonsolid run scoreboard players set @s portal_rotation 1
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=3}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~.5 ~ ~ #portal_guns:nonsolid unless block ~ ~ ~-.5 #portal_guns:nonsolid run scoreboard players set @s portal_rotation 0
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=3}] unless block ^ ^ ^.5 #portal_guns:nonsolid if block ~.5 ~ ~ #portal_guns:nonsolid unless block ~ ~ ~.5 #portal_guns:nonsolid run scoreboard players set @s portal_rotation 2


#===< Kill existing portals >===
execute as @s[tag=portal_a] at @e[tag=portal_gun_portal,tag=portal_a] if score @s portal_id = @e[tag=portal_gun_portal,sort=nearest,limit=1] portal_id as @e[tag=portal_gun_portal,sort=nearest,limit=1] run function portal_guns:entities/portal/dismantle
execute as @s[tag=portal_b] at @e[tag=portal_gun_portal,tag=portal_b] if score @s portal_id = @e[tag=portal_gun_portal,sort=nearest,limit=1] portal_id as @e[tag=portal_gun_portal,sort=nearest,limit=1] run function portal_guns:entities/portal/dismantle

#===< Wall portals >===
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=0}] align xyz positioned ~.5 ~ ~.002 run function portal_guns:entities/portal/init
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=1}] align xyz positioned ~.998 ~ ~.5 run function portal_guns:entities/portal/init
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=2}] align xyz positioned ~.5 ~ ~.998 run function portal_guns:entities/portal/init
execute as @s[tag=!portal_hit_hori,scores={portal_rotation=3}] align xyz positioned ~.002 ~ ~.5 run function portal_guns:entities/portal/init

#===< Horizontal portals >===
execute as @s[tag=portal_hit_bottom,scores={portal_rotation=0}] align xyz positioned ~.5 ~.0015 ~ run function portal_guns:entities/portal/init
execute as @s[tag=portal_hit_bottom,scores={portal_rotation=1}] align xyz positioned ~1 ~.0015 ~.5 run function portal_guns:entities/portal/init
execute as @s[tag=portal_hit_bottom,scores={portal_rotation=2}] align xyz positioned ~.5 ~.0015 ~1 run function portal_guns:entities/portal/init
execute as @s[tag=portal_hit_bottom,scores={portal_rotation=3}] align xyz positioned ~ ~.0015 ~.5 run function portal_guns:entities/portal/init
execute as @s[tag=portal_hit_top,scores={portal_rotation=0}] positioned ~ ~1 ~ align xyz positioned ~.5 ~-.0015 ~ run function portal_guns:entities/portal/init
execute as @s[tag=portal_hit_top,scores={portal_rotation=1}] positioned ~ ~1 ~ align xyz positioned ~1 ~-.0015 ~.5 run function portal_guns:entities/portal/init
execute as @s[tag=portal_hit_top,scores={portal_rotation=2}] positioned ~ ~1 ~ align xyz positioned ~.5 ~-.0015 ~1 run function portal_guns:entities/portal/init
execute as @s[tag=portal_hit_top,scores={portal_rotation=3}] positioned ~ ~1 ~ align xyz positioned ~ ~-.0015 ~.5 run function portal_guns:entities/portal/init


