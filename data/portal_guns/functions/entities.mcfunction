#===< Calculate Motion >===
execute as @s[type=player] at @s if entity @e[tag=portal_gun_portal,distance=..16] store result score @s portal_motion run data get entity @s Motion[1] 10
execute as @s[tag=portal_motion] run scoreboard players add @s portal_timer 1
execute as @s[tag=portal_motion,scores={portal_timer=8..}] run effect clear @s levitation
execute as @s[tag=portal_motion,scores={portal_timer=8..}] run tag @s remove portal_motion
scoreboard players set @s[tag=!portal_gun_portal,tag=!portal_motion_vect,scores={portal_timer=8..}] portal_timer 0

#===< Reset Players jump boost >===
effect clear @s[tag=portal_jump_boost] jump_boost
tag @s[tag=portal_jump_boost] remove portal_jump_boost

#===< Load portal >===
execute as @s[tag=portal_gun_portal] at @s run function portal_guns:entities/portal

#===< Vertical Motion >===
execute as @s[tag=portal_motion_vect] at @s run function portal_guns:entities/vertical_motion