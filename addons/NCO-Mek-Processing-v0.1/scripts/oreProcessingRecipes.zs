#modloaded !mekanism

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Crystallizer;


val ores = [<ore:oreIron>, <ore:oreGold>, <ore:oreCopper>, <ore:oreLead>, <ore:oreTin>, <ore:oreBoron>, <ore:oreLithium>, <ore:oreMagnesium>, <ore:oreThorium>, <ore:oreUranium>] as IOreDictEntry[];
val ionised_dusts = [<ore:ionisedDustIron>, <ore:ionisedDustGold>, <ore:ionisedDustCopper>, <ore:ionisedDustLead>, <ore:ionisedDustTin>, <ore:ionisedDustBoron>, <ore:ionisedDustLithium>, <ore:ionisedDustMagnesium>, <ore:ionisedDustThorium>, <ore:ionisedDustUranium>] as IOreDictEntry[];
val dirty_slurries = [<fluid:dirtyslurryiron>, <fluid:dirtyslurrygold>,  <fluid:dirtyslurrycopper>, <fluid:dirtyslurrylead>, <fluid:dirtyslurrytin>, <fluid:dirtyslurryboron>, <fluid:dirtyslurrylithium>, <fluid:dirtyslurrymagnesium>, <fluid:dirtyslurrythorium>, <fluid:dirtyslurryuranium>] as IIngredient[];
val clean_slurries = [<fluid:cleanslurryiron>, <fluid:cleanslurrygold>, <fluid:cleanslurrycopper>, <fluid:cleanslurrylead>, <fluid:cleanslurrytin>, <fluid:cleanslurryboron>, <fluid:cleanslurrylithium>, <fluid:cleanslurrymagnesium>, <fluid:cleanslurrythorium>, <fluid:cleanslurryuranium>] as IIngredient[];
val crystals = [<ore:crystalIron>, <ore:crystalGold>, <ore:crystalCopper>, <ore:crystalLead>, <ore:crystalTin>, <ore:crystalBoron>, <ore:crystalLithium>, <ore:crystalMagnesium>, <ore:crystalThorium>, <ore:crystalUranium>] as IOreDictEntry[];
val shards = [<ore:shardIron>, <ore:shardGold>, <ore:shardCopper>, <ore:shardLead>, <ore:shardTin>, <ore:shardBoron>, <ore:shardLithium>, <ore:shardMagnesium>, <ore:shardThorium>, <ore:shardUranium>] as IOreDictEntry[];
val clumps = [<ore:clumpIron>, <ore:clumpGold>, <ore:clumpCopper>, <ore:clumpLead>, <ore:clumpTin>, <ore:clumpBoron>, <ore:clumpLithium>, <ore:clumpMagnesium>, <ore:clumpThorium>, <ore:clumpUranium>] as IOreDictEntry[];
val dirty_dusts = [<ore:dirtyDustIron>, <ore:dirtyDustGold>, <ore:dirtyDustCopper>, <ore:dirtyDustLead>, <ore:dirtyDustTin>, <ore:dirtyDustBoron>, <ore:dirtyDustLithium>, <ore:dirtyDustMagnesium>, <ore:dirtyDustThorium>, <ore:dirtyDustUranium>] as IOreDictEntry[];
val dusts = [<ore:dustIron>, <ore:dustGold>, <ore:dustCopper>, <ore:dustLead>, <ore:dustTin>, <ore:dustBoron>, <ore:dustLithium>, <ore:dustMagnesium>, <ore:dustThorium>, <ore:dustUranium>] as IOreDictEntry[];
val ingots = [<ore:ingotIron>, <ore:ingotGold>,<ore:ingotCopper>, <ore:ingotLead>, <ore:ingotTin>, <ore:ingotBoron>, <ore:ingotLithium>, <ore:ingotMagnesium>, <ore:ingotThorium>, <ore:ingotUranium>] as IOreDictEntry[];


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