kill @e[tag=portal_gun_portal,sort=nearest,limit=1,distance=..0.01]

#===< Summon based on rotation >===
execute as @s[scores={portal_rotation=0}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2096896,Invisible:1b,Tags:["portal_gun_portal"]}
execute as @s[scores={portal_rotation=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2096896,Invisible:1b,Tags:["portal_gun_portal"],Rotation:[90f,0f]}
execute as @s[scores={portal_rotation=2}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2096896,Invisible:1b,Tags:["portal_gun_portal"],Rotation:[180f,0f]}
execute as @s[scores={portal_rotation=3}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,DisabledSlots:2096896,Invisible:1b,Tags:["portal_gun_portal"],Rotation:[-90f,0f]}

#===< Axis required for bottom portals >===
execute as @s[scores={portal_rotation=0}] run tag @e[tag=portal_gun_portal,sort=nearest,limit=1] add portal_z_axis
execute as @s[scores={portal_rotation=1}] run tag @e[tag=portal_gun_portal,sort=nearest,limit=1] add portal_x_axis
execute as @s[scores={portal_rotation=2}] run tag @e[tag=portal_gun_portal,sort=nearest,limit=1] add portal_z_axis
execute as @s[scores={portal_rotation=3}] run tag @e[tag=portal_gun_portal,sort=nearest,limit=1] add portal_x_axis

#===< Forceload >===
execute as @e[tag=portal_gun_portal,sort=nearest,limit=1] store result score @s portal_forceload run forceload query ~ ~
forceload add ~ ~

#===< Copy data >===
execute as @s[tag=portal_a] run tag @e[sort=nearest,limit=1,tag=portal_gun_portal] add portal_a
execute as @s[tag=portal_b] run tag @e[sort=nearest,limit=1,tag=portal_gun_portal] add portal_b
execute as @e[tag=portal_gun_portal,sort=nearest,limit=1] as @s[tag=portal_a] run data merge entity @s {CustomName:'"PortalA"'}
execute as @e[tag=portal_gun_portal,sort=nearest,limit=1] as @s[tag=portal_b] run data merge entity @s {CustomName:'"PortalB"'}
execute as @s[tag=portal_hit_hori] run tag @e[sort=nearest,limit=1,tag=portal_gun_portal] add portal_hori
execute as @s[tag=portal_hit_vert] run tag @e[sort=nearest,limit=1,tag=portal_gun_portal] add portal_vert
execute as @s[tag=portal_hit_bottom] run tag @e[sort=nearest,limit=1,tag=portal_gun_portal] add portal_bottom
execute store result score @e[tag=portal_gun_portal,sort=nearest,limit=1] portal_id run scoreboard players get @s portal_id
execute store result score @e[tag=portal_gun_portal,sort=nearest,limit=1] portal_rotation run scoreboard players get @s portal_rotation

#===< Kill >===
execute as @e[tag=portal_gun_portal,sort=nearest,limit=1] as @s[tag=portal_vert] positioned ~ ~1 ~ as @e[tag=portal_gun_portal,sort=nearest,limit=1,distance=..0.01] run function portal_guns:entities/portal/dismantle
execute as @e[tag=portal_gun_portal,sort=nearest,limit=1] as @s[tag=portal_vert] positioned ~ ~-1 ~ as @e[tag=portal_gun_portal,sort=nearest,limit=1,distance=..0.01] run function portal_guns:entities/portal/dismantle
execute as @e[tag=portal_gun_portal,sort=nearest,limit=1] as @s[tag=portal_hori] at @s positioned ^ ^ ^1 as @e[tag=portal_gun_portal,sort=nearest,limit=1,distance=..0.01] run function portal_guns:entities/portal/dismantle
execute as @e[tag=portal_gun_portal,sort=nearest,limit=1] as @s[tag=portal_hori] at @s positioned ^ ^ ^-1 as @e[tag=portal_gun_portal,sort=nearest,limit=1,distance=..0.01] run function portal_guns:entities/portal/dismantle