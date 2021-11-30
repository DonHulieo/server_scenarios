fx_version "cerulean"
game "gta5"

author "TayMcKenzieNZ"
description "Custom and modified scenarios for FiveM"
url "https://github.com/TayMcKenzieNZ/server-scenarios"

file "sp_manifest.ymt"
data_file "SCENARIO_POINTS_OVERRIDE_FILE" "sp_manifest.ymt"


files {
	'events.meta',
	'relationships.dat'
}

data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'

server_script 'server.lua'
client_script 'client.lua'
