execute as @s at @s run playsound portal_guns:enter voice @a
execute store result score @s portal_id run data get entity @s UUID[3]
tag @s add portal_entered
tag @s add portal_user
tag @s add portal_jump_boost

effect give @s jump_boost 1 255 true


#===< Determine Target >===
execute if entity @e[tag=portal_target,tag=portal_vert] run tag @s add portal_target_vert
execute if entity @e[tag=portal_target,tag=portal_bottom] run tag @s add portal_target_bottom
execute if entity @e[tag=portal_target,tag=!portal_vert,tag=!portal_bottom] run tag @s add portal_target_top
execute if entity @e[tag=portal_linked,tag=portal_vert] run tag @s add portal_origin_vert

#===< Calculate rotation displacement >===
scoreboard players operation $portal_rotate portal_rotation = @e[tag=portal_linked,limit=1] portal_rotation
scoreboard players operation $portal_rotate portal_rotation -= @e[tag=portal_target,limit=1] portal_rotation

#===< Vertical >===
execute as @s[tag=portal_target_vert,tag=portal_origin_vert] if score $portal_rotate portal_rotation matches -3 at @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 rotated as @s rotated ~90 ~ run tp @s ~ ~ ~ ~ ~
execute as @s[tag=portal_target_vert,tag=portal_origin_vert] if score $portal_rotate portal_rotation matches -2 at @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 rotated as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
execute as @s[tag=portal_target_vert,tag=portal_origin_vert] if score $portal_rotate portal_rotation matches -1 at @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 rotated as @s rotated ~-90 ~ run tp @s ~ ~ ~ ~ ~
execute as @s[tag=portal_target_vert,tag=portal_origin_vert] if score $portal_rotate portal_rotation matches 0 at @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 rotated as @s rotated ~180 ~ run tp @s ~ ~ ~ ~ ~
execute as @s[tag=portal_target_vert,tag=portal_origin_vert] if score $portal_rotate portal_rotation matches 1 at @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 rotated as @s rotated ~90 ~ run tp @s ~ ~ ~ ~ ~
execute as @s[tag=portal_target_vert,tag=portal_origin_vert] if score $portal_rotate portal_rotation matches 2 at @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 rotated as @s run tp @s ~ ~ ~ ~ ~
execute as @s[tag=portal_target_vert,tag=portal_origin_vert] if score $portal_rotate portal_rotation matches 3 at @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 rotated as @s rotated ~-90 ~ run tp @s ~ ~ ~ ~ ~
execute as @s[tag=portal_target_vert,tag=!portal_origin_vert] at @e[tag=portal_target,limit=1] rotated as @e[tag=portal_target,limit=1] positioned ^ ^ ^.5 run tp @s ~ ~ ~ ~ ~

#===< Horizontal >===
execute as @s[tag=portal_target_bottom] at @e[tag=portal_target,limit=1] rotated as @s run tp @s ~ ~.2 ~ ~ ~
execute as @s[tag=portal_target_top] at @e[tag=portal_target,limit=1] rotated as @s run tp @s ~ ~-2 ~ ~ ~

#===< Motion wheee >===
execute as @s[tag=portal_target_bottom,scores={portal_motion=..-5}] run function portal_guns:math/upwards_motion 
execute if score $portal_vert_mot portal_dummy matches 1 as @s[tag=portal_target_vert,scores={portal_motion=..-5}] at @s run function portal_guns:summon/vertical_motion

execute as @s[tag=gravity_using] at @s run function gravity_guns:entities/portal

#===< Reset >===
tag @s remove portal_target_vert
tag @s remove portal_target_bottom
tag @s remove portal_target_top
tag @s remove portal_origin_vert