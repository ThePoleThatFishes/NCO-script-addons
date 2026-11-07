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
import mods.nuclearcraft.HeatExchanger;
import mods.nuclearcraft.DecayGenerator;
import mods.nuclearcraft.Manufactory;

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
	
	recipes.addShaped("ncoconf" ~ name ~ "bananaheater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name ~ "_banana"),
	[[null, material, null],
	[material, <nuclearcraft:salt_fission_heater_standard_banana>, material],
	[null, material, null]]);
	
	recipes.addShaped("ncoconf" ~ name ~ "port", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name),
	[[null, material, null],
	[material, <nuclearcraft:fission_heater_port:0>, material],
	[null, material, null]]);
	
	recipes.addShaped("ncoconf" ~ name ~ "bananaport", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name ~ "_banana"),
	[[null, material, null],
	[material, <nuclearcraft:fission_heater_port_standard_banana>, material],
	[null, material, null]]);
	
}

// Pancake Blades
Assembler.addRecipe(<nuclearcraft:turbine_rotor_blade_steel>*4, <nuclearcraft:turbine_rotor_blade_extreme>*4, <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>*4,
<ore:foodPancakes>*32, <contenttweaker:pancake_core>*4, 8.0, 4.0, 0.0);

val alloy_blades = {steel: <ore:ingotSteel>, extreme: <ore:ingotExtreme>, sicsiccm: <ore:ingotSiCSiCCMC>, hc: <ore:ingotHardCarbon>, tc: <ore:ingotThermoconducting>, tough: <ore:ingotTough>, 
feb: <ore:ingotFerroboron>, mgb2: <ore:ingotMagnesiumDiboride>, zircaloy: <ore:ingotZircaloy>, limno2: <ore:ingotLithiumManganeseDioxide>, bronze: <ore:ingotBronze>, hsla: <ore:ingotHSLASteel>,
 sic: <ore:ingotSiliconCarbide>} as IIngredient[string];
 
for blade, ingot in alloy_blades {
	recipes.addShaped("ncoconfblade" ~ blade, itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ blade ~ "cake")*4, [
	[ingot, <contenttweaker:pancake_core>, ingot],
	[<contenttweaker:pancake_core>, <ore:ingotHSLASteel>, <contenttweaker:pancake_core>],
	[ingot, <contenttweaker:pancake_core>, ingot]]);
}

// Coolant Loops
val fluiddict = {<fluid:cracker>: [<fluid:cracker_nak>, <fluid:cracker_nak_hot>], <fluid:milk_chocolate>: [<fluid:chocolate_nak>, <fluid:chocolate_nak_hot>], <fluid:gold_smore>: [<fluid:gold_smore_nak>, <fluid:gold_smore_nak_hot>],
<fluid:marshmallow>: [<fluid:marshmallow_nak>, <fluid:marshmallow_nak_hot>], <fluid:pancake>: [<fluid:pancake_nak>, <fluid:pancake_nak_hot>], <fluid:caramel>: [<fluid:caramel_nak>, <fluid:caramel_nak_hot>], 
<fluid:buttermilk>: [<fluid:buttermilk_nak>, <fluid:buttermilk_nak_hot>], <fluid:sugar>: [<fluid:sugar_nak>, <fluid:sugar_nak_hot>], <fluid:egg>: [<fluid:egg_nak>, <fluid:egg_nak_hot>], 
<fluid:wheat>: [<fluid:wheat_nak>, <fluid:wheat_nak_hot>], <fluid:cake>: [<fluid:cake_nak>, <fluid:cake_nak_hot>], <fluid:pumpkin>: [<fluid:pumpkin_nak>, <fluid:pumpkin_nak_hot>], 
<fluid:pumpkin_pie>: [<fluid:pumpkin_pie_nak>, <fluid:pumpkin_pie_nak_hot>]} as IIngredient[][IIngredient];
for fluidname, fluidnak in fluiddict {
SaltMixer.addRecipe(fluidname*144, <fluid:nak>*144, fluidnak[0]*144);
HeatExchanger.addRecipe(fluidnak[1], fluidnak[0], 256.0, 800, 400);
}

