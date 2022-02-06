# Server Scenarios 🚶‍♂️

A FiveM resource by TayMcKenzieNZ allowing custom and modified scenarios to work in your servers.

I have modified and provided the following, as they would spawn peds on the street clapping, cheering, taking photos and other strange anomalies. Feel free to modify them if your MLO or whatever is in these areas:

* alamo_sea

* bolingbroke_penitentiary

* cypress_flats

* del_perro_beach

* del_perro_carpark

* del_perro_shops

* downtown

* east_vinewood

* facility_main **(Player online doomsday facility, requires bob74_ipl to be configured)**

* farmers_market

* lsia_terminal

* pacific_bluffs

* race_course (Diamond Casino & Resort)

* sandy_shores (Police station scenarios and more)

* senora_hills

* south_los_santos

* stablescustom **(Tay's own personal scenario, replacing Madrazo's Ranch scenarios)**

* vespucci

* vespucci_beach

* vespucci_beach_north

* vespucci_beach_south

* vespucci_police_dept

* vinewood


----------

Stables scenario to work alongside [Ranch De Caniche](https://github.com/TayMcKenzieNZ/Ranch-De-Caniche) and [FiveM Scenarios](https://github.com/TayMcKenzieNZ/fivem-scenarios)

----------

# This resource requires **gamebuild 2189 (Cayo Perico) or higher**, as the sp_manifest was taken from that DLC.

If you find any bugs, try noclipping or teleporting elsewhere, then coming back.

You can join the [Codewalker Discord](https://discord.gg/MKzzKKxFv8) and grab the **latest** codewalker version to modify and / or add custom scenarios.



----------

You may find triathlon related scenarios lurking in the following locations, I am yet to be able to delete/disable them all completely, however if you somehow manage to, feel free to send me a pull request. The scenario files are as followed:

* alamo_sea

* del_perro_beach

* del_perro_carpark

* pacific_bluffs

* sandy_shores

* senora_hill

* vespucci

* vespucci_beach_north

* vespucci_beach_south

* vespucci_police_dept

* vinewood

----------


This is by all means a **"work in progress"** release, and is a test of my abilities streaming and overriding scenarios in FiveM.

If you would like to addon to this resource and modify existing scenarios in the world, open the `sp_manifest.ymt` file and rename the scenario to

```lua
`<Name>compcache:/server_scenarios/xxxxxxx</Name>`
```

If you rename the resource, you will need to rename `server_scenarios`

For example, 

```lua
`<Name>compcache:/nopixel_scenarios/downtown</Name>`
```

----------

# Installation ⚙️:


The resource and the scenarios must be in **lowercase** and must **match** what is written in the sp_manifest file.

* Download the resource and rename the folder to **server_scenarios** by removing the `-main` from it's name.

**Ignoring this step will result in crashes to desktop**

* Add `start server_scenarios` to your **server.cfg**

Again, if you rename the resource, you **must** change the file paths in the sp_manifest as stated above.

----------

I have personally tested the following scenarios alongside this repository, and can confirm that they are working in FiveM after renaming them in the sp_manifest:

https://www.gta5-mods.com/scripts/scenario-groups


-----------

# FAQ:

**Q: When loading into the server, it crashes to desktop and I am greeted with an error message. Help!**

**A:** Remove `-main` from the folder name. **It must be called server_scenarios**

---------------------

**Q: How can I tell if this resource is working?**

**A:** Visit Madrazo's Ranch (aka La Fuente Blanca) and you should see that there are deer, pigs, chickens, cows and Poodles.

If you don't see them, try noclipping or teleporting somewhere else, set time to midday and come back.

You can then rename `stablescustom` back to `stables` and revert it back to:

```lua
   <Name>platform:/levels/gta5/scenario/stables</Name>
```

You will then need to delete `events.meta`, `relationships.dat`, and remove the following from `fxmanifest.lua`

```lua
files {
	'events.meta',
	'relationships.dat'
}

data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'
```

---------------------

**Q: When I go to a (certain area) on foot, in a vehicle or by other means, my game crashes?**

**A:** The scenario file may be corrupt or you've done something to it, ie deleting chains or path nodes. 
If you wish to delete or modify chains, try `CW 26 dev 7` (available from codewalker discord) as this seems to work for editing chains and deleting them ***without*** running into crashes.

-----------------

**Q: Please make this work with XXXX DLC!**

**A:** You can simply search for new scenario entries in your own copy of sp_manifest using OpenIV or Codewalker's RPF explorer and copy those entries to the sp_manifest file which I have provided.
However, if you are trying to run this on DLC ***older*** than Cayo Perico (2189), try removing the following entry from the `sp_manifest.ymt` file, as this is responsible for Cayo Perico scenarios that your DLC doesn't have, which will cause crashes and issues:

```lua
 <Item type="CScenarioPointRegionDef">
   <Name>platform:/levels/gta5/scenario/island_drug_fields</Name>
  <AABB>
    <min x="4357.971" y="-5667.243" z="0.442734" />
    <max x="5484.739" y="-4338.396" z="67.04505" />
   </AABB>
  </Item>
```
---------------------

**Q: DLC XXX just dropped, do you plan to update this?**

**A:** No, because I have to grab the sp_manifest.ymt from my own copy of GTA 5 and provide it here on GitHub, and I'm not entirely sure what scenario file is from what DLC, however I am aware of the Cayo Perico one.

As I've stated above, you can find newer scenarios in your own copy of sp_manifest.ymt, copy and paste them into mine which I have provided, and it should work 😛

---------------------

**Q: When I edit the sp_manifest file, it appears to be smaller than the one you provided, or it's weird symbols / crashes my server.**

**A:** Try using [Notepad++](https://notepad-plus-plus.org/downloads/)

---------------------

**Q: Can I contact you on Discord or anywhere else for one on one support?**

**A:** No

---------------------

# License 📝

This project does not contain a license, therefore you are not allowed to add one and claim it as yours.

You are not allowed to sell this nor re-distribute it. 

You are not allowed to change/add a license. If you want to modify or make an agreement, you can contact me. 

Pull requests are accepted as long as they do **not** contain breaking changes. 

You can read more here [HERE](https://opensource.stackexchange.com/questions/1720/what-can-i-assume-if-a-publicly-published-project-has-no-license)
