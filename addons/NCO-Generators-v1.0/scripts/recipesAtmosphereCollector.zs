#modloaded !qmd

import mods.nuclearcraft.BasicRecipeHandler;
import mods.nuclearcraft.Centrifuge;

var atmosphereCollector = BasicRecipeHandler.get("atmosphere_collector");


recipes.addShaped("atmosphere_collector", <nuclearcraft:atmosphere_collector>, [
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>],
	[<minecraft:iron_bars>, <ore:chassis>, <minecraft:iron_bars>],
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>]
	]);
	
atmosphereCollector.addRecipe([<fluid:compressed_air>*1000]);
Centrifuge.addRecipe(<fluid:compressed_air>*10000, <fluid:nitrogen>*7500, <fluid:oxygen>*2000, <fluid:carbon_dioxide>*400, <fluid:helium>*100, null, null);