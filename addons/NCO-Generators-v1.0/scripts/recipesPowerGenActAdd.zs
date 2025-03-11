#modloaded actuallyadditions

import scripts.nc_script_addons.NCOGenerators.recipesPowerGenNCO;

static FuelListActAdd as recipesPowerGenNCO.fuel[] = [
recipesPowerGenNCO.fuel("canola_oil", 20000.0, null, <fluid:canolaoil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("refined_canola_oil", 48000.0, null, <fluid:refinedcanolaoil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("crystallized_oil", 140000.0, null, <fluid:crystaloil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("empowered_oil", 240000.0, null, <fluid:empoweredoil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0)
];

recipesPowerGenNCO.createRecipes(FuelListActAdd);