#modloaded immersiveengineering

import scripts.nc_script_addons.NCOGenerators.recipesPowerGenNCO;

static FuelListIE as recipesPowerGenNCO.fuel[] = [
recipesPowerGenNCO.fuel("ie_ethanol", 50000.0, null, <fluid:ethanol>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("biodiesel", 187500.0, null, <fluid:biodiesel>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
recipesPowerGenNCO.fuel("plant_oil", 20000.0, null, <fluid:plantoil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0)
];

recipesPowerGenNCO.createRecipes(FuelListIE);