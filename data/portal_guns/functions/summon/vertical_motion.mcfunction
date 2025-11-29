summon armor_stand ~ ~ ~ {Invulnerable:1b,Tags:["portal_motion_vect"],Silent:1b,Invisible:1b}
execute store result score @e[tag=portal_motion_vect,sort=nearest,limit=1] portal_id run data get entity @s UUID[3]

scoreboard players operation @e[tag=portal_motion_vect,sort=nearest,limit=1] portal_rotation = @e[tag=portal_gun_portal,sort=nearest,limit=1] portal_rotation
scoreboard players operation @e[tag=portal_motion_vect,sort=nearest,limit=1] portal_motion = @s portal_motion


execute as @e[tag=portal_motion_vect,sort=nearest,limit=1] as @s[scores={portal_rotation=0}] store result entity @s Motion[2] double -0.1 run scoreboard players get @s portal_motion
execute as @e[tag=portal_motion_vect,sort=nearest,limit=1] as @s[scores={portal_rotation=1}] store result entity @s Motion[0] double 0.1 run scoreboard players get @s portal_motion
execute as @e[tag=portal_motion_vect,sort=nearest,limit=1] as @s[scores={portal_rotation=2}] store result entity @s Motion[2] double 0.1 run scoreboard players get @s portal_motion
execute as @e[tag=portal_motion_vect,sort=nearest,limit=1] as @s[scores={portal_rotation=3}] store result entity @s Motion[0] double -0.1 run scoreboard players get @s portal_motion
