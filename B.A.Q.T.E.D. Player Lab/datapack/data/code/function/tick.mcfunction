fill -84 71 13 -81 72 9 minecraft:air
fill -27 66 51 -28 68 50 minecraft:air
setblock -75 62 -3 ender_chest
setblock -27 65 79 water
setblock -27 69 79 glowstone

execute as @s at @s if block ^ ^-1 ^ crafting_table run advancement grant @s only code:crafting_alert

# gamemode adventure @a[team= SPAMMER]
scoreboard players set @a[team= SPAMMER] spammer_is_one 1
scoreboard players set @a[team= !SPAMMER] spammer_is_one 0

title @a actionbar "§9§lDon't Forget to Vote!"

# LOOK DONT FORGET!!!!!!!!!!!!!!!!!!!!!!!
# LOOK DONT FORGET!!!!!!!!!!!!!!!!!!!!!!!
# LOOK DONT FORGET!!!!!!!!!!!!!!!!!!!!!!!
spawnpoint sea4_18 -100 60 -500
spawnpoint ErikKH -100 60 -500
spawnpoint @a[team= SPAMMER] -28 60 -520
# LOOK DONT FORGET!!!!!!!!!!!!!!!!!!!!!!!
# LOOK DONT FORGET!!!!!!!!!!!!!!!!!!!!!!!
# LOOK DONT FORGET!!!!!!!!!!!!!!!!!!!!!!!

execute as @a at @s if block ~ ~-1 ~ magma_block run particle flame ~ ~ ~ 0.125 0.0 0.125 0.05 1
recipe give @a code:iatodia

# effect give @a minecraft:weakness infinite 255 true
# gamemode survival @a[tag=!is_dev]

# /edit description <color:#8c8c8c>get tested on! </color><color:#ff1100><b>EVENT NOW LIVE!<b></color>

# https://discord.gg/pxe95STe2T

# Event Logic
execute as @a[tag=new_event_trigger] unless score @s new_event matches 0 run function code:event/new_event
execute as @a unless score @s event = current event run function code:event/new_player
execute as @a[tag=new_event_trigger] run scoreboard players enable @s new_event
execute as @a[tag=new_event_trigger] run scoreboard players enable @s inv_check_nearest_player

# Triggers
scoreboard players add @a player_zoo 0
scoreboard players add @a kill 0
scoreboard players add @a cell 0
scoreboard players add @a deposit 0
scoreboard players add @a book 0
scoreboard players add @a farming 0
scoreboard players add @a seed 0
scoreboard players add @a e-chest 0
scoreboard players add @a dirt 0
scoreboard players add @a inv_check_nearest_player 0
scoreboard players add @a inv_check_self 0

execute as @a unless score @s player_zoo matches 0 run function code:triggers/go_to_zoo
execute as @a unless score @s kill matches 0 run function code:triggers/killself
execute as @a unless score @s cell matches 0 run function code:triggers/cell
execute as @a unless score @s deposit matches 0 run function code:triggers/deposit
execute as @a unless score @s book matches 0 run function code:triggers/giveextrabook
execute as @a unless score @s farming matches 0 run function code:triggers/arena
execute as @a unless score @s seed matches 0 run function code:triggers/seed
execute as @a unless score @s dirt matches 0 run function code:triggers/dirt
execute as @a unless score @s e-chest matches 0 run function code:triggers/echest
execute as @a unless score @s inv_check_nearest_player matches 0 run function code:triggers/inv_check_nearest
execute as @a unless score @s inv_check_self matches 0 run function code:triggers/inv_check_self

scoreboard players enable @a kill
scoreboard players enable @a cell
scoreboard players enable @a e-chest
scoreboard players enable @a book
scoreboard players enable @a farming
scoreboard players enable @a seed
scoreboard players enable @a dirt
scoreboard players enable @a player_zoo
scoreboard players enable @a inv_check_self

scoreboard players reset @a deposit


# BANNED ITEMS:

