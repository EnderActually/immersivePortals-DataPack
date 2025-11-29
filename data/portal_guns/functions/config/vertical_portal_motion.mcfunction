scoreboard players add $portal_vert_mot portal_dummy 1
execute if score $portal_vert_mot portal_dummy matches 2.. run scoreboard players set $portal_vert_mot portal_dummy 0

execute if score $portal_vert_mot portal_dummy matches 0 run tellraw @s [{"text":"Vertical Portal Motion: "},{"text":"disabled","color":"dark_red"}]
execute if score $portal_vert_mot portal_dummy matches 1 run tellraw @s [{"text":"Vertical Portal Motion: "},{"text":"enabled","color":"green"}]