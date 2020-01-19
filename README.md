# Trapper+
### by Daniel Angione
v1.2 for Stonehearth 1.1+
https://stonehearth.net/ 

## DESCRIPTION

Trapper+ is the first in a series of mods that aim to improve the depth and gameplay of each profession in Stonehearth by enriching their crafting processes and giving them more complexity with features akin to a somewhat more realistic experience.

For this mod the leather making process is now broken into different stages - some requiring crafting and others requiring time. In the end, to compensate for the added complexity, the ratio of furs-to-leather is increased, which means that you'll produce more leather from less pelts now. But the production will require you to go through over the new steps which are basically the following:

> Drying - Cleaning - Tanning

Added to that, the Trapper can now perform some butchery actions like slicing larger chunks of meat into smaller ones, building a smokehouse that can be used to produce jerky and other smoked goods and also craft some decorations like animal rugs.

From 1.2 onwards, the Trapper can now work with other forms of curing like salting, boiling of animal fat, smoking salted meats and other interesting options.

## CONTENTS

### ANIMAL RESOURCES
Animals will now drop raw meat instead of edible jerky and fresh pelts instead of regular fur pelts. The meat can be used in cooking or smoked in a smokehouse while the pelts need drying on a drying rack if it is a large pelt (Boars, deer, wolves, cougars, foxes) or on a hanging drying rack for small pelts (Rabbits, raccoons, squirrels)
Animals will also drop Animal Fat, a new resource that can be used to create some new things or be used in cooking.

### THE TRAPPER
The trapper itself is now a crafting job with its own crafting station and crafting window. There the trapper can handle the cleaning of pelts, building of drying racks and tanning tubs, smokehouses, some decorations and also several butchering commands. Added to that, the Trapper can now create hats that will slightly improve their work abilities using the pelts of animals they hunt.

### DRYING & CLEANING
Fresh pelts dropped from dead animals require drying. Drying them only requires them to be stored inside a drying rack or a hanging drying rack (depending on pelt size) for a time and then it will be automatically dried. Workers and any other hearthlings with hauling capacities will help handle the tannery facilities to ease the trapper's workload, however after the pelts are dried they will require cleaning before being tanned, and that can only be done by the Trapper through their crafting menu.
	
### TANNINS & TANNING TUBS
When a pelt is cleaned it will become Rawhide, which will then be automatically carried by haulers into Tanning Tubs. A Tanning Tub is built with wood and tannins that can be obtained by extracting tannins from wood itself (or other organic sources like tree saplings). Both carpenters and potters can extract tannins from oaks and acacias but the trapper itself can do it more efficiently. After spending some time inside the tanning tubs, Rawhides will become Thin Leather - which can be used as leather or woven into bolts.
	
### BUTCHERY & SMOKERY
Every animal drops raw meat now and it can be used in cooking. To obtain jerky, raw meat needs to be smoked inside a smokehouse and any type of meat can be smoked. Certain larger pieces of meat like Pork or Mutton can be sliced into several bits of raw meat for more efficient usage should you care more about quantity than quality. All the butchering jobs are handled by the trapper.

### SALT & SALT CURING
You may now find veins of salt on the mountains and hills of your map and mine them for valuable rock salt. This can be further refined by a cook to create Sacks of Salt which can then be used by the Trapper to create Salt Boxes, containers that will salt goods similarly to how the smokeries smoke them. Once salted, meat can be already eaten - however it can be further cured in a smokehouse to achieve the best type of curing possible: jerky and cured goods.

### BOILING & COOKING
Finally, the Trapper can now create a nice and cosy campfire with a pot for improved possibilities. Options like a bug soup or the very useful Pemmican are made possible by this new tool which also allows the Trapper to refine certain resources like Animal Fat or boil leather.

## REQUIREMENTS & PATCHES

Trapper+ requires the following mods:

	Dani's Core Mod
	https://steamcommunity.com/sharedfiles/filedetails/?id=1403214892
	
Trapper+ has cross-functionality with the following mods:

