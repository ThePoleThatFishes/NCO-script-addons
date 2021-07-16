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
import mods.nuclearcraft.Melter;

val materialdict = {cracker: <nuclearcraft:graham_cracker>, chocolate: <nuclearcraft:milk_chocolate>, gold_smore: <contenttweaker:smore_gold>,
marshmallow: <nuclearcraft:marshmallow>, pancake: <contenttweaker:pancakes>, caramel: <contenttweaker:caramel>} as IIngredient[string];


// Coils, Heatsinks, Ports and Heaters

for name, material in materialdict {
	recipes.addShaped("ncoconf" ~ name ~ "coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ name)*2,
	[[material, material, material],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[material, material, material]]); 
	
	recipes.addShaped("ncoconf" ~ name ~ "heatsink", itemUtils.getItem("nuclearcraft:solid_fission_sink_" ~ name),
	[[material, material, material],
	[material, <ore:emptyHeatSink>, material],
	[material, material, material]]);
	
	recipes.addShaped("ncoconf" ~ name ~ "heater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name),
	[[null, material, null],
	[material, <nuclearcraft:salt_fission_heater:0>, material],
	[null, material, null]]);
	
	recipes.addShaped("ncoconf" ~ name ~ "port", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name),
	[[null, material, null],
	[material, <nuclearcraft:fission_heater_port:0>, material],
	[null, material, null]]);
	
	}
Melter.addRecipe(<contenttweaker:caramel>, <fluid:caramel>*144);
Melter.addRecipe(<nuclearcraft:graham_cracker>, <fluid:cracker>*144);
Melter.addRecipe(<contenttweaker:smore_gold>, <fluid:gold_smore>*144);
Melter.addRecipe(<ore:pancakes>, <fluid:pancake>*16);

val fluiddict = {<fluid:cracker>: <fluid:cracker_nak>, <fluid:milk_chocolate>: <fluid:chocolate_nak>, <fluid:gold_smore>: <fluid:gold_smore_nak>,
<fluid:marshmallow>: <fluid:marshmallow_nak>, <fluid:pancake>: <fluid:pancake_nak>, <fluid:caramel>: <fluid:caramel_nak>} as IIngredient[IIngredient];

for fluidname, fluidnak in fluiddict {
SaltMixer.addRecipe(fluidname*144, <fluid:nak>*144, fluidnak*144);
}

// Pancake Blades

val alloy_blades = {hc: <ore:ingotHardCarbon>, tc: <ore:ingotThermoconducting>, tough: <ore:ingotTough>, feb: <ore:ingotFerroboron>,
mgb2: <ore:ingotMagnesiumDiboride>, zircaloy: <ore:ingotZircaloy>, limno2: <ore:ingotLithiumManganeseDioxide>} as IIngredient[string];
for blade, ingot in alloy_blades {
	recipes.addShaped("ncoconf" ~ blade ~ "blade", itemUtils.getItem("contenttweaker:blade_"~ blade)*4, [
	[ingot, <ore:ingotHSLASteel>, ingot],
	[ingot, <ore:ingotHSLASteel>, ingot],
	[ingot, <ore:ingotHSLASteel>, ingot]
	]);
	}

val ttblades = [<contenttweaker:pancake_core>, <contenttweaker:blade_hc>, <contenttweaker:blade_tc>, <contenttweaker:blade_feb>,
<contenttweaker:blade_tough>, <contenttweaker:blade_zircaloy>, <contenttweaker:blade_mgb2>, <contenttweaker:blade_limno2>] as IIngredient[];
for blade in ttblades {
	blade.addTooltip(format.italic("Crafting Ingredient."));
	}


Assembler.addRecipe(<nuclearcraft:turbine_rotor_blade_steel>*4, <nuclearcraft:turbine_rotor_blade_extreme>*4, <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>*4,
<ore:pancakes>*32, <contenttweaker:pancake_core>*4, 8.0, 4.0, 0.0);

