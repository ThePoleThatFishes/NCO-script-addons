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

// Betavoltaic "RTGs"
recipes.addShaped("generators_bvc", <contenttweaker:bvc>, [
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>],
	[<ore:siliconPDoped>, null, <ore:siliconNDoped>],
	[<ore:plateAdvanced>, <ore:ingotGraphite>, <ore:plateAdvanced>]
	]);

Infuser.addRecipe(<contenttweaker:bvc>, <liquid:tritium>*1000, <nuclearcraft:rtg_tritium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustRuthenium106>, null, null, <nuclearcraft:rtg_ruthenium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustCaesium137>, null, null, <nuclearcraft:rtg_caesium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustPromethium147>, null, null, <nuclearcraft:rtg_promethium>);
Assembler.addRecipe(<contenttweaker:bvc>, <ore:dustEuropium155>, null, null, <nuclearcraft:rtg_europium>);

Radiation.setRadiationLevel(<nuclearcraft:rtg_tritium>, 2.75e-6);
Radiation.setRadiationLevel(<nuclearcraft:rtg_caesium>, 834.0e-6);
Radiation.setRadiationLevel(<nuclearcraft:rtg_europium>, 18.4e-3);
Radiation.setRadiationLevel(<nuclearcraft:rtg_promethium>, 20.1e-3);
Radiation.setRadiationLevel(<nuclearcraft:rtg_ruthenium>, 6.3e-3);


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

// Sodium Battery
AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:charcoal>, <contenttweaker:anode_na>, 2.0, 4.0, 0.0);
AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:ingotManganeseDioxide>, <contenttweaker:cathode_na>, 2.0, 6.0, 0.0);
ChemicalReactor.addRecipe(<liquid:ethanol>*1000, <liquid:sulfuric_acid>*1000, <liquid:ethene>*1000, null);
SaltMixer.addRecipe(<liquid:ethene>*1000, <liquid:oxygen>*500, <liquid:etheneoxide>*1000);
ChemicalReactor.addRecipe(<liquid:etheneoxide>*1000, <liquid:carbon_dioxide>*1000, <liquid:ethenecarbonate>*1000, null);
Infuser.addRecipe(<contenttweaker:casing_battery>, <liquid:ethenecarbonate>*500, <contenttweaker:casing_ec>);
Assembler.addRecipe(<contenttweaker:casing_ec>, <contenttweaker:anode_na>, <contenttweaker:cathode_na>, null, <nuclearcraft:battery_sodium>);

// Potassium Battery
Crystallizer.addRecipe(<liquid:alumina>*432, <contenttweaker:beta_alumina>);
Infuser.addRecipe(<contenttweaker:casing_battery>, <liquid:potassium>*1296, <contenttweaker:casing_k>);
Infuser.addRecipe(<contenttweaker:casing_k>, <liquid:sulfur>*5994, <contenttweaker:casing_k_s>);
Assembler.addRecipe(<contenttweaker:casing_k_s>, <ore:dustMolybdenum>*3, <contenttweaker:beta_alumina>, null, <nuclearcraft:battery_potassium>);

// Generator Crafting Recipes
recipes.addShaped("solid_fuel_generator", <nuclearcraft:solid_fuel_generator>, [
	[<ore:plateBasic>, <ore:dustRedstone>, <ore:plateBasic>],
	[<ore:ingotCopper>, <minecraft:furnace>, <ore:ingotCopper>],
	[<ore:plateBasic>, <ore:dustRedstone>, <ore:plateBasic>]
	]);

recipes.addShaped("fluid_fuel_generator", <nuclearcraft:fluid_fuel_generator>, [
	[<ore:plateBasic>, <ore:dustRedstone>, <ore:plateBasic>],
	[<minecraft:furnace>, <ore:steelFrame>, <minecraft:furnace>],
	[<ore:plateBasic>, <minecraft:bucket>, <ore:plateBasic>]
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
	
recipes.addShaped("fluid_pressurizer", <nuclearcraft:fluid_pressurizer>, [
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>],
	[<minecraft:piston>, <ore:chassis>, <minecraft:piston>],
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>]
	]);

recipes.addShaped("alkaline_fuel_cell", <nuclearcraft:alkaline_fuel_cell>, [
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>],
	[<ore:ingotNickel>, <ore:chassis>, <ore:ingotGold>],
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>]
	]);

recipes.addShaped("pem_fuel_cell", <nuclearcraft:pem_fuel_cell>, [
	[<ore:plateAdvanced>, <minecraft:bucket>, <ore:plateAdvanced>],
	[<ore:ingotIridium>, <ore:chassis>, <ore:ingotPlatinum>],
	[<ore:plateAdvanced>, <ore:ingotPolytetrafluoroethene>, <ore:plateAdvanced>]
	]);
	
recipes.addShaped("molten_carbonate_fuel_cell", <nuclearcraft:molten_carbonate_fuel_cell>, [
	[<ore:plateDU>, <minecraft:bucket>, <ore:plateDU>],
	[<ore:ingotNickelOxide>, <ore:chassis>, <ore:ingotNichrome>],
	[<ore:plateDU>, <forge:bucketfilled>.withTag({FluidName: "carbonate_electrolyte", Amount: 1000}), <ore:plateDU>]
	]);
	
recipes.addShaped("solid_oxide_fuel_cell", <nuclearcraft:solid_oxide_fuel_cell>, [
	[<ore:plateElite>, <minecraft:bucket>, <ore:plateElite>],
	[<ore:dustNiYSZ>, <ore:chassis>, <ore:dustLSM>],
	[<ore:plateElite>, <ore:blockYSZ>, <ore:plateElite>]
	]);
	
// FC Component Recipes
ChemicalReactor.addRecipe(<fluid:naoh>*144, <fluid:carbon_dioxide>*1000, <fluid:sodium_carbonate>*1000, null);
ChemicalReactor.addRecipe(<fluid:koh>*144, <fluid:carbon_dioxide>*1000, <fluid:potassium_carbonate>*1000, null);
SaltMixer.addRecipe(<fluid:sodium_carbonate>*500, <fluid:potassium_carbonate>*500, <fluid:carbonate_electrolyte>*1000);

Infuser.addRecipe(<ore:ingotYttrium>|<ore:dustYttrium>, <fluid:oxygen>*500, <ore:dustYttria>);
AlloyFurnace.addRecipe(<ore:dustYttria>, <ore:dustZirconia>*11, <ore:dustYSZ>*12, 4.0, 2.0, 0.0);
Assembler.addRecipe(<ore:dustLanthanum>, <ore:dustStrontium>, <ore:dustManganese>, null, <ore:dustLSM>*3);
AlloyFurnace.addRecipe(<ore:dustNickel>|<ore:ingotNickel>, <ore:dustYSZ>, <ore:dustNiYSZ>, 3.0, 1.0, 0.0);
Pressurizer.addRecipe(<ore:dustYSZ>*9, <ore:blockYSZ>);


