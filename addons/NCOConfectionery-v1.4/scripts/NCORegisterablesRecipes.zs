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
import mods.nuclearcraft.FissionHeating;
import mods.nuclearcraft.Turbine;


val materialdict = {cracker: <ore:foodCrackers>, chocolate: <ore:foodChocolatebar>, gold_smore: <contenttweaker:smore_gold>,
marshmallow: <ore:foodMarshmellows>, pancake: <ore:foodPancakes>, caramel: <ore:foodCaramel>, buttermilk: <contenttweaker:buttermilk>,
egg: <ore:listAllegg>, wheat: <minecraft:wheat>, sugar: <minecraft:sugar>, cake: <minecraft:cake>, pumpkin: <minecraft:pumpkin>,
pumpkin_pie: <minecraft:pumpkin_pie>} as IIngredient[string];


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

// Pancake Blades

val alloy_blades = {hc: <ore:ingotHardCarbon>, tc: <ore:ingotThermoconducting>, tough: <ore:ingotTough>, feb: <ore:ingotFerroboron>,
mgb2: <ore:ingotMagnesiumDiboride>, zircaloy: <ore:ingotZircaloy>, limno2: <ore:ingotLithiumManganeseDioxide>, bronze: <ore:ingotBronze>,
hsla: <ore:ingotHSLASteel>, sic: <ore:ingotSiliconCarbide>} as IIngredient[string];
for blade, ingot in alloy_blades {
	recipes.addShaped("ncoconf" ~ blade ~ "blade", itemUtils.getItem("contenttweaker:blade_"~ blade)*4, [
	[ingot, <ore:ingotHSLASteel>, ingot],
	[ingot, <ore:ingotHSLASteel>, ingot],
	[ingot, <ore:ingotHSLASteel>, ingot]
	]);
	}

val ttblades = [<contenttweaker:pancake_core>, <contenttweaker:blade_hc>, <contenttweaker:blade_tc>, <contenttweaker:blade_feb>,
<contenttweaker:blade_tough>, <contenttweaker:blade_zircaloy>, <contenttweaker:blade_mgb2>, <contenttweaker:blade_limno2>, <contenttweaker:blade_bronze>,
<contenttweaker:blade_hsla>, <contenttweaker:blade_sic>] as IIngredient[];
for blade in ttblades {
	blade.addTooltip(format.italic("Crafting Ingredient."));
	}


Assembler.addRecipe(<nuclearcraft:turbine_rotor_blade_steel>*4, <nuclearcraft:turbine_rotor_blade_extreme>*4, <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>*4,
<ore:foodPancakes>*32, <contenttweaker:pancake_core>*4, 8.0, 4.0, 0.0);

val pancake_blades = { "steel": "steelcake", "extreme": "extremecake", "sic_sic_cmc": "sicsiccmcake",
"hc": "hccake", "tc": "tccake", "tough": "toughcake", "feb": "febcake", "limno2": "limno2cake", "mgb2": "mgb2cake", "zircaloy": "zircaloycake", "bronze": "bronzecake",
"hsla": "hslacake", "sic": "siccake"} as string[string];

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

// Tritium Breeding Recipes
AlloyFurnace.addRecipe(<ore:ingotLithium>, <ore:itemSilicon>, <contenttweaker:li4sio4_ingot>*2, 3.0, 4.0, 0.0);
recipes.addShaped(<contenttweaker:blanket_empty>, [[<ore:plateAdvanced>, <ore:ingotZirconium>, <ore:plateAdvanced>],
[<contenttweaker:li4sio4_ingot>, <minecraft:bucket>, <contenttweaker:li4sio4_ingot>],
[<ore:plateAdvanced>, <ore:ingotZirconium>, <ore:plateAdvanced>]]);
Infuser.addRecipe(<contenttweaker:blanket_empty>, <liquid:lithium_6>*144, <contenttweaker:blanket_li>);
FissionIrradiator.addRecipe(<contenttweaker:blanket_li>, <contenttweaker:blanket_tritium>, 24000, 0.0, 0.0, 84.0e-9);
Extractor.addRecipe(<contenttweaker:blanket_tritium>, <contenttweaker:blanket_empty>, <liquid:bred_fluid>*2000, 1.0, 1.0, 84.0e-9);
Centrifuge.addRecipe(<liquid:bred_fluid>*2000, <liquid:tritium>*1000, <liquid:helium>*1000, null, null, null, null);

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
SaltMixer.addRecipe(<liquid:ethene>*1000, <liquid:oxygen>*500, <liquid:etheneoxide>*1000);
ChemicalReactor.addRecipe(<liquid:etheneoxide>*1000, <liquid:carbon_dioxide>*1000, <liquid:ethenecarbonate>*1000, null);


SaltMixer.addRecipe(<liquid:sodium>*144, <liquid:manganese_dioxide>*144, <liquid:sodiumcathode>*144);
SaltMixer.addRecipe(<liquid:sodium>*144, <liquid:coal>*100, <liquid:sodiumanode>*144);
IngotFormer.addRecipe(<liquid:sodiumcathode>*144, <contenttweaker:cathode_na>);
IngotFormer.addRecipe(<liquid:sodiumanode>*144, <contenttweaker:anode_na>);
Infuser.addRecipe(<contenttweaker:casing_battery>, <liquid:ethenecarbonate>*500, <contenttweaker:casing_ec>);

Assembler.addRecipe(<contenttweaker:casing_ec>, <contenttweaker:anode_na>, <contenttweaker:cathode_na>, null, <nuclearcraft:battery_sodium>);


FissionHeating.addRecipe(<fluid:eggnog>, <fluid:hot_eggnog>, 16);
FissionHeating.addRecipe(<fluid:maple_syrup>, <fluid:hot_maple_syrup>, 100);
Turbine.addRecipe(<fluid:hot_eggnog>, <fluid:eggnog>, 18, 4.00, 1.00);
Turbine.addRecipe(<fluid:hot_maple_syrup>, <fluid:maple_syrup>, 110, 6.00, 1.00);