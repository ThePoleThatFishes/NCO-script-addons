#priority 2

import mods.nuclearcraft.BasicRecipeHandler;
import mods.nuclearcraft.Turbine;
import mods.nuclearcraft.HeatExchanger;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.util.Math;


zenClass fuel {

	var name as string;
	var powerDensity as double;
	var fuelStackItem as IIngredient;
	var fuelStackFluid as IIngredient;
	var furnaceFuel as bool;
	var combustionFuel as bool;
	var thermalFuel as bool;
	var afcFuel as bool;
	var pemfcFuel as bool;
	var mcfcFuel as bool;
	var pcfcFuel as bool;
	var sofcFuel as bool;
	var exhaustCombustion as IIngredient;
	var exhaustFuelCell as IIngredient;
	var spice as double;
	
	zenConstructor(name as string, powerDensity as double, fuelStackItem as IIngredient, fuelStackFluid as IIngredient, furnaceFuel as bool, combustionFuel as bool, thermalFuel as bool, afcFuel as bool, pemfcFuel as bool, mcfcFuel as bool, pcfcFuel as bool, sofcFuel as bool, exhaustCombustion as IIngredient, exhaustFuelCell as IIngredient, spice as double) {
		this.name = name;
		this.powerDensity = powerDensity;
		this.fuelStackItem = fuelStackItem;
		this.fuelStackFluid = fuelStackFluid;
		this.furnaceFuel = furnaceFuel;
		this.combustionFuel = combustionFuel;
		this.thermalFuel = thermalFuel;
		this.afcFuel = afcFuel;
		this.pemfcFuel = pemfcFuel;
		this.mcfcFuel = mcfcFuel;
		this.pcfcFuel = pcfcFuel;
		this.sofcFuel = sofcFuel;
		this.exhaustCombustion = exhaustCombustion;
		this.exhaustFuelCell = exhaustFuelCell;
		this.spice = spice;
	}
}

					
					
