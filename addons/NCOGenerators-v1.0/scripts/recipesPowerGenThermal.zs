#modloaded thermalfoundation modtweaker

import scripts.nc_script_addons.NCOGenerators.recipesPowerGenNCO;

static FuelListThermal as recipesPowerGenNCO.fuel[] = [
recipesPowerGenNCO.fuel("blazing_pyrotheum", 500000.0, null, <fluid:pyrotheum>*100, false, false, true, false, false, false, false, false, <fluid:sulfur>, null, 0.0),
recipesPowerGenNCO.fuel("bitumen", 128000.0, <ore:clathrateOil>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
recipesPowerGenNCO.fuel("charcoal_block", 640000.0, <ore:blockCharcoal>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*9000, 0.0),
recipesPowerGenNCO.fuel("coke", 160000.0, <ore:fuelCoke>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 432.1e-9),
recipesPowerGenNCO.fuel("coke_block", 1600000.0, <ore:blockFuelCoke>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*9000, 3.4e-6),
recipesPowerGenNCO.fuel("tar", 32000.0, <thermalfoundation:material:833>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
recipesPowerGenNCO.fuel("rosin", 32000.0, <thermalfoundation:material:832>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
recipesPowerGenNCO.fuel("crude_oil", 100000.0, null, <fluid:crude_oil>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
recipesPowerGenNCO.fuel("pyrotheum_dust", 960000.0, <ore:dustPyrotheum>, null, true, false, false, false, false, false, false, false, <fluid:sulfur_trioxide>, null, 0.0),
recipesPowerGenNCO.fuel("refined_fuel", 375000.0, null, <fluid:refined_fuel>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*800, 0.0),
recipesPowerGenNCO.fuel("naphtha", 250000.0, null, <fluid:refined_oil>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*500, 0.0),
recipesPowerGenNCO.fuel("seed_oil", 20000.0, null, <fluid:seed_oil>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1250, 0.0),
recipesPowerGenNCO.fuel("grassoline", 200000.0, null, <fluid:refined_biofuel>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1500, 0.0),
recipesPowerGenNCO.fuel("biocrude", 75000.0, null, <fluid:biocrude>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1750, 0.0),
recipesPowerGenNCO.fuel("creosote_oil", 10000.0, null, <fluid:creosote>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
recipesPowerGenNCO.fuel("tree_oil", 100000.0, null, <fluid:tree_oil>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*750, 0.0),
recipesPowerGenNCO.fuel("liquifacted_coal", 100000.0, null, <fluid:coal>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*100, 0.0)
];

recipesPowerGenNCO.createRecipes(FuelListThermal);