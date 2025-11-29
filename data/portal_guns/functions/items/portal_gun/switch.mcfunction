tag @s add portalSwitch

execute as @s[tag=portal_a,tag=portalSwitch] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:200701,PortalGuns:"portal_gun",PortalSelect:"B",display:{Name:'{"text":"Portal Gun","italic":false}'}}
execute as @s[tag=portal_a,tag=portalSwitch] run tag @s add portal_b
execute as @s[tag=portal_a,tag=portalSwitch] run tag @s remove portalSwitch

execute as @s[tag=portal_b,tag=portalSwitch] run item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:200700,PortalGuns:"portal_gun",PortalSelect:"A",display:{Name:'{"text":"Portal Gun","italic":false}'}}
execute as @s[tag=portal_b,tag=portalSwitch] run tag @s add portal_a
execute as @s[tag=portal_b,tag=portalSwitch] run tag @s remove portalSwitch
