scoreboard players add @s portal_timer 1
scoreboard players operation @s portal_pre_motion = @s portal_motion

#===< Check for other portal >===
execute as @e[tag=portal_gun_portal,distance=0.1..] if score @s portal_id = @e[tag=portal_gun_portal,sort=nearest,limit=1] portal_id run tag @s add portal_target
execute if entity @e[tag=portal_target] run tag @s add portal_linked

#===< Display models >===
function portal_guns:entities/portal/display

#===< Break Flowers >===
execute as @s[tag=portal_bottom] positioned ^ ^.1 ^.5 if block ~ ~ ~ #portal_guns:nonsolid run fill ~ ~ ~ ~ ~ ~ air destroy
execute as @s[tag=portal_bottom] positioned ^ ^.1 ^-.5 if block ~ ~ ~ #portal_guns:nonsolid run fill ~ ~ ~ ~ ~ ~ air destroy

#===< Dismantle >===
execute as @s[tag=portal_vert] if block ^ ^ ^-.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_vert] if block ^ ^1 ^-.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_bottom] if block ^ ^-.5 ^.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_bottom] if block ^ ^-.5 ^-.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_bottom] unless block ^ ^.1 ^.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_bottom] unless block ^ ^.1 ^-.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_hori,tag=!portal_bottom] if block ^ ^.5 ^.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_hori,tag=!portal_bottom] if block ^ ^.5 ^-.5 #portal_guns:nonsolid run tag @s add portal_dismantle
execute as @s[tag=portal_dismantle] run function portal_guns:entities/portal/dismantle_fx

#===< Enter >===
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_x_axis] positioned ~-1 ~-.5 ~-.5 as @e[type=!#portal_guns:nonalive,dx=1,dy=0,dz=0] run tag @s add portal_in_range
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_z_axis] positioned ~-.5 ~-.5 ~-1 as @e[type=!#portal_guns:nonalive,dx=0,dy=0,dz=1] run tag @s add portal_in_range
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_x_axis] positioned ~-1 ~-.5 ~-.5 as @e[type=!#portal_guns:nonalive,dx=1,dy=1,dz=0,scores={portal_motion=..-5}] run tag @s add portal_in_range
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_z_axis] positioned ~-.5 ~-.5 ~-1 as @e[type=!#portal_guns:nonalive,dx=0,dy=1,dz=1,scores={portal_motion=..-5}] run tag @s add portal_in_range
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_x_axis] positioned ~-1 ~-.5 ~-.5 as @e[type=!#portal_guns:nonalive,dx=1,dy=2,dz=0,scores={portal_motion=..-8}] run tag @s add portal_in_range
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_z_axis] positioned ~-.5 ~-.5 ~-1 as @e[type=!#portal_guns:nonalive,dx=0,dy=2,dz=1,scores={portal_motion=..-8}] run tag @s add portal_in_range
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_x_axis] positioned ~-1 ~-.5 ~-.5 as @e[type=!#portal_guns:nonalive,dx=1,dy=3,dz=0,scores={portal_motion=..-10}] run tag @s add portal_in_range
execute as @s[tag=portal_hori,tag=portal_linked,tag=portal_z_axis] positioned ~-.5 ~-.5 ~-1 as @e[type=!#portal_guns:nonalive,dx=0,dy=3,dz=1,scores={portal_motion=..-10}] run tag @s add portal_in_range
execute as @s[tag=portal_vert,tag=portal_linked] positioned ~-1 ~ ~-1 as @e[type=!#portal_guns:nonalive,dx=0,dy=1,dz=0] positioned ~.5 ~ ~.5 as @s[dx=0,dy=1,dz=0] run tag @s add portal_in_range
execute as @e[tag=!portal_entered,tag=portal_in_range] run function portal_guns:entities/portal/enter

#===< Reset >===
tag @e[tag=portal_target] remove portal_target
tag @s remove portal_linked