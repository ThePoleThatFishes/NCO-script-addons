#priority 2

import mods.nuclearcraft.BasicRecipeHandler;
import mods.nuclearcraft.Turbine;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.util.Math;


zenClass fuel {

	var name as string;
	var powerDensity as double;
	var fuelStackItem as IIngredient;
	var fuelStackFluid as IIngredient;
	var solidFuel as bool;
	var fluidFuel as bool;
	var afcFuel as bool;
	var pemfcFuel as bool;
	var mcfcFuel as bool;
	var sofcFuel as bool;
	var exhaustCombustion as IIngredient;
	var exhaustFuelCell as IIngredient;
	var spice as double;
	
	zenConstructor(name as string, powerDensity as double, fuelStackItem as IIngredient, fuelStackFluid as IIngredient, solidFuel as bool, fluidFuel as bool, afcFuel as bool, pemfcFuel as bool, mcfcFuel as bool, sofcFuel as bool, exhaustCombustion as IIngredient, exhaustFuelCell as IIngredient, spice as double) {
		this.name = name;
		this.powerDensity = powerDensity;
		this.fuelStackItem = fuelStackItem;
		this.fuelStackFluid = fuelStackFluid;
		this.solidFuel = solidFuel;
		this.fluidFuel = fluidFuel;
		this.afcFuel = afcFuel;
		this.pemfcFuel = pemfcFuel;
		this.mcfcFuel = mcfcFuel;
		this.sofcFuel = sofcFuel;
		this.exhaustCombustion = exhaustCombustion;
		this.exhaustFuelCell = exhaustFuelCell;
		this.spice = spice;
	}
}

					
					
static FuelList as [fuel] =	[
			
fuel("acetylene", 75000.0, null, <fluid:ethyne>*100, false, true, false, false, false, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("ammonia", 37500.0, null, <fluid:ammonia>*100, false, true, false, false, false, true, <fluid:nitrogen>, <fluid:nitrogen>, 0.0),
fuel("benzene", 225000.0, null, <fluid:benzene>*100, false, true, false, false, false, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("blaze_rod", 96000.0, <minecraft:blaze_rod>, null, true, false, false, false, false, false, <fluid:sulfur_trioxide>, null, 0.0),
fuel("charcoal", 64000.0, <ore:charcoal>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("coal", 64000.0, <ore:coal>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 431.0e-9),
fuel("coal_block", 640000.0, <ore:blockCoal>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 3.8e-6),
fuel("ethanol", 50000.0, null, <fluid:ethanol>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("ethylene", 75000.0, null, <fluid:ethene>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("graphite", 64000.0, <ore:ingotGraphite>, null, true, false, false, false, true, true, <fluid:carbon_dioxide>, <fluid:carbon_dioxide>, 0.0),
fuel("graphite_block", 640000.0, <ore:blockGraphite>, null, true, false, false, false, true, true, <fluid:carbon_dioxide>, <fluid:carbon_dioxide>, 0.0),
fuel("hydrogen", 25000.0, null, <fluid:hydrogen>*100, false, true, true, true, true, true, <fluid:water>, <fluid:water>, 0.0),
fuel("lava", 30000.0, null, <fluid:lava>*100, false, true, false, false, false, false, <fluid:sulfur_trioxide>, null, 0.0),
fuel("methane", 50000.0, null, <fluid:methane>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("methanol", 75000.0, null, <fluid:methanol>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("phenol", 250000.0, null, <fluid:phenol>*100, false, true, false, false, false, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_door", 12000.0, <ore:doorWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_fence", 12000.0, <ore:fenceWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_gate", 12000.0, <ore:fenceGateWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_log", 12000.0, <ore:logWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_planks", 12000.0, <ore:plankWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_slabs", 6000.0, <ore:slabWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_stairs", 12000.0, <ore:stairWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0),
fuel("wooden_sticks", 4000.0, <ore:stickWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0)
];			

function createRecipes (fuel_list as fuel[]) {
	var combustible as fuel;
	var solidFuelGenerator = BasicRecipeHandler.get("solid_fuel_generator");
	var fluidFuelGenerator = BasicRecipeHandler.get("fluid_fuel_generator");
	
	var alkalineFuelCell = BasicRecipeHandler.get("alkaline_fuel_cell");
	var pemFuelCell = BasicRecipeHandler.get("pem_fuel_cell");
	var moltenCarbonateFuelCell = BasicRecipeHandler.get("molten_carbonate_fuel_cell");
	var solidOxideFuelCell = BasicRecipeHandler.get("solid_oxide_fuel_cell");
	
	for combustible in fuel_list {
		if (combustible.solidFuel) {
			solidFuelGenerator.addRecipe([combustible.fuelStackItem, combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), combustible.powerDensity*0.25/20.0, 1.0, combustible.spice]);
		}
		if (combustible.fluidFuel) {
			fluidFuelGenerator.addRecipe([combustible.fuelStackFluid, combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), combustible.powerDensity*0.40/40.0, 1.0, combustible.spice]);
		}
		if (combustible.afcFuel) {
			alkalineFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:potassium_hydroxide_solution>, null, combustible.exhaustFuelCell*100, combustible.powerDensity*0.50/50.0, 1.0, 0.0]);
			alkalineFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:sodium_hydroxide_solution>, null, combustible.exhaustFuelCell*100, combustible.powerDensity*0.50/50.0, 0.9, 0.0]);
		}
		if (combustible.pemfcFuel) {
			pemFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.08/32.0), null, combustible.exhaustFuelCell*100, <fluid:preheated_water>*Math.floor(combustible.powerDensity*0.08/32.0), combustible.powerDensity*0.50/100.0, 1.0, 0.0]);
		}
		if (combustible.mcfcFuel) {
			if (combustible.solidFuel) {
			moltenCarbonateFuelCell.addRecipe([combustible.fuelStackItem, null, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.20/8.0), null, combustible.exhaustFuelCell*100, <fluid:low_pressure_steam>*(combustible.powerDensity*0.20/4.0), combustible.powerDensity*0.60/150.0, 1.0, 0.0]);
			}
			if (combustible.fluidFuel) {
			moltenCarbonateFuelCell.addRecipe([null, combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.20/8.0), null, combustible.exhaustFuelCell*100, <fluid:low_pressure_steam>*(combustible.powerDensity*0.20/4.0), combustible.powerDensity*0.60/150.0, 1.0, 0.0]);
			}
		}
		if (combustible.sofcFuel) {
			if (combustible.solidFuel) {
			solidOxideFuelCell.addRecipe([combustible.fuelStackItem, null, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.40/64.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.40/16.0), combustible.powerDensity*0.70/200.0, 1.0, 0.0]);
			}
			if (combustible.fluidFuel) {
			solidOxideFuelCell.addRecipe([null, combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.40/64.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.40/16.0), combustible.powerDensity*0.70/200.0, 1.0, 0.0]);
			}
		}
	}
}

