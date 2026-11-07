#modloaded qmd
#ignoreBracketErrors

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
import mods.nuclearcraft.CTHelper;
import mods.nuclearcraft.HeatExchanger;
import mods.qmd.nucleosynthesis_chamber_heater;

// Oredict all Th'moriums

oreDict.ingotThmorium316All;
oreDict.ingotThmorium317All;

<ore:ingotThmorium316All>.addAll(<ore:ingotThmorium316>);
<ore:ingotThmorium316All>.addAll(<ore:ingotThmorium316Oxide>);
<ore:ingotThmorium316All>.addAll(<ore:ingotThmorium316Nitride>);
<ore:ingotThmorium316All>.addAll(<ore:ingotThmorium316ZA>);
<ore:ingotThmorium316All>.addAll(<ore:ingotThmorium316Carbide>);
<ore:ingotThmorium317All>.addAll(<ore:ingotThmorium317>);
<ore:ingotThmorium317All>.addAll(<ore:ingotThmorium317Oxide>);
<ore:ingotThmorium317All>.addAll(<ore:ingotThmorium317Nitride>);
<ore:ingotThmorium317All>.addAll(<ore:ingotThmorium317ZA>);
<ore:ingotThmorium317All>.addAll(<ore:ingotThmorium317Carbide>);

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

// Golden S'more as NSC coolant
nucleosynthesis_chamber_heater.addRecipe(<fluid:gold_smore>, <fluid:hot_gold_smore>, 32);

// BaNa2 Stuff
AlloyFurnace.addRecipe(<ore:ingotBarium>, <ore:ingotSodium>*2, <ore:ingotBariumDisodide>*3);
if (CTHelper.isScriptAddonLoaded("NCEIB-Overhaul")) {
	Extractor.addRecipe(<ore:blockCalciumArgon>, <ore:blockCalcium>, <fluid:argon>*25);
	AlloyFurnace.addRecipe(<ore:blockBarium>, <ore:blockSodium>*2, <ore:blockBariumDisodide>*3, 8.0, 1.0, 0.0);
} else {
	Extractor.addRecipe(<ore:blockCalciumArgon>, <ore:dustCalcium>*9, <fluid:argon>*25);
}

// PbBi Heaters (MRF Integration)
if (loadedMods has "moarreactorfunctionality") {

	val fluiddict = {<fluid:cracker>: [<fluid:cracker_pbbi>, <fluid:cracker_pbbi_hot>], <fluid:milk_chocolate>: [<fluid:chocolate_pbbi>, <fluid:chocolate_pbbi_hot>], <fluid:gold_smore>: [<fluid:gold_smore_pbbi>, <fluid:gold_smore_pbbi_hot>],
	<fluid:marshmallow>: [<fluid:marshmallow_pbbi>, <fluid:marshmallow_pbbi_hot>], <fluid:pancake>: [<fluid:pancake_pbbi>, <fluid:pancake_pbbi_hot>], <fluid:caramel>: [<fluid:caramel_pbbi>, <fluid:caramel_pbbi_hot>], 
	<fluid:buttermilk>: [<fluid:buttermilk_pbbi>, <fluid:buttermilk_pbbi_hot>], <fluid:sugar>: [<fluid:sugar_pbbi>, <fluid:sugar_pbbi_hot>], <fluid:egg>: [<fluid:egg_pbbi>, <fluid:egg_pbbi_hot>], 
	<fluid:wheat>: [<fluid:wheat_pbbi>, <fluid:wheat_pbbi_hot>], <fluid:cake>: [<fluid:cake_pbbi>, <fluid:cake_pbbi_hot>], <fluid:pumpkin>: [<fluid:pumpkin_pbbi>, <fluid:pumpkin_pbbi_hot>], 
	<fluid:pumpkin_pie>: [<fluid:pumpkin_pie_pbbi>, <fluid:pumpkin_pie_pbbi_hot>]} as IIngredient[][IIngredient];
	
	val materialdict = {cracker: <ore:foodCrackers>, chocolate: <ore:foodChocolatebar>, gold_smore: <contenttweaker:smore_gold>,
	marshmallow: <ore:foodMarshmellows>, pancake: <ore:foodPancakes>, caramel: <ore:foodCaramel>, buttermilk: <contenttweaker:buttermilk>,
	egg: <ore:listAllegg>, wheat: <minecraft:wheat>, sugar: <minecraft:sugar>, cake: <minecraft:cake>, pumpkin: <minecraft:pumpkin>,
	pumpkin_pie: <minecraft:pumpkin_pie>} as IIngredient[string];

	for fluidname, fluidpbbi in fluiddict {
		SaltMixer.addRecipe(fluidname*144, <fluid:pbbi>*144, fluidpbbi[0]*144);
		HeatExchanger.addRecipe(fluidpbbi[1], fluidpbbi[0], 256.0, 800, 400);
	}
		
	for name, material in materialdict {	
		recipes.addShaped("ncoconf" ~ name ~ "pbbiheater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name ~ "_pbbi"),
		[[null, material, null],
		[material, <nuclearcraft:salt_fission_heater_standard_pbbi>, material],
		[null, material, null]]);

		recipes.addShaped("ncoconf" ~ name ~ "pbbiport", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name ~ "_pbbi"),
		[[null, material, null],
		[material, <nuclearcraft:fission_heater_port_standard_pbbi>, material],
		[null, material, null]]);
	}
}
