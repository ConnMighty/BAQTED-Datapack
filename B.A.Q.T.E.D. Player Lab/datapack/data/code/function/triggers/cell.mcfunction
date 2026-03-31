scoreboard players set @s cell 0

gamemode survival

scoreboard players operation #temp event = @s subject
scoreboard players operation #temp event *= 7 constant
scoreboard players operation #temp event += -82 constant

data merge storage event {z:12}
execute store result storage event x int 1 run scoreboard players get #temp event
execute unless score @s spammer_is_one matches 1 run function code:triggers/cell/tp with storage event