FissionHeating.addRecipe(<fluid:eggnog>, <fluid:hot_eggnog>, 64.0);
FissionHeating.addRecipe(<fluid:maple_syrup>, <fluid:hot_maple_syrup>, 64.0);
FissionHeating.addRecipe(<fluid:gold_smore>, <fluid:hot_gold_smore>, 64.0);


HeatExchanger.addRecipe(<fluid:hot_eggnog>, <fluid:eggnog>, 72.0, 700, 400);
HeatExchanger.addRecipe(<fluid:hot_maple_syrup>, <fluid:maple_syrup>, 72.0, 700, 400);
HeatExchanger.addRecipe(<fluid:hot_gold_smore>, <fluid:gold_smore>, 96.0, 700, 400);

// BaNaNa Coolants
SaltMixer.addRecipe(<fluid:barium>*144, <fluid:sodium>*288, <fluid:barium_disodide>*432);
IngotFormer.addRecipe(<fluid:barium_disodide>*144, <ore:ingotBariumDisodide>);
Manufactory.addRecipe(<ore:ingotBariumDisodide>, <ore:ingotBanana>);
Manufactory.addRecipe(<ore:blockBariumDisodide>, <ore:blockBanana>);
Melter.addRecipe(<ore:blockBanana>, <fluid:banana>*1296, 9.0, 1.0, 0.0);
Melter.addRecipe(<ore:ingotBanana>, <fluid:banana>*144, 1.0, 1.0, 0.0);

val blocks = {bana2: [<materialpart:barium_disodide:block>, <ore:ingotBariumDisodide>], banana: [<materialpart:banana:block>, <ore:ingotBanana>]} as IIngredient[][string];

for name, ingredients in blocks {
	recipes.addShaped(name ~ "_to_block", ingredients[0].items[0], [
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]]
	]);
	recipes.addShapeless(name ~ "_from_block", ingredients[1].items[0]*9, [ingredients[0]]); 
	}

DecayGenerator.addRecipe(<ore:blockBanana>, <ore:blockCalciumArgon>, 360000.0, 0.05, 4.3e-18);