static FuelList as [fuel] =	[
			
fuel("acetylene", 75000.0, null, <fluid:ethyne>*100, false, true, false, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*200, 0.0),
fuel("ammonia", 37500.0, null, <fluid:ammonia>*100, false, true, false, false, false, false, true, true, <fluid:nitrogen>, <fluid:nitrogen>*100, 0.0),
fuel("benzene", 225000.0, null, <fluid:benzene>*100, false, true, false, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*600, 0.0),
fuel("blaze_rod", 96000.0, <minecraft:blaze_rod>, null, true, false, false, false, false, false, false, false, <fluid:sulfur_trioxide>*500, null, 0.0),
fuel("carbon_monoxide", 40000.0, null, <fluid:carbon_monoxide>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*100, 0.0),
fuel("charcoal", 64000.0, <ore:charcoal>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
fuel("coal", 64000.0, <ore:coal>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 431.0e-9),
fuel("coal_block", 640000.0, <ore:blockCoal>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*9000, 3.8e-6),
fuel("ethanol", 50000.0, null, <fluid:ethanol>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*200, 0.0),
fuel("ethylene", 75000.0, null, <fluid:ethene>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*200, 0.0),
fuel("graphite", 64000.0, <ore:ingotGraphite>, null, true, false, false, false, false, true, true, true, <fluid:carbon_dioxide>, <fluid:carbon_dioxide>*1000, 0.0),
fuel("graphite_block", 640000.0, <ore:blockGraphite>, null, true, false, false, false, false, true, true, true, <fluid:carbon_dioxide>, <fluid:carbon_dioxide>*9000, 0.0),
fuel("hydrogen", 25000.0, null, <fluid:hydrogen>*100, false, true, false, true, true, true, true, true, <fluid:condensate_water>, <fluid:condensate_water>*100, 0.0),
fuel("lava", 37500.0, null, <fluid:lava>*250, false, false, true, false, false, false, false, false, <fluid:obsidian>*72, null, 0.0),
fuel("methane", 50000.0, null, <fluid:methane>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*100, 0.0),
fuel("methanol", 75000.0, null, <fluid:methanol>*100, false, true, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*100, 0.0),
fuel("phenol", 250000.0, null, <fluid:phenol>*100, false, true, false, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*600, 0.0),
fuel("wooden_door", 12000.0, <ore:doorWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*500, 0.0),
fuel("wooden_fence", 12000.0, <ore:fenceWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*416, 0.0),
fuel("wooden_gate", 12000.0, <ore:fenceGateWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
fuel("wooden_log", 12000.0, <ore:logWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*1000, 0.0),
fuel("wooden_planks", 12000.0, <ore:plankWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*250, 0.0),
fuel("wooden_slabs", 6000.0, <ore:slabWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*125, 0.0),
fuel("wooden_stairs", 12000.0, <ore:stairWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*187, 0.0),
fuel("wooden_sticks", 4000.0, <ore:stickWood>, null, true, false, false, false, false, true, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>*125, 0.0)
];			

function createRecipes (fuel_list as fuel[]) {
	var combustible as fuel;
	var furnaceGenerator = BasicRecipeHandler.get("furnace_generator");
	var furnaceSteamGenerator = BasicRecipeHandler.get("furnace_steam_generator");
	var combustionGenerator = BasicRecipeHandler.get("combustion_generator");
	var combustionSteamGenerator = BasicRecipeHandler.get("combustion_steam_generator");
	var thermoelectricGenerator = BasicRecipeHandler.get("thermoelectric_generator");
	var thermalSteamGenerator = BasicRecipeHandler.get("thermal_steam_generator");
	
	var alkalineFuelCell = BasicRecipeHandler.get("alkaline_fuel_cell");
	var pemFuelCell = BasicRecipeHandler.get("pem_fuel_cell");
	var moltenCarbonateFuelCell = BasicRecipeHandler.get("molten_carbonate_fuel_cell");
	var protonConductingFuelCell = BasicRecipeHandler.get("proton_conducting_fuel_cell");
	var solidOxideFuelCell = BasicRecipeHandler.get("solid_oxide_fuel_cell");
	
	for combustible in fuel_list {
		if (combustible.furnaceFuel) {
			furnaceGenerator.addRecipe([combustible.fuelStackItem, combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), combustible.powerDensity*0.25/20.0, 1.0, combustible.spice]);
			furnaceSteamGenerator.addRecipe([combustible.fuelStackItem, <fluid:water> * Math.floor(combustible.powerDensity*0.40/64.0), combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), <fluid:high_pressure_steam> * Math.floor(combustible.powerDensity*0.40/16.0), combustible.powerDensity*0.40/20.0, 1.0, combustible.spice]);
		}
		if (combustible.combustionFuel) {
			combustionGenerator.addRecipe([combustible.fuelStackFluid, combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), combustible.powerDensity*0.40/40.0, 1.0, combustible.spice]);
			combustionSteamGenerator.addRecipe([combustible.fuelStackFluid, <fluid:water> * Math.floor(combustible.powerDensity*0.60/64.0), combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), <fluid:high_pressure_steam> * Math.floor(combustible.powerDensity*0.60/16.0), combustible.powerDensity*0.60/20.0, 1.0, combustible.spice]);
		}
		if (combustible.thermalFuel) {
			thermoelectricGenerator.addRecipe([combustible.fuelStackFluid, combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), combustible.powerDensity*0.40/40.0, 1.0, combustible.spice]);
			thermalSteamGenerator.addRecipe([combustible.fuelStackFluid, <fluid:water> * Math.floor(combustible.powerDensity*0.60/64.0), combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), <fluid:high_pressure_steam> * Math.floor(combustible.powerDensity*0.60/16.0), combustible.powerDensity*0.60/20.0, 1.0, combustible.spice]);
		}
		if (combustible.afcFuel) {
			alkalineFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*50, <fluid:potassium_hydroxide_solution>, null, combustible.exhaustFuelCell*100, combustible.powerDensity*0.50/50.0, 1.0, 0.0]);
			alkalineFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*50, <fluid:sodium_hydroxide_solution>, null, combustible.exhaustFuelCell*100, combustible.powerDensity*0.50/50.0, 0.9, 0.0]);
		}
		if (combustible.pemfcFuel) {
			pemFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*50, <fluid:benzene>*Math.floor(combustible.powerDensity*0.10/4.0), null, combustible.exhaustFuelCell*100, <fluid:gaseous_benzene>*Math.floor(combustible.powerDensity*0.10/2.0), combustible.powerDensity*0.60/60.0, 1.0, 0.0]);
		}
		if (combustible.mcfcFuel) {
			if (combustible.furnaceFuel) {
			moltenCarbonateFuelCell.addRecipe([combustible.fuelStackItem, null, <fluid:oxygen>*50, <fluid:water>*Math.floor(combustible.powerDensity*0.20/64.0), null, combustible.exhaustFuelCell, <fluid:high_pressure_steam>*(combustible.powerDensity*0.20/16.0), combustible.powerDensity*0.70/140.0, 1.0, 0.0]);
			}
			if (combustible.combustionFuel) {
			moltenCarbonateFuelCell.addRecipe([null, combustible.fuelStackFluid, <fluid:oxygen>*50, <fluid:water>*Math.floor(combustible.powerDensity*0.20/64.0), null, combustible.exhaustFuelCell, <fluid:high_pressure_steam>*(combustible.powerDensity*0.20/16.0), combustible.powerDensity*0.70/140.0, 1.0, 0.0]);
			}
		}
		if (combustible.pcfcFuel) {
			if (combustible.furnaceFuel) {
			protonConductingFuelCell.addRecipe([combustible.fuelStackItem, null, <fluid:oxygen>*50, <fluid:water>*Math.floor(combustible.powerDensity*0.80/192.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.80/48.0), combustible.powerDensity*0.80/240.0, 1.0, 0.0]);
			}
			if (combustible.combustionFuel) {
			protonConductingFuelCell.addRecipe([null, combustible.fuelStackFluid, <fluid:oxygen>*50, <fluid:water>*Math.floor(combustible.powerDensity*0.80/192.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.80/48.0), combustible.powerDensity*0.80/240.0, 1.0, 0.0]);
			}
		}
		if (combustible.sofcFuel) {
			if (combustible.furnaceFuel) {
			solidOxideFuelCell.addRecipe([combustible.fuelStackItem, null, <fluid:oxygen>*50, <fluid:water>*Math.floor(combustible.powerDensity*0.40/64.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.40/16.0), combustible.powerDensity/400.0, 1.0, 0.0]);
			}
			if (combustible.combustionFuel) {
			solidOxideFuelCell.addRecipe([null, combustible.fuelStackFluid, <fluid:oxygen>*50, <fluid:water>*Math.floor(combustible.powerDensity*0.40/64.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.40/16.0), combustible.powerDensity/400.0, 1.0, 0.0]);
			}
		}
	}
}

