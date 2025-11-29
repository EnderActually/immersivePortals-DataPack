#===< Ray range >===
scoreboard players set @s portal_range 500

#===< Sounds >===
execute as @s[tag=portal_a] at @s run playsound portal_guns:fire.blue voice @a
execute as @s[tag=portal_b] at @s run playsound portal_guns:fire.orange voice @a

#===< Default Shooting >===
execute at @s positioned ~ ~1.5 ~ run function portal_guns:items/portal_gun/iter
function portal_guns:items/portal_gun/switch
#tellraw @s[tag=portal_hit_vert] "Hit wall"
#tellraw @s[tag=portal_hit_hori] "Hit bottom"
#tellraw @s[tag=portal_hit_corner] "Hit corner"
#tellraw @s[tag=portal_bottom] "Bottom"
#tellraw @s[tag=portal_top] "Top"

tag @s remove portal_hit
tag @s remove portal_hit_vert
tag @s remove portal_hit_hori
tag @s remove portal_hit_corner
tag @s remove portal_hit_bottom
tag @s remove portal_hit_top