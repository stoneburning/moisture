bossbar add moisture "mos"
bossbar set moisture max 100
bossbar set moisture players @a
bossbar set moisture visible false
bossbar set moisture color blue
bossbar set moisture value 100
scoreboard objectives add mos.tick dummy
scoreboard players set @a mos.tick 0
scoreboard objectives add mos.value dummy
scoreboard players set @a mos.value 100
scoreboard objectives add mos.cactus dummy
scoreboard objectives add mos.boolean dummy
scoreboard players set @s mos.boolean 0
