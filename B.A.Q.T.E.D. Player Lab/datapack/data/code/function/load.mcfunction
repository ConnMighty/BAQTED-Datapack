# load.mcfunction
# This function is called every time you run /reload, and when the world first starts.

# NOTE:
# Always set your gamerules, difficulty, time, and worldspawn in the load function!
# These are NOT SAVED when worlds restart at the moment.
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn false
setworldspawn -82 71 12
gamerule randomTickSpeed 999
gamerule keepInventory true
gamerule showDeathMessages false
forceload add -6 0 -5 0
forceload add 0 0 1 0
forceload add -65 -265 -61 -267

scoreboard objectives add hp health
scoreboard objectives add event dummy
scoreboard objectives add subject dummy
scoreboard objectives add constant dummy

scoreboard objectives setdisplay list hp

scoreboard objectives add spammer_is_one dummy

scoreboard objectives add new_event trigger
scoreboard objectives add deposit trigger
scoreboard objectives add kill trigger
scoreboard objectives add cell trigger
scoreboard objectives add player_zoo trigger
scoreboard objectives add book trigger
scoreboard objectives add seed trigger
scoreboard objectives add dirt trigger
scoreboard objectives add farming trigger
scoreboard objectives add e-chest trigger
scoreboard objectives add inv_check_nearest_player trigger
scoreboard objectives add inv_check_self trigger

scoreboard players set 14 constant 14
scoreboard players set 7 constant 7
scoreboard players set -82 constant -82

# To make sure your datapack is working, a load message can be useful.
tellraw @a { "color": "#c48b6a", "text": "This Server now has a Discord! §n§ahttps://discord.gg/pxe95STe2T","clickEvent": {"action": "open_url", "value": "https://discord.gg/pxe95STe2T"}}

team add SPAMMER
team add admin
team add dev
team add JRstaff
team add ANNOYANCE
team add guard
team add PvP
team add Stranded
team add not_admin
team modify admin prefix ["§c[ADMIN] "]
team modify dev prefix ["§3[DEV] "]
team modify JRstaff prefix ["§4[Trial Mod] "]
team modify ANNOYANCE prefix ["§1[ANNOYING] "]
team modify guard prefix ["§a[GUARD] "]
team modify PvP prefix ["§e[PvP] "]
team modify Stranded prefix ["§b[Stranded] "]
team modify not_admin prefix ["§c[NOT ADMIN] "]
team modify SPAMMER prefix ["§4[PUNISHMENT ROLE] "]

function code:reset_warning
function code:song

fill -82 69 12 185 69 11 pearlescent_froglight
fill -76 67 4 159 67 4 pearlescent_froglight