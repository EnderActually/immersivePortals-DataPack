execute as @s[tag=!portal_in_range,tag=portal_entered] run tag @s remove portal_entered
execute as @s[tag=portal_in_range] run tag @s remove portal_in_range
tag @s[tag=!portal_in_range,tag=!portal_entered] remove portal_user