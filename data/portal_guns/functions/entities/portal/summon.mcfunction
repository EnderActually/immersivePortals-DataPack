scoreboard players add @s rotPortalGun 0

execute at @s align xyz positioned ~0.5 ~ ~0.5 as @e[tag=portalPortal,distance=..0.5] run function portal_guns:portal/dismantle_fx

#Wall
execute as @s[tag=portalA,scores={rotPortalGun=0}] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,0f],Tags:["portalPortal","portalA"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=portalB,scores={rotPortalGun=0}] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,0f],Tags:["portalPortal","portalB"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=portalA,scores={rotPortalGun=1}] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,0f],Tags:["portalPortal","portalA"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=portalB,scores={rotPortalGun=1}] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,0f],Tags:["portalPortal","portalB"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=portalA,scores={rotPortalGun=2}] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,0f],Tags:["portalPortal","portalA"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=portalB,scores={rotPortalGun=2}] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,0f],Tags:["portalPortal","portalB"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=portalA,scores={rotPortalGun=3}] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[270f,0f],Tags:["portalPortal","portalA"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=portalB,scores={rotPortalGun=3}] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[270f,0f],Tags:["portalPortal","portalB"],NoGravity:1b,Invisible:1b,Invulnerable:1b}

execute as @s[tag=botPortal,tag=portalA,scores={rotPortalGun=4}] align xyz positioned ~0.5 ~ ~0.5 rotated 0 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,-90f],Tags:["portalPortal","portalA","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=botPortal,tag=portalB,scores={rotPortalGun=4}] align xyz positioned ~0.5 ~ ~0.5 rotated 0 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,-90f],Tags:["portalPortal","portalB","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=botPortal,tag=portalA,scores={rotPortalGun=5}] align xyz positioned ~0.5 ~ ~0.5 rotated 90 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,-90f],Tags:["portalPortal","portalA","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=botPortal,tag=portalB,scores={rotPortalGun=5}] align xyz positioned ~0.5 ~ ~0.5 rotated 90 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,-90f],Tags:["portalPortal","portalB","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=botPortal,tag=portalA,scores={rotPortalGun=6}] align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,-90f],Tags:["portalPortal","portalA","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=botPortal,tag=portalB,scores={rotPortalGun=6}] align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,-90f],Tags:["portalPortal","portalB","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=botPortal,tag=portalA,scores={rotPortalGun=7}] align xyz positioned ~0.5 ~ ~0.5 rotated 270 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[270f,-90f],Tags:["portalPortal","portalA","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute as @s[tag=botPortal,tag=portalB,scores={rotPortalGun=7}] align xyz positioned ~0.5 ~ ~0.5 rotated 270 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[270f,-90f],Tags:["portalPortal","portalB","portalBot"],NoGravity:1b,Invisible:1b,Invulnerable:1b}

execute as @s[tag=topPortal,tag=portalA,scores={rotPortalGun=8}] align xyz positioned ~0.5 ~ ~0.5 rotated 0 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,-90f],Tags:["portalPortal","portalA","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @s[tag=topPortal,tag=portalB,scores={rotPortalGun=8}] align xyz positioned ~0.5 ~ ~0.5 rotated 0 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,-90f],Tags:["portalPortal","portalB","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @s[tag=topPortal,tag=portalA,scores={rotPortalGun=9}] align xyz positioned ~0.5 ~ ~0.5 rotated 90 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,-90f],Tags:["portalPortal","portalA","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @s[tag=topPortal,tag=portalB,scores={rotPortalGun=9}] align xyz positioned ~0.5 ~ ~0.5 rotated 90 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,-90f],Tags:["portalPortal","portalB","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @s[tag=topPortal,tag=portalA,scores={rotPortalGun=10}] align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,-90f],Tags:["portalPortal","portalA","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @s[tag=topPortal,tag=portalB,scores={rotPortalGun=10}] align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,-90f],Tags:["portalPortal","portalB","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @s[tag=topPortal,tag=portalA,scores={rotPortalGun=11}] align xyz positioned ~0.5 ~ ~0.5 rotated 270 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[270f,-90f],Tags:["portalPortal","portalA","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
execute as @s[tag=topPortal,tag=portalB,scores={rotPortalGun=11}] align xyz positioned ~0.5 ~ ~0.5 rotated 270 0 positioned ^ ^ ^-0.5 run summon minecraft:armor_stand ~ ~ ~ {Rotation:[270f,-90f],Tags:["portalPortal","portalB","portalTop"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}

#Forceload the chunk
execute at @s as @e[tag=portalPortal,sort=nearest,limit=1] at @s store success score @s portal_forceload run forceload query ~ ~
execute at @s as @e[tag=portalPortal,sort=nearest,limit=1] at @s run forceload add ~ ~

#Load correct model
execute at @s as @e[tag=portalPortal,sort=nearest,limit=1] run tag @s add portalLoad

execute as @s at @s store result score @e[tag=portalPortal,sort=nearest,limit=1] portal_id run scoreboard players get @s portal_id
execute as @s at @s at @e[tag=portalPortal,tag=portalA,sort=nearest,limit=1] as @e[tag=portalA,distance=0.001..] if score @e[tag=portalPortal,sort=nearest,limit=1] portal_id = @s portal_id run function portal_guns:portal/dismantle
execute as @s at @s at @e[tag=portalPortal,tag=portalB,sort=nearest,limit=1] as @e[tag=portalB,distance=0.001..] if score @e[tag=portalPortal,sort=nearest,limit=1] portal_id = @s portal_id run function portal_guns:portal/dismantle
