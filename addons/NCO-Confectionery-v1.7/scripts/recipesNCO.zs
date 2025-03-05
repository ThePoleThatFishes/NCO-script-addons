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

// SFR Coolant Loops
FissionHeating.addRecipe(<fluid:eggnog>*3, <fluid:hot_eggnog>, 30);
FissionHeating.addRecipe(<fluid:maple_syrup>*4, <fluid:hot_maple_syrup>, 400);
Turbine.addRecipe(<fluid:hot_eggnog>, <fluid:eggnog>*3, 33, 3.00, 1.00);
Turbine.addRecipe(<fluid:hot_maple_syrup>, <fluid:maple_syrup>*4, 480, 4.00, 1.00);