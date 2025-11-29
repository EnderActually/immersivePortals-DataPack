tag @s add portal_hit
execute as @s rotated ~ 0 if block ^ ^ ^-1 #portal_guns:nonsolid unless block ^ ^1 ^ #portal_guns:nonsolid if block ^ ^1 ^-1 #portal_guns:nonsolid run tag @s add portal_hit_vert
execute as @s rotated ~ 0 if block ^ ^ ^-1 #portal_guns:nonsolid unless block ^ ^-1 ^ #portal_guns:nonsolid if block ^ ^-1 ^-1 #portal_guns:nonsolid run tag @s add portal_hit_vert
execute as @s[tag=portal_hit_vert] positioned ^ ^ ^-.5 rotated ~ 0 if block ^ ^ ^.5 #portal_guns:nonsolid run tag @s add portal_hit_hori
execute as @s[tag=portal_hit_vert] positioned ^ ^ ^-.5 rotated ~ 0 if block ^ ^ ^.5 #portal_guns:nonsolid run tag @s remove portal_hit_vert
execute as @s[tag=!portal_hit_vert] rotated ~ 0 unless block ^ ^ ^-1 #portal_guns:nonsolid run tag @s add portal_hit_hori
execute as @s[tag=!portal_hit_vert] rotated ~ 0 if block ^ ^1 ^ #portal_guns:nonsolid if block ^ ^1 ^1 #portal_guns:nonsolid run tag @s add portal_hit_hori

#function portal_guns:math/hit

execute as @s[tag=portal_hit_hori,x_rotation=1..90] run tag @s add portal_hit_bottom
execute as @s[tag=portal_hit_hori,x_rotation=-90..0] run tag @s add portal_hit_top
execute as @s[tag=portal_hit_bottom] rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~1 ~ #portal_guns:nonsolid run tag @s add portal_hit_corner
execute as @s[tag=portal_hit_bottom] rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ #portal_guns:nonsolid run tag @s add portal_hit_corner
execute as @s[tag=portal_hit_top] rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~-1 ~ #portal_guns:nonsolid run tag @s add portal_hit_corner