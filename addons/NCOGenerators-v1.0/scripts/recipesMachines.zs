import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Radiation;
import mods.nuclearcraft.FissionIrradiator;
import mods.nuclearcraft.Extractor;
import mods.nuclearcraft.Pressurizer;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.MultiblockElectrolyzer;


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
recipes.addShaped("generators_battery_casing", <contenttweaker:casing_battery>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>],
	[<ore:ingotGraphite>, <ore:steelFrame>, <ore:ingotGraphite>],
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
	]);


// Potassium Battery
Crystallizer.addRecipe(<liquid:alumina>*432, <contenttweaker:beta_alumina>);
Infuser.addRecipe(<contenttweaker:casing_battery>, <liquid:potassium>*1296, <contenttweaker:casing_k>);
Infuser.addRecipe(<contenttweaker:casing_k>, <liquid:sulfur>*5994, <contenttweaker:casing_k_s>);
Assembler.addRecipe(<contenttweaker:casing_k_s>, <ore:dustMolybdenum>*3, <contenttweaker:beta_alumina>, null, <nuclearcraft:battery_potassium>);

// Generator Crafting Recipes
recipes.addShaped("furnace_generator", <nuclearcraft:furnace_generator>, [
	[<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>],
	[<ore:ingotCopper>, <minecraft:furnace>, <ore:ingotCopper>],
	[<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>]
	]);
	
recipes.addShaped("furnace_steam_generator", <nuclearcraft:furnace_steam_generator>, [
	[<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>],
	[<ore:servo>, <nuclearcraft:furnace_generator>, <ore:servo>],
	[<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>]
	]);

recipes.addShaped("combustion_generator", <nuclearcraft:combustion_generator>, [
	[<ore:plateBasic>, <ore:dustRedstone>, <ore:plateBasic>],
	[<minecraft:furnace>, <ore:steelFrame>, <minecraft:furnace>],
	[<ore:plateBasic>, <minecraft:bucket>, <ore:plateBasic>]
	]);
	
recipes.addShaped("combustion_steam_generator", <nuclearcraft:combustion_steam_generator>, [
	[<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>],
	[<ore:servo>, <nuclearcraft:combustion_generator>, <ore:servo>],
	[<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>]
	]);

recipes.addShaped("thermoelectric_generator", <nuclearcraft:thermoelectric_generator>, [
	[<ore:plateBasic>, <ore:ingotIron>, <ore:plateBasic>],
	[<minecraft:nether_brick>, <ore:steelFrame>, <minecraft:nether_brick>],
	[<ore:plateBasic>, <ore:ingotCopper>, <ore:plateBasic>]
	]);

recipes.addShaped("thermal_steam_generator", <nuclearcraft:thermal_steam_generator>, [
	[<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>],
	[<ore:servo>, <nuclearcraft:thermoelectric_generator>, <ore:servo>],
	[<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>]
	]);
	
recipes.addShaped("turbine_machine", <nuclearcraft:turbine_machine>, [
	[<ore:plateAdvanced>, <ore:ingotHSLASteel>, <ore:plateAdvanced>],
	[<nuclearcraft:turbine_dynamo_coil:4>, <ore:chassis>, <nuclearcraft:turbine_dynamo_coil:4>],
	[<ore:plateAdvanced>, <ore:ingotHSLASteel>, <ore:plateAdvanced>]
	]);

recipes.addShaped("heat_exchanger_machine", <nuclearcraft:heat_exchanger_machine>, [
	[<ore:plateAdvanced>, <ore:ingotCopper>, <ore:plateAdvanced>],
	[<minecraft:bucket>, <nuclearcraft:heat_exchanger_tube_copper>, <minecraft:bucket>],
	[<ore:plateAdvanced>, <ore:ingotCopper>, <ore:plateAdvanced>]
	]);

recipes.addShaped("condenser_machine", <nuclearcraft:condenser_machine>, [
	[<ore:plateAdvanced>, <ore:blockIce>, <ore:plateAdvanced>],
	[<minecraft:bucket>, <nuclearcraft:heat_exchanger_tube_copper>, <minecraft:bucket>],
	[<ore:plateAdvanced>, <ore:blockIce>, <ore:plateAdvanced>]
	]);

if !(loadedMods has "moarreactorfunctionality") {
	recipes.addShaped("fluid_pressurizer", <nuclearcraft:fluid_pressurizer>, [
		[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>],
		[<minecraft:piston>, <ore:chassis>, <minecraft:piston>],
		[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>]
		]);
}

recipes.addShaped("alkaline_fuel_cell", <nuclearcraft:alkaline_fuel_cell>, [
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>],
	[<ore:ingotNickel>, <ore:chassis>, <ore:ingotGold>],
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>]
	]);

	
// AFC Component Recipes
ChemicalReactor.addRecipe(<fluid:naoh>*666, <fluid:carbon_dioxide>*500, <fluid:sodium_carbonate>*500, <fluid:water>*500);
ChemicalReactor.addRecipe(<fluid:koh>*666, <fluid:carbon_dioxide>*500, <fluid:potassium_carbonate>*500, <fluid:water>*500);
SaltMixer.addRecipe(<fluid:sodium_carbonate>*500, <fluid:potassium_carbonate>*500, <fluid:carbonate_electrolyte>*1000);

// Test Multiblock Fuel Cell Recipes
MultiblockElectrolyzer.addRecipe(null, null, <fluid:hydrogen>*500, <fluid:oxygen>*250, null, null, null, null, <fluid:water>*500, null, null, null, 1.0, -1.0, 0.0, "hydroxide_solution");