createRecipes(FuelList);

var turbineMachine = BasicRecipeHandler.get("turbine_machine");
var heatExchangerMachine = BasicRecipeHandler.get("heat_exchanger_machine");
var condenserMachine = BasicRecipeHandler.get("condenser_machine");
var fluidPressurizer = BasicRecipeHandler.get("fluid_pressurizer");

turbineMachine.addRecipe([<fluid:flue_gas>*10, <fluid:cold_flue_gas>*20, 1.0, 18.0, 0.0]);
turbineMachine.addRecipe([<fluid:high_pressure_steam>*5, <fluid:exhaust_steam>*20, 1.0, 72.0, 0.0]);
turbineMachine.addRecipe([<fluid:gaseous_benzene>*10, <fluid:exhaust_benzene>*20, 1.0, 18.0, 0.0]);
heatExchangerMachine.addRecipe([<fluid:flue_gas>*8, <fluid:water>, <fluid:cold_flue_gas>*16, <fluid:high_pressure_steam>*4]);
condenserMachine.addRecipe([<fluid:exhaust_steam>*80, <fluid:condensate_water>*5, 1.0, 1.0, 0.0]);
condenserMachine.addRecipe([<fluid:condensate_water>*5, <fluid:water>*5, 1.0, 1.0, 0.0]);
condenserMachine.addRecipe([<fluid:exhaust_benzene>*40, <fluid:benzene>*10, 1.0, 1.0, 0.0]);
HeatExchanger.addRecipe(<fluid:flue_gas>, <fluid:cold_flue_gas>*2, 2.0, 600, 300);

