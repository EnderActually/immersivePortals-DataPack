scoreboard players remove @s portal_range 1
particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1

#===< Hitting something >===
execute unless block ~ ~ ~ #portal_guns:nonsolid run function portal_guns:items/portal_gun/hit


#===< Align and set portal >===
execute as @s[tag=portal_hit_vert] positioned ^ ^ ^-.5 if block ~ ~-1 ~ #portal_guns:nonsolid positioned ~ ~-1 ~ run function portal_guns:summon/portal
execute as @s[tag=portal_hit_vert] positioned ^ ^ ^-.5 unless block ~ ~-1 ~ #portal_guns:nonsolid run function portal_guns:summon/portal
execute as @s[tag=portal_hit_hori,tag=portal_hit_corner] positioned ^ ^ ^-.5 rotated ~ 0 positioned ^ ^ ^-1 run function portal_guns:summon/portal
execute as @s[tag=portal_hit_hori,tag=!portal_hit_corner] positioned ^ ^ ^-.5 run function portal_guns:summon/portal

#===< Iterate >===
execute as @s[tag=!portal_hit,scores={portal_range=1..}] positioned ^ ^ ^.5 run function portal_guns:items/portal_gun/iter
