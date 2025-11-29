execute as @e[type=!#portal_guns:nonalive] if score @s portal_id = @e[tag=portal_motion_vect,sort=nearest,limit=1] portal_id rotated as @s run tp @s ~ ~ ~
scoreboard players add @s portal_timer 1
execute as @e[type=!#portal_guns:nonalive] run effect give @s levitation 1 255 true
execute as @s[scores={portal_timer=15..},nbt={OnGround:1b}] run effect clear @e[type=!#portal_guns:nonalive]
kill @s[scores={portal_timer=15..},nbt={OnGround:1b}]
kill @s[scores={portal_timer=120..}]