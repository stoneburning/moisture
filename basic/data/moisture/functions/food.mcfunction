## 음식 섭취
execute as @p[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] at @s run playsound minecraft:entity.player.burp master @s
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run clear @s cactus 1
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run scoreboard players add @s mos.value 5
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute as @a[nbt={Inventory:[{id:"minecraft:cactus",Slot:-106b}]}] run item replace entity @s weapon.offhand with air

## 가위 표시
execute as @a[nbt={SelectedItem:{id:"minecraft:shears",tag:{Cut:1b}}}] run title @s actionbar {"text":"F를 눌러 수확하기","color":"yellow"}
execute as @a[nbt={SelectedItem:{id:"minecraft:shears",tag:{Cut:1b}}}] at @s anchored eyes positioned ^ ^ ^2 align xyz run summon minecraft:falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:lime_stained_glass"},NoGravity:1b}

## 가위 사용
execute as @a[nbt={Inventory:[{id:"minecraft:shears",tag:{Cut:1b},Slot:-106b}]}] at @s anchored eyes positioned ^ ^ ^2 align xyz if block ~0.5 ~ ~0.5 minecraft:cactus run playsound minecraft:entity.sheep.shear master @s
execute as @a[nbt={Inventory:[{id:"minecraft:shears",tag:{Cut:1b},Slot:-106b}]}] at @s anchored eyes positioned ^ ^ ^2 align xyz if block ~0.5 ~ ~0.5 minecraft:cactus run setblock ~0.5 ~ ~0.5 air destroy
execute as @a[nbt={Inventory:[{id:"minecraft:shears",tag:{Cut:1b},Slot:-106b}]}] run item replace entity @s weapon.mainhand with minecraft:shears{Cut:1b}
execute as @a[nbt={Inventory:[{id:"minecraft:shears",tag:{Cut:1b},Slot:-106b}]}] run item replace entity @s weapon.offhand with air


## 선인장 신선도
execute as @e[type=item,nbt={Item:{id:"minecraft:cactus"}}] run tag @s add mos.cac
execute as @e[tag=mos.cac,tag=!mos.com] if predicate moisture:random run tag @s add mos.fresh
execute as @e[tag=mos.cac,tag=!mos.fresh] run tag @s add mos.com
execute as @e[type=item,nbt={Item:{id:"minecraft:cactus"}},tag=mos.fresh] run data merge entity @s {Item:{tag:{Fresh:1b,display:{Name:'{"text":"신선한 선인장","color":"yellow"}'}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:cactus"}},tag=mos.com] run data merge entity @s {Item:{tag:{Com:1b,display:{Name:'{"text":"평범한 선인장"}'}}}}

