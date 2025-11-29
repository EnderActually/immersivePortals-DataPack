#===< Main procedure >===
execute as @a[tag=!portal_setup] run function portal_guns:setup
execute as @a run function portal_guns:items
execute as @e run function portal_guns:entities
execute as @e[tag=portal_user] run function portal_guns:exclude
execute as @a run function portal_guns:reset

#===< Credit >===
# This datapack was made by Craiy. Visit Craiy.net for more!
# <3