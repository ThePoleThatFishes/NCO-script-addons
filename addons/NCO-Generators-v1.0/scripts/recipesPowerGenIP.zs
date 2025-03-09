#modloaded immersivepetroleum

import scripts.nc_script_addons.NCOGenerators.recipesPowerGenNCO;

static FuelListIP as recipesPowerGenNCO.fuel[] = [
recipesPowerGenNCO.fuel("ip_oil", 100000.0, null, <fluid:oil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("diesel", 187500.0, null, <fluid:diesel>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("gasoline", 240000.0, null, <fluid:gasoline>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0)
];

recipesPowerGenNCO.createRecipes(FuelListIP);