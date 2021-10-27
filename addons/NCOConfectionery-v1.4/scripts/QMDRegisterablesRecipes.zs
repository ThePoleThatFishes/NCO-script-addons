#modloaded qmd

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.Radiation;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.FissionIrradiator;
import mods.nuclearcraft.Extractor;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Melter;

// RTG and Neutron Source Recipes

var thmoriums_rtg = [<contenttweaker:to316>, <contenttweaker:to316ni>, <contenttweaker:to316ox>, <contenttweaker:to316za>] as IItemStack[];
var thmoriums_source = [<contenttweaker:to317>, <contenttweaker:to317ni>, <contenttweaker:to317ox>, <contenttweaker:to317za>] as IItemStack[];

oreDict.ingotThmorium316;
oreDict.ingotThmorium317;

for thmorium in thmoriums_rtg {
<ore:ingotThmorium316>.add(thmorium);
}

for thmorium in thmoriums_source {
<ore:ingotThmorium317>.add(thmorium);
}

recipes.addShaped("ncoconfrtgthmorium", <nuclearcraft:rtg_thmorium>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>],
	[<ore:ingotGraphite>, <ore:ingotThmorium316>, <ore:ingotGraphite>],
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
	]);
	
recipes.addShaped("ncoconfsourcethmorium", <nuclearcraft:fission_source_thmorium>*2, [
	[<ore:plateBasic>, <ore:ingotThmorium317>, <ore:plateBasic>],
	[<ore:ingotThmorium317>, <ore:steelFrame>, <ore:ingotThmorium317>],
	[<ore:plateBasic>, <ore:ingotThmorium317>, <ore:plateBasic>]
	]);


Assembler.addRecipe(<contenttweaker:bvc>, <ore:ingotThmorium316>, null, null, <nuclearcraft:rtg_thmorium>);
recipes.addShaped("ncoconfbvccasing", <contenttweaker:bvc>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>],
	[<qmd:semiconductor:0>, null, <qmd:semiconductor:1>],
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
	]);
	
	
Infuser.addRecipe(<contenttweaker:bvc>, <liquid:tritium>*1000, <nuclearcraft:rtg_tritium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustRuthenium106>, null, null, <nuclearcraft:rtg_ruthenium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustCaesium137>, null, null, <nuclearcraft:rtg_caesium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustPromethium147>, null, null, <nuclearcraft:rtg_promethium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustEuropium155>, null, null, <nuclearcraft:rtg_europium>);

Radiation.setRadiationLevel(<nuclearcraft:fission_source_thmorium>, 1.05e-3);
Radiation.setRadiationLevel(<nuclearcraft:rtg_thmorium>, 62.5e-6);
Radiation.setRadiationLevel(<nuclearcraft:rtg_tritium>, 2.75e-6);
Radiation.setRadiationLevel(<nuclearcraft:rtg_caesium>, 834.0e-6);
Radiation.setRadiationLevel(<nuclearcraft:rtg_europium>, 18.4e-3);
Radiation.setRadiationLevel(<nuclearcraft:rtg_promethium>, 20.1e-3);
Radiation.setRadiationLevel(<nuclearcraft:rtg_ruthenium>, 6.3e-3);

AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:charcoal>, <contenttweaker:anode_na>, 2.0, 4.0, 0.0);
AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:ingotManganeseDioxide>, <contenttweaker:cathode_na>, 2.0, 6.0, 0.0);
