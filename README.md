# server_scenarios


A FiveM resource by TayMcKenzieNZ allowing custom and modified scenarios to work in your servers.

Contains modified stables scenario at Madrazo's Ranch and downtown construction scenario.

------------------

# This resource requires gamebuild 2189 (Cayo Perico) or higher, as the sp_manifest was taken from that DLC.

You can force your FiveM server to 2189 or higher by reading my tutorial https://forum.cfx.re/t/tutorial-forcing-gamebuild-to-casino-cayo-perico-or-tuners-update/4784977

------------------


This is by all means a "work in progress" release, and is a test of my abilities streaming and overriding scenarios in FiveM.


You can join the Codewalker Discord and grab the latest codewalker version to modify and / or add custom scenarios.

- Drag and drop sp_manifest.ymt into cw rpf explorer with edit mode on

- Right click, export as xml, now it will open in any text editor

- Add new scenario entry, save

- Drag and drop back into cw rpf explorer, now drag it back out, it is now a ymt file


------------------

# The resource and the scenarios must be in lowercase and must match what is written in the sp_manifest file.

if you rename the resource, you must change the file paths in the sp_manifest

For example,

`<Name>compcache:/nopixel_scenarios/downtown</Name>`

------------------

I have personally tested the following scenarios alongside this repository, and can confirm that they are working in FiveM:

https://www.gta5-mods.com/scripts/scenario-groups

------------------

# Adding Scenarios


You will need to find YOUR copy of sp_manifest.ymt in your copy of GTA 5

Find the scenario information to copy and paste into the sp_manifest.ymt that I have provided

Once you have pasted the required scenario information, rename `platform:/levels/gta5/scenario/blablabla` to `compcache:/server_scenarios/blablablabla`.

It should look like so:

```
<Item type="CScenarioPointRegionDef">
   <Name>compcache:/server_scenarios/downtown_construction_site</Name>
   <AABB>
    <min x="-368.8696" y="-1183.929" z="17.63847" />
    <max x="46.45136" y="-781.7375" z="107.8484" />
   </AABB>
  </Item>
```

------------------

# FAQ:

Q: When loading into the server, it crashes to desktop and I am greeted with an error message. Help!

A: Remove -main from the folder name. It must be called server_scenarios.

Q: How can I tell if this resource is working?

A: Visit Madrazo's Ranch (aka La Fuente Blanca) and you should see that there are deer, pigs, chickens, cows and Poodles.

If you don't see them, try noclipping or teleporting somewhere else, set time to midday and come back.

Q: Please make this work with XXXX DLC!

A: It should

Q: Can I contact you on Discord or anywhere else for one on one support?

A: NO

------------------

License 📝
This project does not contain a license, therefore you are not allowed to add one and claim it as yours.

You are not allowed to sell this nor re-distribute it.

You are not allowed to change/add a license. If you want to modify or make an agreement, you can contact me.

Pull requests are accepted as long as they do not contain breaking changes.

------------------

# More Info

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
	
	- How to stream a default vanilla scenario ? 
	+ Add an entry like is defined on vanilla "sp_manifest.ymt" - EG: platform:/levels/gta5/scenario/downtown
	+ Notice that "platform:/" is for default scenario location and "compcache:/" is for custom 

	- How do you create a scenario  ? 
	+ Google CodeWalker Discord, join, get the latest version from #releases (Do _NOT_ use the gta5-mods one,is way 
		outdated)
	+ Hit Youtube for video tutorials, topic too complex to cover here