val pancake_blades = { "steel": "steelcake", "extreme": "extremecake", "sic_sic_cmc": "sicsiccmcake",
"hc": "hccake", "tc": "tccake", "tough": "toughcake", "feb": "febcake", "limno2": "limno2cake", "mgb2": "mgb2cake", "zircaloy": "zircaloycake"} as string[string];

var currentblade = <minecraft:iron_ingot> as IItemStack;
var currentpancake = <minecraft:iron_ingot> as IItemStack;

for baseblade, pancakeblade in pancake_blades {
	if (baseblade == "steel" | baseblade == "extreme" | baseblade == "sic_sic_cmc") {
		currentblade = itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ baseblade);
	}
	else {
		currentblade = itemUtils.getItem("contenttweaker:blade_" ~ baseblade);
	}
	currentpancake = itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ pancakeblade);
	recipes.addShaped("ncoconfblade" ~ pancakeblade, currentpancake*4, [
	[currentblade, <contenttweaker:pancake_core>, currentblade],
	[<contenttweaker:pancake_core>, <ore:ingotHSLASteel>, <contenttweaker:pancake_core>],
	[currentblade, <contenttweaker:pancake_core>, currentblade]
	]);
}


// RTG and Neutron Source Recipes


if (loadedMods has "qmd") {

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
Radiation.setRadiationLevel(<nuclearcraft:fission_source_thmorium>, 1.05e-3);
Radiation.setRadiationLevel(<nuclearcraft:rtg_thmorium>, 62.5e-6);

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

Radiation.setRadiationLevel(<nuclearcraft:rtg_tritium>, 2.75e-6);
}

// Battery Recipes

recipes.addShaped("ncoconfbatterycasing", <contenttweaker:casing_battery>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>],
	[<ore:ingotGraphite>, <ore:steelFrame>, <ore:ingotGraphite>],
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
	]);

Crystallizer.addRecipe(<liquid:alumina>*432, <contenttweaker:beta_alumina>);
Infuser.addRecipe(<contenttweaker:casing_battery>, <liquid:potassium>*1296, <contenttweaker:casing_k>);
Infuser.addRecipe(<contenttweaker:casing_k>, <liquid:sulfur>*5994, <contenttweaker:casing_k_s>);
Assembler.addRecipe(<contenttweaker:casing_k_s>, <ore:dustMolybdenum>*3, <contenttweaker:beta_alumina>, null, <nuclearcraft:battery_potassium>);

ChemicalReactor.addRecipe(<liquid:ethanol>*1000, <liquid:sulfuric_acid>*1000, <liquid:ethene>*1000, null);
ChemicalReactor.addRecipe(<liquid:ethene>*1000, <liquid:oxygen>*500, <liquid:etheneoxide>*1000, null);
ChemicalReactor.addRecipe(<liquid:etheneoxide>*1000, <liquid:carbon_dioxide>*1000, <liquid:ethenecarbonate>*1000, null);

if (loadedMods has "qmd") {
	AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:charcoal>, <contenttweaker:anode_na>, 2.0, 4.0, 0.0);
	AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:ingotManganeseDioxide>, <contenttweaker:cathode_na>, 2.0, 6.0, 0.0);
}

SaltMixer.addRecipe(<liquid:sodium>*144, <liquid:manganese_dioxide>*144, <liquid:sodiumcathode>*144);
SaltMixer.addRecipe(<liquid:sodium>*144, <liquid:coal>*100, <liquid:sodiumanode>*144);
IngotFormer.addRecipe(<liquid:sodiumcathode>*144, <contenttweaker:cathode_na>);
IngotFormer.addRecipe(<liquid:sodiumanode>*144, <contenttweaker:anode_na>);
Infuser.addRecipe(<contenttweaker:casing_battery>, <liquid:ethenecarbonate>*500, <contenttweaker:casing_ec>);

Assembler.addRecipe(<contenttweaker:casing_ec>, <contenttweaker:anode_na>, <contenttweaker:cathode_na>, null, <nuclearcraft:battery_sodium>);
