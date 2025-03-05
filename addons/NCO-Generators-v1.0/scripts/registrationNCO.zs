#loader nc_preinit

import mods.nuclearcraft.Registration;
import mods.nuclearcraft.EnergyProcessorBuilder;
import mods.nuclearcraft.UpgradableEnergyProcessorBuilder;
import mods.nuclearcraft.ProcessorBuilderHelper.bigSlot;
import mods.nuclearcraft.ProcessorBuilderHelper.standardSlot;

// Batteries
Registration.registerBattery("sodium", 12000000, 4);
Registration.registerBattery("potassium", 20000000, 3);

// Betavoltaic Generators
mods.nuclearcraft.Registration.registerRTG("tritium", 2, 14.0e-6);
mods.nuclearcraft.Registration.registerRTG("ruthenium", 4, 14.0e-3);
mods.nuclearcraft.Registration.registerRTG("caesium", 12, 146.0e-6);
mods.nuclearcraft.Registration.registerRTG("europium", 8, 23.0e-3);
mods.nuclearcraft.Registration.registerRTG("promethium", 6, 3.2e-3);

// Machines
if !(loadedMods has "qmd") {
UpgradableEnergyProcessorBuilder("atmosphere_collector")
    .setFluidOutputSlots([bigSlot(112, 31)])
    .setOutputTankCapacity(32000)
    .setDefaultProcessTime(20.0)
    .setDefaultProcessPower(100.0)
	.setProgressBarGuiXYWHUV(52, 31, 34, 25, 176, 3)
	.setJeiClickAreaXYWH(52, 33, 34, 22)
	.setJeiTooltipXYWH(52, 33, 34, 22)
	.setJeiBackgroundXYWH(50, 28, 89, 30)
    .buildAndRegister();
}
	
UpgradableEnergyProcessorBuilder("fluid_pressurizer")
    .setFluidInputSlots([standardSlot(56, 35)])
    .setFluidOutputSlots([bigSlot(112, 31)])
    .setInputTankCapacity(256000)
    .setOutputTankCapacity(16000)
    .setDefaultProcessTime(400.0)
    .setDefaultProcessPower(50.0)
	.setJeiClickAreaXYWH(73, 34, 38, 18)
    .buildAndRegister();

UpgradableEnergyProcessorBuilder("heat_exchanger_machine")
	.setRecipeHandlerName("heat_exchanger_machine")
	.setFluidInputSlots([standardSlot(44, 20), standardSlot(44, 42)])
	.setFluidOutputSlots([standardSlot(114, 20), standardSlot(114, 42)])
	.setDefaultProcessPower(0.0)
	.setDefaultProcessTime(1.0)
	.setInputTankCapacity(256000)
	.setOutputTankCapacity(256000)
	.setProgressBarGuiXYWHUV(65, 23, 45, 32, 176, 0)
	.setJeiClickAreaXYWH(65, 23, 45, 32)
	.setSpeedUpgradeSlot(133, 64, 16, 16)
	.buildAndRegister();

UpgradableEnergyProcessorBuilder("solid_fuel_generator")
	.setDefaultProcessPower(20.0)
	.setDefaultProcessTime(1.0)
	.standardExtend(0, 12)
	.setItemInputSlots([standardSlot(44, 51)])
	.setFluidOutputSlots([standardSlot(116, 21)])
	.setIsGenerator(true)
	.setProgressBarGuiXYWHUV(43, 22, 69, 25, 176, 3)
	.setJeiBackgroundXYWH(43, 20, 90, 48)
	.buildAndRegister();
	
UpgradableEnergyProcessorBuilder("fluid_fuel_generator")
	.setDefaultProcessPower(40.0)
	.setDefaultProcessTime(1.0)
	.standardExtend(0, 12)
	.setFluidInputSlots([standardSlot(44, 51)])
	.setFluidOutputSlots([standardSlot(116, 21)])
	.setIsGenerator(true)
	.setProgressBarGuiXYWHUV(43, 22, 69, 25, 176, 3)
	.setJeiBackgroundXYWH(43, 20, 90, 48)
	.buildAndRegister();

UpgradableEnergyProcessorBuilder("turbine_machine")
	.setFluidInputSlots([standardSlot(56, 35)])
	.setFluidOutputSlots([bigSlot(112, 31)])
	.setInputTankCapacity(64000)
    .setOutputTankCapacity(128000)
    .setDefaultProcessTime(1.0)
    .setDefaultProcessPower(1.0)
	.setProgressBarGuiXYWHUV(77, 32, 29, 22, 176, 3)
	.setJeiBackgroundXYWH(55, 30, 82, 26)
    .buildAndRegister();

