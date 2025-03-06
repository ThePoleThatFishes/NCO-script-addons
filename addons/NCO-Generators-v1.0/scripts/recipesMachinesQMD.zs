#modloaded qmd

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
import mods.qmd.ore_leacher;
import mods.nuclearcraft.Separator;

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

// Sodium Battery
AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:charcoal>, <contenttweaker:anode_na>, 2.0, 4.0, 0.0);
AlloyFurnace.addRecipe(<ore:ingotSodium>, <ore:ingotManganeseDioxide>, <contenttweaker:cathode_na>, 2.0, 6.0, 0.0);
ChemicalReactor.addRecipe(<liquid:ethanol>*1000, <liquid:sulfuric_acid>*1000, <liquid:ethene>*1000, null);
SaltMixer.addRecipe(<liquid:ethene>*1000, <liquid:oxygen>*500, <liquid:etheneoxide>*1000);
ChemicalReactor.addRecipe(<liquid:etheneoxide>*1000, <liquid:carbon_dioxide>*1000, <liquid:ethenecarbonate>*1000, null);
Infuser.addRecipe(<contenttweaker:casing_battery>, <liquid:ethenecarbonate>*500, <contenttweaker:casing_ec>);
Assembler.addRecipe(<contenttweaker:casing_ec>, <contenttweaker:anode_na>, <contenttweaker:cathode_na>, null, <nuclearcraft:battery_sodium>);

// QMD Materials Fuel Cells
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
	
Infuser.addRecipe(<ore:ingotYttrium>|<ore:dustYttrium>, <fluid:oxygen>*500, <ore:dustYttria>);
AlloyFurnace.addRecipe(<ore:dustYttria>, <ore:dustZirconia>*11, <ore:dustYSZ>*12, 4.0, 2.0, 0.0);
Assembler.addRecipe(<ore:dustLanthanum>, <ore:dustStrontium>, <ore:dustManganese>, null, <ore:dustLSM>*3);
AlloyFurnace.addRecipe(<ore:dustNickel>|<ore:ingotNickel>, <ore:dustYSZ>, <ore:dustNiYSZ>, 3.0, 1.0, 0.0);
Pressurizer.addRecipe(<ore:dustYSZ>*9, <ore:blockYSZ>);

ore_leacher.removeRecipeWithInput(<ore:oreThorium>, <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16);
ore_leacher.addRecipe(<ore:oreThorium>, <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16, <ore:dustThorium>*3, <ore:dustTransitionMetals>*2, <ore:dustRareEarths>*2);
Separator.addRecipe(<ore:dustTransitionMetals>*2, <ore:dustHafnium>, <ore:dustTitanium>);
Separator.addRecipe(<ore:dustRareEarths>*2, <ore:dustLanthanum>, <ore:dustCerium>);