val bigBaNaNaMap = {'standard': [<fluid:water>, <fluid:banana>, <fluid:banana_hot>], 'iron': [<fluid:iron>*144, <fluid:iron_banana>, <fluid:iron_banana_hot>], 'redstone': [<fluid:redstone>*200, <fluid:redstone_banana>, <fluid:redstone_banana_hot>], 
'quartz': [<fluid:quartz>*1332, <fluid:quartz_banana>, <fluid:quartz_banana_hot>], 'obsidian': [<fluid:obsidian>*360, <fluid:obsidian_banana>, <fluid:obsidian_banana_hot>], 'nether_brick': [<fluid:nether_brick>*360, <fluid:nether_brick_banana>, <fluid:nether_brick_banana_hot>], 
'glowstone': [<fluid:glowstone>*500, <fluid:glowstone_banana>, <fluid:glowstone_banana_hot>], 'lapis': [<fluid:lapis>*1332, <fluid:lapis_banana>, <fluid:lapis_banana_hot>], 'gold': [<fluid:gold>*144, <fluid:gold_banana>, <fluid:gold_banana_hot>], 
'prismarine': [<fluid:prismarine>*144, <fluid:prismarine_banana>, <fluid:prismarine_banana_hot>], 'slime': [<fluid:slime>*288, <fluid:slime_banana>, <fluid:slime_banana_hot>], 'end_stone': [<fluid:end_stone>*360, <fluid:end_stone_banana>, <fluid:end_stone_banana_hot>], 
'purpur': [<fluid:purpur>*360, <fluid:purpur_banana>, <fluid:purpur_banana_hot>], 'diamond': [<fluid:diamond>*666, <fluid:diamond_banana>, <fluid:diamond_banana_hot>], 'emerald': [<fluid:emerald>*666, <fluid:emerald_banana>, <fluid:emerald_banana_hot>], 
'copper': [<fluid:copper>*144, <fluid:copper_banana>, <fluid:copper_banana_hot>], 'tin': [<fluid:tin>*144, <fluid:tin_banana>, <fluid:tin_banana_hot>], 'lead': [<fluid:lead>*144, <fluid:lead_banana>, <fluid:lead_banana_hot>], 'boron': [<fluid:boron>*144, <fluid:boron_banana>, <fluid:boron_banana_hot>], 
'lithium': [<fluid:lithium>*144, <fluid:lithium_banana>, <fluid:lithium_banana_hot>], 'magnesium': [<fluid:magnesium>*144, <fluid:magnesium_banana>, <fluid:magnesium_banana_hot>], 'manganese': [<fluid:manganese>*144, <fluid:manganese_banana>, <fluid:manganese_banana_hot>], 
'aluminum': [<fluid:aluminum>*144, <fluid:aluminum_banana>, <fluid:aluminum_banana_hot>], 'silver': [<fluid:silver>*144, <fluid:silver_banana>, <fluid:silver_banana_hot>], 'fluorite': [<fluid:fluorite>*1332, <fluid:fluorite_banana>, <fluid:fluorite_banana_hot>], 
'villiaumite': [<fluid:villiaumite>*1332, <fluid:villiaumite_banana>, <fluid:villiaumite_banana_hot>], 'carobbiite': [<fluid:carobbiite>*1332, <fluid:carobbiite_banana>, <fluid:carobbiite_banana_hot>], 'arsenic': [<fluid:arsenic>*1332, <fluid:arsenic_banana>, <fluid:arsenic_banana_hot>], 
'liquid_nitrogen': [<fluid:liquid_nitrogen>*250, <fluid:liquid_nitrogen_banana>, <fluid:liquid_nitrogen_banana_hot>], 'liquid_helium': [<fluid:liquid_helium>*250, <fluid:liquid_helium_banana>, <fluid:liquid_helium_banana_hot>], 
'enderium': [<fluid:enderium>*144, <fluid:enderium_banana>, <fluid:enderium_banana_hot>], 'cryotheum': [<fluid:cryotheum>*250, <fluid:cryotheum_banana>, <fluid:cryotheum_banana_hot>], 'cracker': [<fluid:cracker>*144, <fluid:cracker_banana>*144, <fluid:cracker_banana_hot>], 
'chocolate': [<fluid:milk_chocolate>*144, <fluid:chocolate_banana>*144, <fluid:chocolate_banana_hot>], 'gold_smore': [<fluid:gold_smore>*144, <fluid:gold_smore_banana>*144, <fluid:gold_smore_banana_hot>], 
'marshmallow': [<fluid:marshmallow>*144, <fluid:marshmallow_banana>*144, <fluid:marshmallow_banana_hot>], 'pancake': [<fluid:pancake>*144, <fluid:pancake_banana>*144, <fluid:pancake_banana_hot>], 
'caramel': [<fluid:caramel>*144, <fluid:caramel_banana>*144, <fluid:caramel_banana_hot>], 'buttermilk': [<fluid:buttermilk>*144, <fluid:buttermilk_banana>*144, <fluid:buttermilk_banana_hot>], 
'egg': [<fluid:egg>*144, <fluid:egg_banana>*144, <fluid:egg_banana_hot>], 'wheat': [<fluid:wheat>*144, <fluid:wheat_banana>*144, <fluid:wheat_banana_hot>], 'sugar': [<fluid:sugar>*144, <fluid:sugar_banana>*144, <fluid:sugar_banana_hot>], 
'cake': [<fluid:cake>*144, <fluid:cake_banana>*144, <fluid:cake_banana_hot>], 'pumpkin': [<fluid:pumpkin>*!44, <fluid:pumpkin_banana>*144, <fluid:pumpkin_banana_hot>], 'pumpkin_pie': [<fluid:pumpkin_pie>*144, <fluid:pumpkin_pie_banana>*144, <fluid:pumpkin_pie_banana_hot>]} as IIngredient[][string];