- Stonehearth ACE : New recipes are available if ACE is present (related to ACE's resources, pelts and meats); All the visuals for fresh pelts, hats and carpets are changed according to the biome just like ACE's animals. There are also some new functionalities like Smokeries and Tanning Tubs requiring refueling every now and then; you can craft Fur piles that will keep track of the furs inside; Specific filters are included.
- Archipelago Biome : You can smoke and work with fish; Specific filters are included.
- LostEms : Certain recipes are adapted to use some of the new Trapper+ resources.
	
## COMPATIBILITY

This mod should always be compatible with most mods as long as they do not override basic functions of the game or the Trapper class controller.

## LOCALIZATION

This mod is completely compatible with Stonehearth's localization, it is in English (en) by default but also includes a Brazillian Portuguese (pt-BR) translation. 

If you're willing to translate this mod to any other language and would like to see the localization supported on the official mod itself, contact me on Discord:
DaniAngione#3266

## CREDITS, SUPPORT & LICENSE

Mod created by Daniel Angione (DaniAngione#3266 on Discord; daniangi@gmail.com)
Stonehearth created by Radiant Entertainment (https://stonehearth.net)
My Modding Corner (https://discourse.stonehearth.net/t/danis-modding-corner/36452)

Special thanks to BrunoSupremo for his help with the Archipelago Mod compatibility and the tool to easily translate to PT-BR.

This mod and all its contents are under a GNU GPL 3.0 license and may be used, shared, remixed and anything else as long as credit is given, linked and the same license is used! More info: https://www.gnu.org/licenses/gpl-3.0.en.html

## CHANGELOG

### January 19th, 2020 - v1.2
- The mod structure has been completely re-organized to mirror the Stonehearth mod structure. It should be much easier to explore (and learn) from Trapper+ now!
- All recipes that replaced existing recipes are now mixins rather than overrides.
- All the images and icons in the mod now have the same contour for a nicer, standard visual.
- Many of the recipes have had their level requirements re-organized or moved around a bit.
- The mixintos into the biome manifests have been replaced by new biome manifests.
- Campfire & Pot! This new work station for the Trapper allows them to boil, render and cook. This work station is useful for several of the new recipes and processes and some upcoming ones!
- Cut of Animal Fat, a new resource obtained when butchering dead creatures.
- You can also obtain Animal Fat with crafting, from large meat pieces.
- Bucket of Rendered Animal Fat, a new cooking ingredient obtained by rendering animal fat with the Campfire & Pot.
- Slab of Lard, alternative rendered animal fat made with pork.
- Changed the images for the Rawhide, Rawskin and Small Rawhide to look nicer and more standarized.
- Changed the model of the Drying Frame. It now uses animations to have sleek, straight legs instead of ugly and crispy voxel-diagonals!
- Drying Frames now have a default filter (Fresh Pelt) and don't need to be set up anymore. 
- The same applies for Drying Racks, the one used for small pelts.
- Slightly changed the models of the Smokeries and also changed their names to Wooden Smokery and Clay Smokery.
- Multiple new storage options have been added. Although specialized in single items, they have a larger capacity than common input bins.
- Large Pelt Stockpile, input container. Use it to pile up to 20 large dried pelts.
- Small Pelt Wall Rack, input container. Use it to hang up to 20 small dried pelts.
- Rawhide Stockpile, output container. Use it to storage your Rawhide before it goes to tanning tubs.
- Fresh Leather Stockpile, input container. Use it to pile up to 20 thin leather.
- Added a new Smokery, the Stone Smokery.
- Smoking pieces of raw meat will not result in jerky anymore, only in smoked meat.
- To get jerky now the meat requires to be salted before it is smoked.
- Jerky doesn't count as "raw meat" anymore and is its own prepared food. Its efficiency and quality have been increased a lot to compensate for the effort of making it.
- Each smokery is now exclusive to their related faction; Wood for Ascendancy, Stone for Northern Alliance and Clay for Rayya's Children.
- Smokeries now have a stronger inner light, giving them a cooler effect when the doors are open!
- Smokeries now have a default filter (All Curables). You can still change the filter by clicking them.
- Fixed the broken positioning of the Tanning Tub smog effect.
- Fixed lots of typos throughout the whole mod.
- All instances of "Cougar" were renamed to "Big Cat".
- Wolf Rug and Big Cat Rug have been enlarged and are now 4x4 instead of 3x3.
- Pinch of Tannin is now slightly smaller.
- Tanning tubs now have a "Foul Smog" buff that will inflict nearby hearthlings with the "Foul Stench" debuff if they stay around for too long. The debuff reduces some stats and makes them sad. Build your tanneries far away from town!
- Tanning Tubs now have a default filter (Rawhide & Raw Skin). You don't need to set them up anymore!
- The graphics and styles of all raw meat cuts has been changed. They now look more like generic meat bits instead of different colored jerkies.
- Slicing Varanus meat now requires a Trapper of level 2 and not level 3.
- Bug Meat Soup, a simpler version of the stew - without veggies but craftable by the Trapper. Should help out factions that start with trappers and bug catching zones but have no cooks!
- Pemmican, a somewhat efficient (but not tasty) food that the Trapper can craft on level 6 using meat, fruits, fat and rawhide.
- Pelts have been organized better and their graphics are now properly rendered, with no more generic pelt graphics overlapping them because of the mixin.
- Additionally, pelts are now properly categorized as small, large or skins (varanus, etc.) and while some recipes accept any pelt or any skin, certain recipes will require specific pelt sizes.
- The same applies for meat, which is now divided as small and large raw meat. Most recipes will accept any meat but - again - some might require specific sizes.
- The Trapper lua is not an override anymore (Yay!) but rather a nice and clean monkey-patch! This should make the mod compatible with other mods that modify the trapper, like ACE.
- You can now choose individual resource types for many of the trapper tools, similarly to how you can choose specific foods for the Smokery. For example, you can set up drying racks to only accept specific pelts or tanning tubs to only accept either Rawhide or Raw Skin.
- A new type of vein will now generate on all biomes, called Salt Vein. Salt Veins can be mined for Clumps 'o Rock Salt, which can then be refined by a level 1 Cook and turned into Sacks of Salt.
- Salt can be used as a seasoning but also for preserving and curing meats.
- Salt can also be bought from new traders, Salt Mine Merchants.
- Boiled Leather, a new resource - and Boiled Leather stuff like a small and normal chest, an input box and a new set of armor. Made from bolts of leather and any wax.
- Waxes can now be crafted by the Herbalist from certain plants or by the Trapper from wool.
- Salt Box, container. Use it for salting your curables, similarly to how smokehouses work but with longer lasting results. Salted goods can then be smoked, creating even better products.
- Fixed an issue that made it so pets would get into a weird loop trying to eat raw meat and would end up starving to death without ever eating.
- All Building Templates have been tweaked and now contain the new campfire & pot and storage options.
- Additionally, there is now a new building template for "Curing Yards" that contain smokeries and salt boxes.
- Due to Jerky now being a quite good food item, all loadouts that contained jerky have had it replaced for regular smoked meat.
- Fixed an issue that prevented the Trapper from obtaining experience by trapping - it was only gaining experience from crafting.
ACE Compatibility:
- Resources for all ACE creatures and new foods have been added, which include fresh hides and raw meat for Moo-moos, Bears... etc.
- If ACE is active, the Northern Alliance and Rayya's Children Trappers will have a recipe for fox hats instead of raccoon hats. They're basically the same stat-wise, but since the ACE NA trapper already has a Raccoon hat, this solves that issue.
- Additionally, all the pelts, and hats have unique graphics for each biome, based on the unique graphics of their animals on each biome as well.
- Rendered Animal Fat can be used as a grease in cooking.
- Lard can be used as "Any Butter".
- Bucket of Tallow, alternative animal fat rendered from steak. Can be used as grease, cooking oil or poor wax.
- Beeswax will now be obtained when harvesting bee nests or skeps.
- There is a recipe for slicing Steak, it provides two pieces of raw meat.
- There is a couple of new recipes for fur bundles, large (48) and small (6). Fur bundles are like other piles, but they're restricted to ACE to benefit from the ACE Pile component that allows a crafted pile to remember the individual items used to make it, so you can get exactly the same pelts back.
- Bug Meat Soup provides the "Warm Belly" buff.
- Pemmican can be crafted with the "Fruit" resource instead of "Fruit Seed"
- The Trapper can craft Fish Traps, and the Carpenter can't anymore.
- There is a more efficient tannin recipe that requires Chestnut logs. It produces two pinches of tannin but requires the trapper's campfire & pot.
- When using ACE, there is now a new mechanic that will cause Tanning Tubs to run out of Tannin, Salt Boxes get brined and Smokehouses run out of fuel. The trapper will automatically refill these resources but it will require you to maintain them (like tannins or salt)
- All the best cured products provide a buff (Smoky Flavors) when eaten if using ACE.
- Whenever ACE is active, the "Harvest Beast Loot Table" data is removed from animals since ACE doesn't use it either.
- The mod is also completely compatible with the Archipelago Biome mod, having special products related with the Archipelago fishes and specific filters for them.
- There is also a recipe for slicing Big Fish into fish fillets if both ACE and the Archipelago mod are present.
- The mod is also compatible with LostEms, adapting the small fur rug recipe to use small pelts.

### August 23rd, 2018 - v1.1
- Updated the Trapper's LUA to Stonehearth's most recent version. (Oops!)
- Added a new craftable item for the Trapper: Fur Coat
Fur Coats can be worn by Workers and will work like a Winter Worker Outfit, removing the 
negative effects of cold weather. Unlike the Winter Worker Outfit, however, Fur Coats do 
not provide the Worker with the "Devoted" buff, being a cheaper solution for the cold.
- Made it so that carnivore animals can feed on raw meat.

### August 21st, 2018 - v1.0
- Initial release