bossbar add moisture "mos"
bossbar set moisture name {"text":"수분","color":"green","bold":true}
bossbar set moisture max 100
bossbar set moisture color blue
bossbar set moisture players @a
bossbar set moisture value 100
scoreboard objectives add mos.tick dummy
scoreboard players set @a mos.tick 0
scoreboard objectives add mos.value dummy
scoreboard players set @a mos.value 100

