import mods.nuclearcraft.BasicRecipeHandler;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.util.Math;

var solidFuelGenerator = BasicRecipeHandler.get("solid_fuel_generator");
var fluidFuelGenerator = BasicRecipeHandler.get("fluid_fuel_generator");
var turbineMachine = BasicRecipeHandler.get("turbine_machine");
var alkalineFuelCell = BasicRecipeHandler.get("alkaline_fuel_cell");
var pemFuelCell = BasicRecipeHandler.get("pem_fuel_cell");
var moltenCarbonateFuelCell = BasicRecipeHandler.get("molten_carbonate_fuel_cell");
var solidOxideFuelCell = BasicRecipeHandler.get("solid_oxide_fuel_cell");
var heatExchangerMachine = BasicRecipeHandler.get("heat_exchanger_machine");

zenClass fuel {

	var name as string;
	var powerDensity as double;
	var fuelStackItem as IOreDictEntry;
	var fuelStackFluid as ILiquidStack;
	var solidFuel as bool;
	var fluidFuel as bool;
	var afcFuel as bool;
	var pemfcFuel as bool;
	var mcfcFuel as bool;
	var sofcFuel as bool;
	var exhaustCombustion as ILiquidStack;
	var exhaustFuelCell as ILiquidStack;
	var spice as double;
	
	zenConstructor(name as string, powerDensity as double, fuelStackItem as IOreDictEntry, fuelStackFluid as ILiquidStack, solidFuel as bool, fluidFuel as bool, afcFuel as bool, pemfcFuel as bool, mcfcFuel as bool, sofcFuel as bool, exhaustCombustion as ILiquidStack, exhaustFuelCell as ILiquidStack, spice as double) {
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

var acetylene = fuel("acetylene", 75000.0, null, <fluid:ethyne>*100, false, true, false, false, false, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var ammonia = fuel("ammonia", 37500.0, null, <fluid:ammonia>*100, false, true, false, false, false, true, <fluid:nitrogen>, <fluid:nitrogen>, 0.0);
var benzene = fuel("benzene", 225000.0, null, <fluid:benzene>*100, false, true, false, false, false, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var blaze_rod = fuel("blaze_rod", 96000.0, <ore:rodBlaze>, null, true, false, false, false, false, false, <fluid:sulfur_trioxide>, null, 0.0);
var blazing_pyrotheum = fuel("blazing_pyrotheum", 500000.0, null, <fluid:pyrotheum>*100, false, true, false, false, false, false, <fluid:sulfur_trioxide>, null, 0.0);
var charcoal = fuel("charcoal", 64000.0, <ore:charcoal>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var charcoal_block = fuel("charcoal_block", 640000.0, <ore:blockCharcoal>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var coal = fuel("coal", 64000.0, <ore:coal>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 431.0e-9);
var coal_block = fuel("coal_block", 640000.0, <ore:blockCoal>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 3.8e-6);
var creosote_oil = fuel("creosote_oil", 10000.0, null, <fluid:creosote>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var crude_oil = fuel("crude_oil", 100000.0, null, <fluid:crude_oil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var ethanol = fuel("ethanol", 50000.0, null, <fluid:ethanol>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var ethylene = fuel("ethylene", 75000.0, null, <fluid:ethene>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var graphite = fuel("graphite", 64000.0, <ore:ingotGraphite>, null, true, false, false, false, true, true, <fluid:carbon_dioxide>, <fluid:carbon_dioxide>, 0.0);
var graphite_block = fuel("graphite_block", 640000.0, <ore:blockGraphite>, null, true, false, false, false, true, true, <fluid:carbon_dioxide>, <fluid:carbon_dioxide>, 0.0);
var hydrogen = fuel("hydrogen", 25000.0, null, <fluid:hydrogen>*100, false, true, true, true, true, true, <fluid:water>, <fluid:water>, 0.0);
var lava = fuel("lava", 30000.0, null, <fluid:lava>*100, false, true, false, false, false, false, <fluid:sulfur_trioxide>, null, 0.0);
var methane = fuel("methane", 50000.0, null, <fluid:methane>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var methanol = fuel("methanol", 75000.0, null, <fluid:methanol>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var naphtha = fuel("naphtha", 250000.0, null, <fluid:refined_oil>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var phenol = fuel("phenol", 250000.0, null, <fluid:phenol>*100, false, true, false, false, false, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var pyrotheum_dust = fuel("pyrotheum_dust", 960000.0, <ore:dustPyrotheum>, null, true, false, false, false, false, false, <fluid:sulfur_trioxide>, null, 0.0);
var refined_fuel = fuel("refined_fuel", 375000.0, null, <fluid:refined_fuel>*100, false, true, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_door = fuel("wooden_door", 12000.0, <ore:doorWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_fence = fuel("wooden_fence", 12000.0, <ore:fenceWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_gate = fuel("wooden_gate", 12000.0, <ore:fenceGateWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_log = fuel("wooden_log", 12000.0, <ore:logWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_planks = fuel("wooden_planks", 12000.0, <ore:plankWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_slabs = fuel("wooden_slabs", 6000.0, <ore:slabWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_stairs = fuel("wooden_stairs", 12000.0, <ore:stairWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);
var wooden_sticks = fuel("wooden_sticks", 4000.0, <ore:stickWood>, null, true, false, false, false, true, true, <fluid:flue_gas>, <fluid:carbon_dioxide>, 0.0);


var fuels = [acetylene, ammonia, benzene, blaze_rod, blazing_pyrotheum, charcoal, charcoal_block, coal, coal_block, creosote_oil, crude_oil, ethanol, ethylene, graphite, graphite_block, hydrogen,
lava, methane, methanol, naphtha, phenol, pyrotheum_dust, refined_fuel, wooden_door, wooden_fence, wooden_gate, wooden_log, wooden_planks, wooden_slabs, wooden_stairs, wooden_sticks] as fuel[];

for combustible in fuels {
	if (combustible.solidFuel) {
		solidFuelGenerator.addRecipe([combustible.fuelStackItem, combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), combustible.powerDensity*0.25/20.0, 1.0, combustible.spice]);
	}
	if (combustible.fluidFuel) {
		fluidFuelGenerator.addRecipe([combustible.fuelStackFluid, combustible.exhaustCombustion*Math.floor(combustible.powerDensity*0.05/2.0), combustible.powerDensity*0.4/40.0, 1.0, combustible.spice]);
	}
	if (combustible.afcFuel) {
		alkalineFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:potassium_hydroxide_solution>, null, combustible.exhaustFuelCell*100, combustible.powerDensity*0.5/50.0, 1.0, 0.0]);
		alkalineFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:sodium_hydroxide_solution>, null, combustible.exhaustFuelCell*100, combustible.powerDensity*0.5/50.0, 0.9, 0.0]);
	}
	if (combustible.pemfcFuel) {
		pemFuelCell.addRecipe([combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.1/32.0), null, combustible.exhaustFuelCell*100, <fluid:preheated_water>*Math.floor(combustible.powerDensity*0.1/32.0), combustible.powerDensity*0.5/75.0, 1.0, 0.0]);
	}
	if (combustible.mcfcFuel) {
		if (combustible.solidFuel) {
		moltenCarbonateFuelCell.addRecipe([combustible.fuelStackItem, null, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.2/8.0), null, combustible.exhaustFuelCell*100, <fluid:low_pressure_steam>*(combustible.powerDensity*0.2/4.0), combustible.powerDensity*0.75/100.0, 1.0, 0.0]);
		}
		if (combustible.fluidFuel) {
		moltenCarbonateFuelCell.addRecipe([null, combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.2/8.0), null, combustible.exhaustFuelCell*100, <fluid:low_pressure_steam>*(combustible.powerDensity*0.2/4.0), combustible.powerDensity*0.75/100.0, 1.0, 0.0]);
		}
	}
	if (combustible.sofcFuel) {
		if (combustible.solidFuel) {
		solidOxideFuelCell.addRecipe([combustible.fuelStackItem, null, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.25/64.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.25/16.0), combustible.powerDensity/200.0, 1.0, 0.0]);
		}
		if (combustible.fluidFuel) {
		solidOxideFuelCell.addRecipe([null, combustible.fuelStackFluid, <fluid:oxygen>*100, <fluid:water>*Math.floor(combustible.powerDensity*0.25/64.0), null, combustible.exhaustFuelCell*100, <fluid:high_pressure_steam>*(combustible.powerDensity*0.25/16.0), combustible.powerDensity/200.0, 1.0, 0.0]);
		}
	}
}

turbineMachine.addRecipe([<fluid:flue_gas>*10, <fluid:cold_flue_gas>*20, 1.0, 16.0, 0.0]);
turbineMachine.addRecipe([<fluid:low_pressure_steam>*10, <fluid:low_quality_steam>*20, 1.0, 32.0, 0.0]);

heatExchangerMachine.addRecipe([<fluid:flue_gas>*20, <fluid:water>*5, <fluid:cold_flue_gas>*20, <fluid:low_pressure_steam>*10]);