for name, fluids in bigBaNaNaMap {
	HeatExchanger.addRecipe(fluids[2], fluids[1], 320.0, 1000, 400);
	if (name == "standard") {
		continue;
	}
	SaltMixer.addRecipe(fluids[0], <fluid:banana>*144, fluids[1]*144);
}

recipes.addShaped("standard_banana_heater", <nuclearcraft:salt_fission_heater_standard_banana>*8, [
[<ore:plateElite>, <ore:cropBanana>, <ore:plateElite>],
[<ore:ingotThermoconducting>, <ore:steelFrame>, <ore:ingotThermoconducting>],
[<ore:plateElite>, <ore:cropBanana>, <ore:plateElite>]]);
recipes.addShaped("stsndard_banana_heater_port", <nuclearcraft:fission_heater_port_standard_banana>*4, [
[<ore:plateElite>, <ore:servo>, <ore:plateElite>],
[<ore:cropBanana>, <ore:steelFrame>, <ore:cropBanana>],
[<ore:plateElite>, <ore:servo>, <ore:plateElite>]]);

val craftingMap = {"Iron": "metal", "Redstone": "gem_dust", "Quartz": "gem", "obsidian": "other", "nether_brick": "other", "Glowstone": "gem_dust",
"Lapis": "gem", "Gold": "metal", "Prismarine": "gem_precious", "slime": "other", "end_stone": "other", "purpur": "other", "Diamond": "gem_precious",
"Emerald": "gem_precious", "Copper": "metal", "Tin": "metal", "Lead": "metal", "Boron": "metal", "Lithium": "metal", "Magnesium": "metal",
"Manganese": "metal", "Aluminum": "metal", "Silver": "metal", "Fluorite": "gem", "Villiaumite": "gem", "Carobbiite": "gem", "Arsenic": "gem_dust",
"liquid_nitrogen": "liquid", "liquid_helium": "liquid", "Enderium": "metal", "cryotheum": "other"} as string[string];