createRecipes(FuelList);

var turbineMachine = BasicRecipeHandler.get("turbine_machine");
var heatExchangerMachine = BasicRecipeHandler.get("heat_exchanger_machine");
var fluidPressurizer = BasicRecipeHandler.get("fluid_pressurizer");

turbineMachine.addRecipe([<fluid:flue_gas>*10, <fluid:cold_flue_gas>*20, 1.0, 16.0, 0.0]);
turbineMachine.addRecipe([<fluid:low_pressure_steam>*10, <fluid:low_quality_steam>*20, 1.0, 32.0, 0.0]);
heatExchangerMachine.addRecipe([<fluid:flue_gas>*20, <fluid:water>*5, <fluid:cold_flue_gas>*20, <fluid:low_pressure_steam>*10]);
fluidPressurizer.addRecipe([<fluid:compressed_air>*50, <fluid:super_compressed_air>*5, 1.0, 5.0, 0.0]);
Turbine.addRecipe(<fluid:flue_gas>, <fluid:cold_flue_gas>*2, 2.0, 2.0, 1.0);
Turbine.addRecipe(<fluid:super_compressed_air>, <fluid:compressed_air>*10, 45.0, 10.0, 8.0);

<nuclearcraft:solid_fuel_generator>.addTooltip(format.aqua("Power Production: 20 RF/t\nValid Fuels: Furnace Fuels\nExtra: 2 mB/t Flue Gas"));
<nuclearcraft:fluid_fuel_generator>.addTooltip(format.aqua("Power Production: 40 RF/t\nValid Fuels: Hot/Combustible Fluids\nExtra: 2.5 mB/t Flue Gas"));
<nuclearcraft:alkaline_fuel_cell>.addTooltip(format.aqua("Power Production: 50 RF/t\nValid Fuels: Hydrogen\nValid Electrolytes: NaOH, KOH"));
<nuclearcraft:pem_fuel_cell>.addTooltip(format.aqua("Power Production: 100 RF/t\nValid Fuels: Hydrogen\nExtra: 0.5 mB/t Preheated Water"));
<nuclearcraft:molten_carbonate_fuel_cell>.addTooltip(format.aqua("Power Production: 150 RF/t\nValid Fuels: Hydrogen, Carbon-based solids and fluids.\nExtra: 12.5 mB/t of LPS."));
<nuclearcraft:solid_oxide_fuel_cell>.addTooltip(format.aqua("Power Production: 200 RF/t\nValid Fuels: Hydrogen, most furnace fuels and combustible fluids.\nExtra: 7 1/7 mB/t of HPS."));
<nuclearcraft:turbine_machine>.addTooltip(format.aqua("Produces energy from flue gases and LPS, at 80% efficiency compared to a multiblock turbine."));
<nuclearcraft:heat_exchanger_machine>.addTooltip(format.aqua("Transfers heat between a cold and a hot fluid."));
<nuclearcraft:fluid_pressurizer>.addTooltip(format.aqua("Compresses various fluids."));

