## 실행자의 위치
execute as @s store result score @s x run data get entity @s Pos[0] 10
execute as @s store result score @s y run data get entity @s Pos[1] 10
execute as @s store result score @s z run data get entity @s Pos[2] 10


## 대상의 위치
execute as @e[tag=target] store result score @s x run data get entity @s Pos[0] 10
execute as @e[tag=target] store result score @s y run data get entity @s Pos[1] 10
execute as @e[tag=target] store result score @s z run data get entity @s Pos[2] 10

## 실행자와 대상의 차
scoreboard players operation @s x -= @e[tag=target] x
scoreboard players operation @s y -= @e[tag=target] y
scoreboard players operation @s z -= @e[tag=target] z

## x,y,z거리 제곱
scoreboard players operation @s x *= @s x
scoreboard players operation @s y *= @s y
scoreboard players operation @s z *= @s z


## 제곱한 x,y,z 합
scoreboard players operation @s x += @s y
scoreboard players operation @s x += @s z


## x0값
scoreboard players set @s x0 1

## 식 계산
scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x


scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

scoreboard players operation @s a = @s x
scoreboard players operation @s a /= @s x0
scoreboard players operation @s x0 += @s a
scoreboard players operation @s x0 /= #2 x

## 십자리 수와 일의 자리 수로 나타내기
scoreboard players operation @s 10p = @s x0
scoreboard players operation @s 10p /= #10 x
scoreboard players operation @s 1p = @s x0
scoreboard players operation @s 1p %= #10 x

title @s actionbar [{"selector":"@e[tag=target]","color":"blue","bold":true},{"text":" (와)과의 거리 : ","color":"green"},{"score":{"name":"@s","objective":"10p"},"color":"yellow"},{"text":"칸","color":"green"}]

schedule function distance:executedis 1t replace