#modloaded enderio

import scripts.nc_script_addons.NCOGenerators.recipesPowerGenNCO;

static FuelListEIO as recipesPowerGenNCO.fuel[] = [
recipesPowerGenNCO.fuel("hootch", 90000.0, null, <fluid:hootch>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("rocket_fuel", 280000.0, null, <fluid:rocket_fuel>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("fire_water", 300000.0, null, <fluid:fire_water>*100, false, true, false, false, false, false, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0)
];

recipesPowerGenNCO.createRecipes(FuelListEIO);