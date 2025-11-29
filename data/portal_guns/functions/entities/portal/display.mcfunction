#===< Vertical Portal A >===
data merge entity @s[tag=portal_a,tag=portal_vert,scores={portal_timer=1}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200700}}]}
data merge entity @s[tag=portal_a,tag=portal_vert,scores={portal_timer=2}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200701}}]}
data merge entity @s[tag=portal_a,tag=portal_vert,scores={portal_timer=3}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200702}}]}
data merge entity @s[tag=portal_a,tag=portal_vert,tag=!portal_existed,tag=portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200703}}]}
data merge entity @s[tag=portal_a,tag=portal_vert,tag=portal_existed,tag=!portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200702}}]}

#===< Vertical Portal B >===
data merge entity @s[tag=portal_b,tag=portal_vert,scores={portal_timer=1}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200712}}]}
data merge entity @s[tag=portal_b,tag=portal_vert,scores={portal_timer=2}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200713}}]}
data merge entity @s[tag=portal_b,tag=portal_vert,scores={portal_timer=3}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200714}}]}
data merge entity @s[tag=portal_b,tag=portal_vert,tag=!portal_existed,tag=portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200715}}]}
data merge entity @s[tag=portal_b,tag=portal_vert,tag=portal_existed,tag=!portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200714}}]}

#===< Horizontal Portal A >===
data merge entity @s[tag=portal_a,tag=portal_hori,scores={portal_timer=1}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200704}}]}
data merge entity @s[tag=portal_a,tag=portal_hori,scores={portal_timer=2}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200705}}]}
data merge entity @s[tag=portal_a,tag=portal_hori,scores={portal_timer=3}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200710}}]}
data merge entity @s[tag=portal_a,tag=portal_hori,tag=!portal_existed,tag=portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200711}}]}
data merge entity @s[tag=portal_a,tag=portal_hori,tag=portal_existed,tag=!portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200710}}]}

#===< Horizontal Portal B >===
data merge entity @s[tag=portal_b,tag=portal_hori,scores={portal_timer=1}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200716}}]}
data merge entity @s[tag=portal_b,tag=portal_hori,scores={portal_timer=2}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200717}}]}
data merge entity @s[tag=portal_b,tag=portal_hori,scores={portal_timer=3}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200718}}]}
data merge entity @s[tag=portal_b,tag=portal_hori,tag=!portal_existed,tag=portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200719}}]}
data merge entity @s[tag=portal_b,tag=portal_hori,tag=portal_existed,tag=!portal_linked,scores={portal_timer=3..}] {ArmorItems:[{},{},{},{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:200718}}]}

#===< Switch >===
tag @s[tag=!portal_linked] remove portal_existed
tag @s[tag=portal_linked,scores={portal_timer=3..}] add portal_existed