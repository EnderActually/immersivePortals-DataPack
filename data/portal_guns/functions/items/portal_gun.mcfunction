#===< Check portal type >===
execute as @s[nbt={SelectedItem:{tag:{PortalSelect:"A"}}}] run tag @s add portal_a
execute as @s[nbt={SelectedItem:{tag:{PortalSelect:"B"}}}] run tag @s add portal_b

#===< Check for portals >===s
execute at @e[tag=portal_gun_portal,tag=portal_a] if score @s portal_id = @e[sort=nearest,limit=1,tag=portal_gun_portal,tag=portal_a] portal_id run tag @s add portal_a_exists
execute at @e[tag=portal_gun_portal,tag=portal_b] if score @s portal_id = @e[sort=nearest,limit=1,tag=portal_gun_portal,tag=portal_b] portal_id run tag @s add portal_b_exists

#===< Crosshair >===
title @s times 0 3 1
title @s[tag=!portal_a_exists,tag=!portal_b_exists] actionbar [{"text":"0","font":"portal_crosshair"}]
title @s[tag=portal_a_exists,tag=!portal_b_exists] actionbar [{"text":"1","font":"portal_crosshair"}]
title @s[tag=!portal_a_exists,tag=portal_b_exists] actionbar [{"text":"2","font":"portal_crosshair"}]
title @s[tag=portal_a_exists,tag=portal_b_exists] actionbar [{"text":"3","font":"portal_crosshair"}]

#===< Controls >===
execute as @s[scores={portal_shoot=1..,portal_sneak=1..},x_rotation=-90..79] run function portal_guns:items/portal_gun/switch
execute as @s[scores={portal_shoot=1..,portal_sneak=1..},x_rotation=80..90] run function portal_guns:items/portal_gun/dismantle
execute as @s[scores={portal_shoot=1..,portal_sneak=0}] run function portal_guns:items/portal_gun/shoot

execute as @s[tag=!holdsPortalGun] at @s run playsound portal_guns:equip voice @a
tag @s[tag=!holdsPortalGun] add holdsPortalGun

#===< Reset >===
tag @s remove portal_a_exists
tag @s remove portal_b_exists
scoreboard players add @s portal_sneak 0
