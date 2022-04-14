# server_scenarios


A FiveM resource by TayMcKenzieNZ allowing custom and modified scenarios to work in your servers.

Contains modified stables scenario at Madrazo's Ranch and downtown construction scenario.

**This resource requires gamebuild 2189 (Cayo Perico) or higher, as the sp_manifest was taken from that DLC.**

You can force your FiveM server to 2189 or higher by reading my [tutorial](https://forum.cfx.re/t/tutorial-forcing-gamebuild-to-casino-cayo-perico-or-tuners-update/4784977)

------------------


**This is by all means a "work in progress" release, and is a test of my abilities streaming and overriding scenarios in FiveM.**

------------------

# How To Add Scenarios 🚶‍♂️

- Join the [Codewalker Discord](https://discord.gg/MKzzKKxFv8) and grab the latest codewalker version from the `#releases` channel

- Drag and drop `sp_manifest.ymt` into Codewalker RPF Explorer with edit mode on

- Right click, export as xml onto your desktop, now it will open in any text editor

- Open a text editor and add new scenario entry

- You will need to find YOUR copy of sp_manifest.ymt in your copy of GTA 5

- Find the scenario information to copy and paste into the sp_manifest.ymt that I have provided

Once you have pasted the required scenario information, rename `platform:/levels/gta5/scenario/blablabla` to `compcache:/server_scenarios/blablablabla`.

It should look like so:

```xml
<Item type="CScenarioPointRegionDef">
   <Name>compcache:/server_scenarios/downtown_construction_site</Name>
   <AABB>
    <min x="-368.8696" y="-1183.929" z="17.63847" />
    <max x="46.45136" y="-781.7375" z="107.8484" />
   </AABB>
  </Item>
```

- Drag and drop `sp_manifest.ymt` back into Codewalker RPF Explorer, now drag it back out

- Congratulations! It is now a ymt file

- Override the current `sp_manifest.ymt` that is in your server's server_scenarios resource

- Enjoy your new / customised scenarios streaming to your server


------------------

# ⚠️ Important Notice

The resource and the scenarios **must** be in *lowercase* and must match what is written in the sp_manifest file.

For example, if you rename the resource to `nopixel_scenarios` , you must change the file paths in the sp_manifest to match the resource name;

`<Name>compcache:/nopixel_scenarios/downtown</Name>`

------------------

I have personally tested the [following scenarios](https://www.gta5-mods.com/scripts/scenario-groups) alongside this resource, and can confirm that they are working in FiveM:

------------------

# FAQ 💬:

**Q: When loading into the server, it crashes to desktop and I am greeted with an error message. Help!**

**A:** Remove `main` from the folder name. It must be called server_scenarios.

------------------

**Q: How can I tell if this resource is working?**

**A:** Visit Madrazo's Ranch (aka La Fuente Blanca) and you should see that there are deers, pigs, chickens, cows and Poodles.


**If you don't see them, try noclipping or teleporting somewhere else, set time to midday and come back.**

------------------

**Q: Can you please make this work with XXXX DLC!**

**A:** It should already work for DLCs above 2189 Cayo Perico DLC, do let me know if it doesn't

------------------

**Q: Can I contact you on Discord or anywhere else for one on one support?**

**A:** NO. If you do happen to tag me on codewalker or DM me on the FiveM forums, you will be ignored.

------------------

# License 

**This repository by TayMcKenzieNZ does not contain a license and is strictly open source, therefore you are not allowed to add one and claim it as yours.**

**You are not allowed to sell this nor re-distribute it.** 

**You are not allowed to change/add a license. If you want to modify it, you are free to do so, as long as you do not plan to sell it.** 

**Pull requests are accepted as long as they do not contain breaking changes.** 

You can read more here [HERE](https://opensource.stackexchange.com/questions/1720/what-can-i-assume-if-a-publicly-published-project-has-no-license)

------------------

# More Info

Credit goes to d-bub on Discord for the discovery of the required `data_file "SCENARIO_POINTS_OVERRIDE_PSO_FILE" "sp_manifest.ymt"`.

Long story short about PSO, is that allows proper data format to be used rather than "fake" ymt files, which translates in ability to stream particular scenario files. No longer do we need to stream 100+ scenarios / all just to keep the server from crashing.

------------------

- Inside the sp_manifest.ymt and short how to

+ **compcache:/server_scenarios/**

+ **"compcache"**  = Means the streamed file is "custom/modified"

+ **"/server_scenarios/"**  = Is where the scenario file is stored, NOT A VANILLA/unmodified file

+ "stables"  = File name without extension, do not use uppercase or spaces if you stream a custom file name


- **Using the same name as a default original GTA 5 scenario, will cancel the default scenario**

+ Vanilla scenario files can be streamed as normal

+ Only files that are on "sp_manifest.ymt" will stream, if file does not exist, no scenarios for a particular area  will play
	
**How to stream a default vanilla scenario?**

+ Add an entry like is defined on vanilla "sp_manifest.ymt" - EG: platform:/levels/gta5/scenario/downtown

+ Notice that "platform:/" is for default scenario location and "compcache:/" is for custom
