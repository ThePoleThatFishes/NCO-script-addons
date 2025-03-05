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
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Turbine;
import mods.nuclearcraft.FissionHeating;
import mods.qmd.nucleosynthesis_chamber_heater;

// Oredict all Th'moriums

oreDict.ingotThmorium316All;
oreDict.ingotThmorium317All;

<ore:ingotThmorium316All>.add(<nuclearcraft:thmorium>);
<ore:ingotThmorium316All>.add(<nuclearcraft:thmorium:1>);
<ore:ingotThmorium316All>.add(<nuclearcraft:thmorium:2>);
<ore:ingotThmorium316All>.add(<nuclearcraft:thmorium:3>);
<ore:ingotThmorium317All>.add(<nuclearcraft:thmorium:4>);
<ore:ingotThmorium317All>.add(<nuclearcraft:thmorium:5>);
<ore:ingotThmorium317All>.add(<nuclearcraft:thmorium:6>);
<ore:ingotThmorium317All>.add(<nuclearcraft:thmorium:7>);

// Th'morium RTG & Neutron Source
recipes.addShaped("ncoconfrtgthmorium", <nuclearcraft:rtg_thmorium>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>],
	[<ore:ingotGraphite>, <ore:ingotThmorium316All>, <ore:ingotGraphite>],
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
	]);
	
recipes.addShaped("ncoconfsourcethmorium", <nuclearcraft:fission_source_thmorium>*2, [
	[<ore:plateBasic>, <ore:ingotThmorium317All>, <ore:plateBasic>],
	[<ore:blockBeryllium>, <ore:steelFrame>, <ore:blockBeryllium>],
	[<ore:plateBasic>, <ore:ingotThmorium317All>, <ore:plateBasic>]
	]);

// Set Radiation values for RTGs and Source
Radiation.setRadiationLevel(<nuclearcraft:fission_source_thmorium>, 1.05e-3);
Radiation.setRadiationLevel(<nuclearcraft:rtg_thmorium>, 62.5e-6);

// Renewable Calcium
Manufactory.addRecipe(<contenttweaker:eggshells>*64, <contenttweaker:caco3_dust>);
furnace.addRecipe(<contenttweaker:cao_dust>, <contenttweaker:caco3_dust>);
Melter.addRecipe(<contenttweaker:cao_dust>, <fluid:cao>*144);
Electrolyzer.addRecipe(<fluid:cao>*144, <fluid:calcium>*144, <fluid:oxygen>*1000, null, null);

// Cooler Recipes

val materialdict = {cracker: <ore:foodCrackers>, chocolate: <ore:foodChocolatebar>, smore: <nuclearcraft:smore>,
marshmallow: <ore:foodMarshmellows>, pancake: <ore:foodPancakes>, caramel: <ore:foodCaramel>, buttermilk: <contenttweaker:buttermilk>} as IIngredient[string];

for name, material in materialdict {
	recipes.addShaped("ncoconf" ~ name ~ "cooler", itemUtils.getItem("qmd:accelerator_cooler_" ~ name),
	[[material, material, material],
	[material, <qmd:part:0>, material],
	[material, material, material]]);
	
	if (name != "pancake" && name != "caramel" && name != "buttermilk") {
		recipes.addShaped("ncoconf" ~ name ~ "nscheater", itemUtils.getItem("qmd:vacuum_chamber_heater_" ~ name),
			[[material, <ore:ingotOsmiridium>, material],
			[<ore:ingotOsmiridium>, <qmd:part>, <ore:ingotOsmiridium>],
			[material, <ore:ingotOsmiridium>, material]]);
	}
}

// Golden S'more SFR and NSC coolant
nucleosynthesis_chamber_heater.addRecipe(<fluid:gold_smore>*6, <fluid:hot_gold_smore>, 1);
Turbine.addRecipe(<fluid:hot_gold_smore>, <fluid:gold_smore>*6, 7065.6, 6.0, 1.0);
FissionHeating.addRecipe(<fluid:gold_smore>*6, <fluid:hot_gold_smore>, 942);