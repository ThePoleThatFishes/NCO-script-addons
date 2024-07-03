#modloaded !mekanism thermalfoundation
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Crystallizer;


val ores = [<ore:oreAluminum>, <ore:oreIridium>, <ore:oreNickel>, <ore:orePlatinum>, <ore:oreSilver>] as IOreDictEntry[];
val ionised_dusts = [<ore:ionisedDustAluminum>, <ore:ionisedDustIridium>, <ore:ionisedDustNickel>, <ore:ionisedDustPlatinum>, <ore:ionisedDustSilver>] as IOreDictEntry[];
val dirty_slurries = [<fluid:dirtyslurryaluminum>, <fluid:dirtyslurryiridium>,<fluid:dirtyslurrynickel>, <fluid:dirtyslurryplatinum>, <fluid:dirtyslurrysilver>] as IIngredient[];
val clean_slurries = [<fluid:cleanslurryaluminum>, <fluid:cleanslurryiridium>,<fluid:cleanslurrynickel>, <fluid:cleanslurryplatinum>, <fluid:cleanslurrysilver>] as IIngredient[];
val crystals = [<ore:crystalAluminum>, <ore:crystalIridium>, <ore:crystalNickel>, <ore:crystalPlatinum>, <ore:crystalSilver>] as IOreDictEntry[];
val shards = [<ore:shardAluminum>, <ore:shardIridium>, <ore:shardNickel>, <ore:shardPlatinum>, <ore:shardSilver>] as IOreDictEntry[];
val clumps = [<ore:clumpAluminum>, <ore:clumpIridium>, <ore:clumpNickel>, <ore:clumpPlatinum>, <ore:clumpSilver>] as IOreDictEntry[];
val dirty_dusts = [<ore:dirtyDustAluminum>, <ore:dirtyDustIridium>,<ore:dirtyDustNickel>, <ore:dirtyDustPlatinum>, <ore:dirtyDustSilver>] as IOreDictEntry[];
val dusts = [<ore:dustAluminum>, <ore:dustIridium>, <ore:dustNickel>, <ore:dustPlatinum>, <ore:dustSilver>] as IOreDictEntry[];
val ingots = [<ore:ingotAluminum>, <ore:ingotIridium>, <ore:ingotNickel>, <ore:ingotPlatinum>, <ore:ingotSilver>] as IOreDictEntry[];


for i, ore in ores {
	if !(loadedMods has "qmd") {
	// 5x Ore Processing
	Enricher.addRecipe(ore, <fluid:sulfuric_acid>*20, dirty_slurries[i]*1000, 1.0, 16.0, 0.0);
	ChemicalReactor.addRecipe(dirty_slurries[i]*200, <fluid:water>*1000, clean_slurries[i]*200, null, 0.5, 8.0, 0.0);
	Crystallizer.addRecipe(clean_slurries[i]*200, crystals[i], 0.25, 16.0, 0.0);
	}
	
	// 4x Ore Processing
	Infuser.addRecipe(ore, <fluid:hydrochloric_acid>*20, shards[i]*4, 1.0/3.0, 16.0, 0.0);
	Infuser.addRecipe(crystals[i], <fluid:hydrochloric_acid>*20, shards[i], 1.0/3.0, 16.0, 0.0);
	
	// 3x Ore Processing
	Infuser.addRecipe(ore, <fluid:oxygen>*20, clumps[i]*3, 1.0/3.0, 8.0, 0.0);
	Infuser.addRecipe(shards[i], <fluid:oxygen>*20, clumps[i], 1.0/3.0, 8.0, 0.0);
	Manufactory.addRecipe(clumps[i], dirty_dusts[i], 0.5, 2.0, 0.0);
	Manufactory.addRecipe(dirty_dusts[i], dusts[i], 0.5, 2.0, 0.0);
}