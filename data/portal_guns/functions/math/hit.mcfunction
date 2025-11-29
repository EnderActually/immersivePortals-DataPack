#===< Get Position >===
summon marker ~ ~ ~ {Tags:["portal_position"]}
execute store result score $portal_x portal_dummy run data get entity @e[tag=portal_position,limit=1] Pos[0] 100
execute store result score $portal_y portal_dummy run data get entity @e[tag=portal_position,limit=1] Pos[1] 100
execute store result score $portal_z portal_dummy run data get entity @e[tag=portal_position,limit=1] Pos[2] 100
kill @e[tag=portal_position]

#===< Abs >===
scoreboard players set $portal_abs portal_dummy -1
execute if score $portal_x portal_dummy matches ..0 run scoreboard players operation $portal_x portal_dummy *= $portal_abs portal_dummy
execute if score $portal_y portal_dummy matches ..0 run scoreboard players operation $portal_y portal_dummy *= $portal_abs portal_dummy
execute if score $portal_z portal_dummy matches ..0 run scoreboard players operation $portal_z portal_dummy *= $portal_abs portal_dummy

#===< Subtract to only have the floating value >===
scoreboard players set $portal_100 portal_dummy 100
scoreboard players operation $portal_int portal_dummy = $portal_x portal_dummy
scoreboard players operation $portal_int portal_dummy /= $portal_100 portal_dummy
scoreboard players operation $portal_int portal_dummy *= $portal_100 portal_dummy
scoreboard players operation $portal_x portal_dummy -= $portal_int portal_dummy

scoreboard players operation $portal_int portal_dummy = $portal_y portal_dummy
scoreboard players operation $portal_int portal_dummy /= $portal_100 portal_dummy
scoreboard players operation $portal_int portal_dummy *= $portal_100 portal_dummy
scoreboard players operation $portal_y portal_dummy -= $portal_int portal_dummy

scoreboard players operation $portal_int portal_dummy = $portal_z portal_dummy
scoreboard players operation $portal_int portal_dummy /= $portal_100 portal_dummy
scoreboard players operation $portal_int portal_dummy *= $portal_100 portal_dummy
scoreboard players operation $portal_z portal_dummy -= $portal_int portal_dummy

#===< Calculate difference >===
execute if score $portal_x portal_dummy matches 50.. run tag @s add portal_subtract
execute as @s[tag=portal_subtract] run scoreboard players operation $portal_float portal_dummy = $portal_x portal_dummy
execute as @s[tag=portal_subtract] run scoreboard players set $portal_x portal_dummy 100
execute as @s[tag=portal_subtract] run scoreboard players operation $portal_x portal_dummy -= $portal_float portal_dummy
tag @s remove portal_subtract

execute if score $portal_y portal_dummy matches 50.. run tag @s add portal_subtract
execute as @s[tag=portal_subtract] run scoreboard players operation $portal_float portal_dummy = $portal_y portal_dummy
execute as @s[tag=portal_subtract] run scoreboard players set $portal_y portal_dummy 100
execute as @s[tag=portal_subtract] run scoreboard players operation $portal_y portal_dummy -= $portal_float portal_dummy
tag @s remove portal_subtract

execute if score $portal_z portal_dummy matches 50.. run tag @s add portal_subtract
execute as @s[tag=portal_subtract] run scoreboard players operation $portal_float portal_dummy = $portal_z portal_dummy
execute as @s[tag=portal_subtract] run scoreboard players set $portal_z portal_dummy 100
execute as @s[tag=portal_subtract] run scoreboard players operation $portal_z portal_dummy -= $portal_float portal_dummy
tag @s remove portal_subtract

execute if block ~ ~-.2 ~ #portal_guns:nonsolid if score $portal_y portal_dummy < $portal_x portal_dummy if score $portal_y portal_dummy < $portal_z portal_dummy run tag @s add portal_hit_hori
execute if block ~ ~.2 ~ #portal_guns:nonsolid if score $portal_y portal_dummy < $portal_x portal_dummy if score $portal_y portal_dummy < $portal_z portal_dummy run tag @s add portal_hit_hori
tag @s[tag=!portal_hit_hori] add portal_hit_vert 