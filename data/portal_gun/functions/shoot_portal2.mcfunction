particle dust 0.769 0.486 0.000 1 ~ ~ ~ 0.769 0.486 0.000 1 0 force
execute unless block ~ ~ ~ #portal_gun:ignore run function portal_gun:spawn_portal2
execute if entity @e[type=#portal_gun:hit,distance=..2] run function portal_gun:spawn_portal2
execute if entity @s[distance=..256] unless entity @e[type=#portal_gun:hit,distance=..2] if block ~ ~ ~ #portal_gun:ignore positioned ^ ^ ^.25 run function portal_gun:shoot_portal2