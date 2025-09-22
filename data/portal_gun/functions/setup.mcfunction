scoreboard objectives add Aquire.Portal_Gun trigger
scoreboard players enable @a Aquire.Portal_Gun
scoreboard objectives add raycasting dummy
scoreboard objectives add portal1 dummy
scoreboard objectives add portal2 dummy
scoreboard objectives add use.portal_gun minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add portal.sid dummy
scoreboard objectives add portal.last.sid dummy
execute unless score .global portal.sid matches 0.. run scoreboard players set .global portal.sid 0