for name, category in craftingMap {
	if (category == "metal") {
		recipes.addShaped(name ~ "_banana_heater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name.toLowerCase() ~ "_banana"), [
		[null, oreDict.get("ingot" ~ name), null],
		[oreDict.get("ingot" ~ name), <nuclearcraft:salt_fission_heater_standard_banana>, oreDict.get("ingot" ~ name)],
		[null, oreDict.get("ingot" ~ name), null]]);
		
		recipes.addShaped(name ~ "_banana_heater_port", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name.toLowerCase() ~ "_banana"), [
		[null, oreDict.get("ingot" ~ name), null],
		[oreDict.get("ingot" ~ name), <nuclearcraft:fission_heater_port_standard_banana>, oreDict.get("ingot" ~ name)],
		[null, oreDict.get("ingot" ~ name), null]]);
	} else if (category == "gem_dust") {
		recipes.addShaped(name ~ "_banana_heater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name.toLowerCase() ~ "_banana"), [
		[oreDict.get("dust" ~ name), oreDict.get("dust" ~ name), oreDict.get("dust" ~ name)],
		[oreDict.get("dust" ~ name), <nuclearcraft:salt_fission_heater_standard_banana>, oreDict.get("dust" ~ name)],
		[oreDict.get("dust" ~ name), oreDict.get("dust" ~ name), oreDict.get("dust" ~ name)]]);
		
		recipes.addShaped(name ~ "_banana_heater_port", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name.toLowerCase() ~ "_banana"), [
		[oreDict.get("dust" ~ name), oreDict.get("dust" ~ name), oreDict.get("dust" ~ name)],
		[oreDict.get("dust" ~ name), <nuclearcraft:fission_heater_port_standard_banana>, oreDict.get("dust" ~ name)],
		[oreDict.get("dust" ~ name), oreDict.get("dust" ~ name), oreDict.get("dust" ~ name)]]);
	} else if (category == "gem") {
		recipes.addShaped(name ~ "_banana_heater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name.toLowerCase() ~ "_banana"), [
		[oreDict.get("gem" ~ name), oreDict.get("gem" ~ name), oreDict.get("gem" ~ name)],
		[oreDict.get("gem" ~ name), <nuclearcraft:salt_fission_heater_standard_banana>, oreDict.get("gem" ~ name)],
		[oreDict.get("gem" ~ name), oreDict.get("gem" ~ name), oreDict.get("gem" ~ name)]]);
		
		recipes.addShaped(name ~ "_banana_heater_port", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name.toLowerCase() ~ "_banana"), [
		[oreDict.get("gem" ~ name), oreDict.get("gem" ~ name), oreDict.get("gem" ~ name)],
		[oreDict.get("gem" ~ name), <nuclearcraft:fission_heater_port_standard_banana>, oreDict.get("gem" ~ name)],
		[oreDict.get("gem" ~ name), oreDict.get("gem" ~ name), oreDict.get("gem" ~ name)]]);
	} else if (category == "gem_precious") {
		recipes.addShaped(name ~ "_banana_heater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name.toLowerCase() ~ "_banana"), [
		[null, oreDict.get("gem" ~ name), null],
		[oreDict.get("gem" ~ name), <nuclearcraft:salt_fission_heater_standard_banana>, oreDict.get("gem" ~ name)],
		[null, oreDict.get("gem" ~ name), null]]);
		
		recipes.addShaped(name ~ "_banana_heater_port", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name.toLowerCase() ~ "_banana"), [
		[null, oreDict.get("gem" ~ name), null],
		[oreDict.get("gem" ~ name), <nuclearcraft:fission_heater_port_standard_banana>, oreDict.get("gem" ~ name)],
		[null, oreDict.get("gem" ~ name), null]]);
	} else if (category == "liquid") {
		recipes.addShapeless(name ~ "_banana_heater", itemUtils.getItem("nuclearcraft:salt_fission_heater_" ~ name ~ "_banana"), 
		[<nuclearcraft:salt_fission_heater_standard_banana>, <forge:bucketfilled>.withTag({FluidName: name, Amount: 1000})]);
		recipes.addShapeless(name ~ "_banana_heater_port", itemUtils.getItem("nuclearcraft:fission_heater_port_" ~ name ~ "_banana"), 
		[<nuclearcraft:fission_heater_port_standard_banana>, <forge:bucketfilled>.withTag({FluidName: name, Amount: 1000})]);
	}
}


recipes.addShaped("obsidian_banana_heater", <nuclearcraft:salt_fission_heater_obsidian_banana>, [
[<ore:dustObsidian>, <ore:obsidian>, <ore:dustObsidian>],
[<ore:obsidian>, <nuclearcraft:salt_fission_heater_standard_banana>, <ore:obsidian>],
[<ore:dustObsidian>, <ore:obsidian>, <ore:dustObsidian>]]);
recipes.addShaped("obsidian_banana_heater_port", <nuclearcraft:fission_heater_port_obsidian_banana>, [
[<ore:dustObsidian>, <ore:obsidian>, <ore:dustObsidian>],
[<ore:obsidian>, <nuclearcraft:fission_heater_port_standard_banana>, <ore:obsidian>],
[<ore:dustObsidian>, <ore:obsidian>, <ore:dustObsidian>]]);