fluidPressurizer.addRecipe([<fluid:compressed_air>*50, <fluid:super_compressed_air>*5, 1.0, 5.0, 0.0]);
Turbine.addRecipe(<fluid:flue_gas>, <fluid:cold_flue_gas>*2, 2.0, 2.0, 1.0);
Turbine.addRecipe(<fluid:super_compressed_air>, <fluid:compressed_air>*10, 45.0, 10.0, 8.0);

<nuclearcraft:furnace_generator>.addTooltip(format.aqua("Power Production: 20 RF/t \nValid Fuels: Furnace Fuels \nExtra: 2 mB/t Flue Gas"));
<nuclearcraft:combustion_generator>.addTooltip(format.aqua("Power Production: 40 RF/t \nValid Fuels: Combustible Fluids \nExtra: 2.5 mB/t Flue Gas"));
<nuclearcraft:thermoelectric_generator>.addTooltip(format.aqua("Power Production: 40 RF/t \nValid Fuels: Hot Fluids \nExtra: 2.5 mB/t Flue Gas"));
<nuclearcraft:furnace_steam_generator>.addTooltip(format.aqua("HPS Production: 1.25 mB/t \nValid Fuels: Furnace Fuels \nExtra: 2 mB/t Flue Gas"));
<nuclearcraft:combustion_steam_generator>.addTooltip(format.aqua("HPS Production: 2.5 mB/t \nValid Fuels: Combustible Fluids \nExtra: 2.5 mB/t Flue Gas"));
<nuclearcraft:thermal_steam_generator>.addTooltip(format.aqua("HPS Production: 2.5 mB/t \nValid Fuels: Hot Fluids \nExtra: 2.5 mB/t Flue Gas"));
<nuclearcraft:alkaline_fuel_cell>.addTooltip(format.aqua("Power Production: 50 RF/t \nValid Fuels: Hydrogen \nValid Electrolytes: NaOH, KOH"));
<nuclearcraft:pem_fuel_cell>.addTooltip(format.aqua("Power Production: 60 RF/t \nValid Fuels: Hydrogen \nExtra: 5 mB/t Gaseous Benzene"));
<nuclearcraft:molten_carbonate_fuel_cell>.addTooltip(format.aqua("Power Production: 140 RF/t \nValid Fuels: Hydrogen, Carbon-based solids and fluids. \nExtra: 2.5 mB/t of HPS."));
<nuclearcraft:proton_conducting_fuel_cell>.addTooltip(format.aqua("Power Production: 240 RF/t \nValid Fuels: Hydrogen, Carbon-based solids and fluids. \nExtra: 5 mB/t of HPS."));
<nuclearcraft:solid_oxide_fuel_cell>.addTooltip(format.aqua("Power Production: 400 RF/t \nValid Fuels: Hydrogen, Carbon-based solids and fluids. \nExtra: 10 mB/t of HPS."));
<nuclearcraft:turbine_machine>.addTooltip(format.aqua("Produces energy from flue gas, HPS and gaseous benzene, at 90% efficiency compared to a multiblock turbine."));
<nuclearcraft:heat_exchanger_machine>.addTooltip(format.aqua("Transfers heat between a cold and a hot fluid."));
<nuclearcraft:condenser_machine>.addTooltip(format.aqua("Condenses various fluids."));
<nuclearcraft:fluid_pressurizer>.addTooltip(format.aqua("Compresses various fluids."));

