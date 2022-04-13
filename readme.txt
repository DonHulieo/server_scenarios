
	

	+ Simplified server side scenarios - Only one file to test with
	+ File found on /stream will remove all NPCs at the terminal and car spawns, will look "deserted" 
	+ Credit goes to d-bub on Discord for:  data_file "SCENARIO_POINTS_OVERRIDE_PSO_FILE" "sp_manifest.ymt"


	- Whats new:
	+ Only the "_PSO_" for data_file - Long story short about PSO is that allows proper data format to be 
		used, not "fake" ymt, which translates in ability to stream particular scenario files, no need 
		for 100+/all just to keep the server from crashing



	
	- Inside the sp_manifest.ymt and short how to

	+ compcache:/server_scenarios/terminal
	+ "compcache" 		= Means the streamed file is "custom/modified"
	+ "/server_scenarios/"	= Is where the scenario file is stored, NOT A VANILLA/unmodified file
	+ "terminal"		= File name without extension, do not use uppercase or spaces if you stream a custom 
		file name
	+ Using same name for a scenario as vanilla, will overwrite/cancel default vanilla.
	+ Vanilla scenario files can be streamed as normal
	+ Only files that are on "sp_manifest.ymt" will stream, if file does not exist, no scenarios for a particular area 
		will play

To add more scenarios, drag/drop on RPF Explorer, export to XML, add your line, save, import, convert it back to PSO
	
	- How to stream a default vanilla scenario ? 
	+ Add an entry like is defined on vanilla "sp_manifest.ymt" - EG: platform:/levels/gta5/scenario/downtown
	+ Notice that "platform:/" is for default scenario location and "compcache:/" is for custom 

	- How do you create a scenario  ? 
	+ Google CodeWalker Discord, join, get the latest version from #releases (Do _NOT_ use the gta5-mods one,is way 
		outdated)
	+ Hit Youtube for video tutorials, topic too complex to cover here
 
	- isotonic@Discord (No, I dont take PMs or offer support with this beyond what been already written here)

 												Last modified 14.Apr.2022