recipes.addShaped("nether_brick_banana_heater", <nuclearcraft:salt_fission_heater_nether_brick_banana>, [
[<ore:ingotBrickNether>, <minecraft:nether_brick>, <ore:ingotBrickNether>],
[<minecraft:nether_brick>, <nuclearcraft:salt_fission_heater_standard_banana>, <minecraft:nether_brick>],
[<ore:ingotBrickNether>, <minecraft:nether_brick>, <ore:ingotBrickNether>]]);
recipes.addShaped("nether_brick_banana_heater_port", <nuclearcraft:fission_heater_port_nether_brick_banana>, [
[<ore:ingotBrickNether>, <minecraft:nether_brick>, <ore:ingotBrickNether>],
[<minecraft:nether_brick>, <nuclearcraft:fission_heater_port_standard_banana>, <minecraft:nether_brick>],
[<ore:ingotBrickNether>, <minecraft:nether_brick>, <ore:ingotBrickNether>]]);

recipes.addShaped("slime_banana_heater", <nuclearcraft:salt_fission_heater_slime_banana>, [
[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>],
[<ore:slimeball>, <nuclearcraft:salt_fission_heater_standard_banana>, <ore:slimeball>],
[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>]]);

recipes.addShaped("slime_banana_heater_port", <nuclearcraft:fission_heater_port_slime_banana>, [
[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>],
[<ore:slimeball>, <nuclearcraft:fission_heater_port_standard_banana>, <ore:slimeball>],
[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>]]);

recipes.addShaped("end_stone_banana_heater", <nuclearcraft:salt_fission_heater_end_stone_banana>, [
[<ore:dustEndstone>, <ore:endstone>, <ore:dustEndstone>],
[<ore:endstone>, <nuclearcraft:salt_fission_heater_standard_banana>, <ore:endstone>],
[<ore:dustEndstone>, <ore:endstone>, <ore:dustEndstone>]]);
recipes.addShaped("end_stone_banana_heater_port", <nuclearcraft:fission_heater_port_end_stone_banana>, [
[<ore:dustEndstone>, <ore:endstone>, <ore:dustEndstone>],
[<ore:endstone>, <nuclearcraft:fission_heater_port_standard_banana>, <ore:endstone>],
[<ore:dustEndstone>, <ore:endstone>, <ore:dustEndstone>]]);

recipes.addShaped("purpur_banana_heater", <nuclearcraft:salt_fission_heater_purpur_banana>, [
[<minecraft:chorus_fruit_popped>, <minecraft:purpur_block>, <minecraft:chorus_fruit_popped>],
[<minecraft:purpur_block>, <nuclearcraft:salt_fission_heater_standard_banana>, <minecraft:purpur_block>],
[<minecraft:chorus_fruit_popped>, <minecraft:purpur_block>, <minecraft:chorus_fruit_popped>]]);
recipes.addShaped("purpur_banana_heater_port", <nuclearcraft:fission_heater_port_purpur_banana>, [
[<minecraft:chorus_fruit_popped>, <minecraft:purpur_block>, <minecraft:chorus_fruit_popped>],
[<minecraft:purpur_block>, <nuclearcraft:fission_heater_port_standard_banana>, <minecraft:purpur_block>],
[<minecraft:chorus_fruit_popped>, <minecraft:purpur_block>, <minecraft:chorus_fruit_popped>]]);

recipes.addShaped("cryotheum_banana_heater", <nuclearcraft:salt_fission_heater_cryotheum_banana>, [
[null, <ore:dustCryotheum>, null],
[<ore:dustCryotheum>, <nuclearcraft:salt_fission_heater_standard_banana>, <ore:dustCryotheum>],
[null, <ore:dustCryotheum>, null]]);
recipes.addShaped("cryotheum_banana_heater_port", <nuclearcraft:fission_heater_port_cryotheum_banana>, [
[null, <ore:dustCryotheum>, null],
[<ore:dustCryotheum>, <nuclearcraft:fission_heater_port_standard_banana>, <ore:dustCryotheum>],
[null, <ore:dustCryotheum>, null]]);