UpgradableEnergyProcessorBuilder("alkaline_fuel_cell")
	.setGuiWH(194, 170)
	.setFluidInputSlots([standardSlot(44, 18), standardSlot(152, 18), standardSlot(99, 60)]) // Fuel, Oxidant, Electrolyte
	.setFluidOutputSlots([standardSlot(44, 66), standardSlot(152, 66)]) // Fuel, Oxidant
	.setPlayerGuiXY(8, 88)
	.setProgressBarGuiXYWHUV(98, 23, 18, 36, 194, 3)
	.setEnergyBarGuiXYWHUV(8, 6, 16, 79, 194, 88)
	.setMachineConfigGuiXY(170, 141)
	.setRedstoneControlGuiXY(170, 160)
	.setJeiBackgroundXYWH(43, 17, 126, 66)
	.setDefaultProcessPower(50.0)
	.setDefaultProcessTime(1.0)
	.setIsGenerator(true)
	.setInputTankCapacity(16000)
	.setOutputTankCapacity(64000)
	.setSpeedUpgradeSlot(171, 88, 16, 16)
	.setEnergyUpgradeSlot(171, 107, 16, 16)
	.setMachineConfigGuiXY(170, 125)
	.setRedstoneControlGuiXY(170, 145)
	.buildAndRegister();

UpgradableEnergyProcessorBuilder("pem_fuel_cell")
	.setGuiWH(194, 170)
	.setFluidInputSlots([standardSlot(44, 18), standardSlot(152, 18), standardSlot(57, 42)]) // Fuel, Oxidant, Coolant
	.setFluidOutputSlots([standardSlot(44, 66), standardSlot(152, 66), standardSlot(139, 42)]) // Fuel, Oxidant, Coolant
	.setPlayerGuiXY(8, 88)
	.setProgressBarGuiXYWHUV(98, 23, 18, 54, 194, 3)
	.setEnergyBarGuiXYWHUV(8, 6, 16, 79, 194, 88)
	.setMachineConfigGuiXY(170, 141)
	.setRedstoneControlGuiXY(170, 160)
	.setJeiBackgroundXYWH(43, 17, 126, 66)
	.setDefaultProcessPower(75.0)
	.setDefaultProcessTime(1.0)
	.setIsGenerator(true)
	.setInputTankCapacity(16000)
	.setOutputTankCapacity(64000)
	.setSpeedUpgradeSlot(171, 88, 16, 16)
	.setEnergyUpgradeSlot(171, 107, 16, 16)
	.setMachineConfigGuiXY(170, 125)
	.setRedstoneControlGuiXY(170, 145)
	.buildAndRegister();

UpgradableEnergyProcessorBuilder("molten_carbonate_fuel_cell")
	.setGuiWH(194, 188)
	.setFluidInputSlots([standardSlot(44, 36), standardSlot(152, 36), standardSlot(57, 60)]) // Fuel, Oxidant, Coolant
	.setFluidOutputSlots([standardSlot(44, 84), standardSlot(152, 84), standardSlot(139, 60)]) // Fuel, Oxidant, Coolant
	.setItemInputSlots([standardSlot(62, 18)]) // Solid Fuel
	.setPlayerGuiXY(8, 106)
	.setProgressBarGuiXYWHUV(98, 41, 18, 54, 194, 3)
	.setEnergyBarGuiXYWHUV(8, 6, 16, 96, 194, 90)
	.setMachineConfigGuiXY(170, 143)
	.setRedstoneControlGuiXY(170, 163)
	.setJeiBackgroundXYWH(43, 17, 126, 84)
	.setDefaultProcessPower(100.0)
	.setDefaultProcessTime(1.0)
	.setIsGenerator(true)
	.setInputTankCapacity(16000)
	.setOutputTankCapacity(64000)
	.setSpeedUpgradeSlot(171, 106, 16, 16)
	.setEnergyUpgradeSlot(171, 125, 16, 16)
	.buildAndRegister();
	
UpgradableEnergyProcessorBuilder("solid_oxide_fuel_cell")
	.setGuiWH(194, 188)
	.setFluidInputSlots([standardSlot(44, 36), standardSlot(152, 36), standardSlot(57, 60)]) // Fuel, Oxidant, Electrolyte, Coolant
	.setFluidOutputSlots([standardSlot(44, 84), standardSlot(152, 84), standardSlot(139, 60)]) // Fuel, Oxidant, Coolant
	.setItemInputSlots([standardSlot(62, 18)]) // Solid Fuel
	.setPlayerGuiXY(8, 106)
	.setProgressBarGuiXYWHUV(98, 41, 18, 54, 194, 3)
	.setEnergyBarGuiXYWHUV(8, 6, 16, 96, 194, 90)
	.setMachineConfigGuiXY(170, 143)
	.setRedstoneControlGuiXY(170, 163)
	.setJeiBackgroundXYWH(43, 17, 126, 84)
	.setDefaultProcessPower(200.0)
	.setDefaultProcessTime(1.0)
	.setIsGenerator(true)
	.setInputTankCapacity(16000)
	.setOutputTankCapacity(64000)
	.setSpeedUpgradeSlot(171, 106, 16, 16)
	.setEnergyUpgradeSlot(171, 125, 16, 16)
	.buildAndRegister();