clear @a[name= !Connor_Mighty] chainmail_boots
clear @a[name= !Connor_Mighty] light_blue_shulker_box
clear @a[name= !Connor_Mighty] magenta_shulker_box
clear @a[name= !Connor_Mighty] yellow_shulker_box
clear @a[name= !Connor_Mighty] purple_shulker_box
clear @a[name= !Connor_Mighty] orange_shulker_box
clear @a[name= !Connor_Mighty] white_shulker_box
clear @a[name= !Connor_Mighty] green_shulker_box
clear @a[name= !Connor_Mighty] brown_shulker_box
clear @a[name= !Connor_Mighty] black_shulker_box
clear @a[name= !Connor_Mighty] pink_shulker_box
clear @a[name= !Connor_Mighty] lime_shulker_box
clear @a[name= !Connor_Mighty] cyan_shulker_box
clear @a[name= !Connor_Mighty] blue_shulker_box
clear @a[name= !Connor_Mighty] red_shulker_box
clear @a[name= !Connor_Mighty] netherite_block
clear @a[name= !Connor_Mighty] ancient_debris
clear @a[name= !Connor_Mighty] crying_obsidian
clear @a[name= !Connor_Mighty] respawn_anchor
clear @a[name= !Connor_Mighty] glowstone
clear @a[name= !Connor_Mighty] chorus_fruit
clear @a[name= !Connor_Mighty] sticky_piston
clear @a[name= !Connor_Mighty] piston
clear @a[name= !Connor_Mighty] obsidian
clear @a[name= !Connor_Mighty] minecraft:light
clear @a[name= !Connor_Mighty] minecraft:tripwire_hook
clear @a[name= !Connor_Mighty] minecraft:tropical_fish_bucket
clear @a[name= !Connor_Mighty] pufferfish_bucket
clear @a[name= !Connor_Mighty] tadpole_bucket
clear @a[name= !Connor_Mighty] axolotl_bucket
clear @a[name= !Connor_Mighty] salmon_bucket
clear @a[name= !Connor_Mighty] cod_bucket
clear @a[name= !Connor_Mighty] lava_bucket
clear @a[name= !Connor_Mighty,tag= !specialguy] bucket
clear @a[name= !Connor_Mighty,tag= !specialguy] water_bucket
clear @a[name= !Connor_Mighty] repeating_command_block
clear @a[name= !Connor_Mighty] chain_command_block
clear @a[name= !Connor_Mighty] command_block_minecart
clear @a[name= !Connor_Mighty] command_block
clear @a[name= !Connor_Mighty] barrier
clear @a[name= !Connor_Mighty] bedrock
clear @a[name= !Connor_Mighty] barrel
clear @a[name= !Connor_Mighty] shulker_box
clear @a ender_dragon_spawn_egg
clear @a dragon_egg
clear @a tnt_minecart
clear @a tnt
clear @a[name= !Connor_Mighty] ender_pearl
clear @a oak_boat
clear @a spruce_boat
clear @a oak_chest_boat
clear @a spruce_chest_boat
clear @a minecart
clear @a[name= !Connor_Mighty] lily_of_the_valley
kill @e[type= minecraft:boat ]
kill @e[type= minecraft:chest_boat ]
kill @e[type= minecraft:minecart ]
kill @e[type= creeper]
kill @e[type= wither]
kill @e[type= wither_skeleton]

# RANKS:

team join dev DevMevTV
team join guard Ragebird7200
team join admin Connor_Mighty
team join JRstaff TheClutchCoder
team join JRstaff EnderDragon0221
team join ANNOYANCE OmriOn
team join guard seamas1er
team join ANNOYANCE BoinkMC
team join PvP Starbro123
team join ANNOYANCE GetCmdRolled
team join not_admin ErikKH
team join JRstaff SeaThrower87216
team join guard PlasmaRay192
team join ANNOYANCE JustPirate
team join PvP Raven_666
team join Stranded sea4_18
team join SPAMMER mymue1
team join ANNOYANCE UnderPatato
team join ANNOYANCE Hasan123b

# AUTO KILLING:

execute as @a at @s if block ~ ~ ~ lily_of_the_valley run kill @s
