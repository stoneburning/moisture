## 수분 현황 표시
execute as @a if score @s mos.value matches 70.. run bossbar set moisture name [{"text":"수분 : ","color":"green","bold":true},{"score":{"name":"@s","objective":"mos.value"},"color":"yellow"},{"text":"%"},{"text":" (정상)"}]
execute as @a if score @s mos.value matches 20..69 run bossbar set moisture name [{"text":"수분 : ","color":"green","bold":true},{"score":{"name":"@s","objective":"mos.value"},"color":"yellow"},{"text":"%"},{"text":" (목마름)","color":"yellow"}]
execute as @a if score @s mos.value matches 0..19 run bossbar set moisture name [{"text":"수분 : ","color":"green","bold":true},{"score":{"name":"@s","objective":"mos.value"},"color":"yellow"},{"text":"%"},{"text":" (탈수)","color":"red"}]
execute as @a store result bossbar moisture value run scoreboard players get @s mos.value

## 시간 경과에 따른 수분 감소
execute as @a run scoreboard players add @s mos.tick 1
execute as @a if score @s mos.tick matches 80.. run scoreboard players remove @s mos.value 1
execute as @a if score @s mos.tick matches 80.. run scoreboard players remove @s mos.tick 80

## 수분 0% 이상 유지
execute as @a if score @s mos.value matches ..-1 run scoreboard players set @s mos.value 0
execute as @a if score @s mos.value matches ..-1 run scoreboard players set @s mos.tick 0

## 수분 100% 이하 유지
execute as @a if score @s mos.value matches 101.. run scoreboard players set @s mos.value 100
execute as @a if score @s mos.value matches 101.. run scoreboard players set @s mos.tick 0

## 음식 섭취
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run clear @s cactus 1
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run scoreboard players add @s mos.value 5
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run playsound minecraft:entity.player.burp master @s
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run item replace entity @s weapon.offhand with air