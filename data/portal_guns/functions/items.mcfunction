execute as @s[nbt={SelectedItem:{tag:{PortalGuns:"portal_gun"}}}] run function portal_guns:items/portal_gun
execute as @s[tag=holdsPortalGun,nbt=!{SelectedItem:{tag:{PortalGuns:"portal_gun"}}}] run title @s actionbar {"text":""}
execute as @s[tag=holdsPortalGun,nbt=!{SelectedItem:{tag:{PortalGuns:"portal_gun"}}}] run tag @s remove holdsPortalGun
execute as @s[nbt={Inventory:[{Slot:100b,tag:{PortalGuns:"long_fall_boots"}}]}] run function portal_guns:items/long_fall_boots

#tellraw @s[nbt={OnGround:0b}] {"nbt":"Motion","entity":"@s"}