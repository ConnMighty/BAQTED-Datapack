scoreboard players operation @s event = current event

gamemode survival

execute if entity @s[tag=no_event] run return 0

scoreboard players operation @s subject = #counter event

execute store result storage event counter int 1 run scoreboard players get #counter event
data merge storage event {x:-82, z:4}

execute if score #counter event > 999 constant run function code:event/give_book with storage event
execute if score #counter event > 999 constant run return run scoreboard players add #counter event 1

scoreboard players operation #temp event = #counter event
scoreboard players operation #temp event *= 7 constant
scoreboard players operation #temp event += -82 constant

data merge storage event {z:12}
execute store result storage event x int 1 run scoreboard players get #temp event
function code:event/give_book with storage event
scoreboard players add #counter event 1