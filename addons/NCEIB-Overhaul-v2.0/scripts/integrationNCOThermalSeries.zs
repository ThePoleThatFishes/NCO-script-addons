#debug
#modloaded thermalexpansion modtweaker

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Factorizer;
import mods.nuclearcraft.Infuser;

val blocks = {bas: [<materialpart:boron_arsenide:block>, <ore:gemBoronArsenide>.firstItem], bn: [<materialpart:boron_nitride:block>, <ore:gemBoronNitride>.firstItem], 
carob: [<materialpart:carobbiite:block>, <ore:gemCarobbiite>.firstItem], fluor: [<materialpart:fluorite:block>, <ore:gemFluorite>.firstItem],
si: [<materialpart:silicon:block>, <ore:itemSilicon>.firstItem], rhodo: [<materialpart:rhodochrosite:block>, <ore:gemRhodochrosite>.firstItem],
villi: [<materialpart:villiaumite:block>, <ore:gemVilliaumite>.firstItem]} as IItemStack[][string];

for name, block in blocks {
	Factorizer.addRecipeBoth(block[0], block[1]*9);
}

InductionSmelter.addRecipe(<materialpart:shibuichi:block>*4, <thermalfoundation:storage:0>*3, <thermalfoundation:storage:2>, 24000);
InductionSmelter.addRecipe(<materialpart:tin_silver:block>*4, <thermalfoundation:storage:1>*3, <thermalfoundation:storage:2>, 24000);
InductionSmelter.addRecipe(<materialpart:lead_platinum:block>*4, <thermalfoundation:storage:3>*3, <thermalfoundation:storage:6>, 24000);
InductionSmelter.addRecipe(<materialpart:ferroboron:block>*2, <thermalfoundation:storage_alloy:0>, <nuclearcraft:ingot_block:5>, 48000);	
InductionSmelter.addRecipe(<materialpart:tough:block>*2, <materialpart:ferroboron:block>, <nuclearcraft:ingot_block:6>, 72000);
InductionSmelter.addRecipe(<materialpart:hard_carbon:block>*2, <nuclearcraft:ingot_block:8>*2, <minecraft:diamond_block>, 64000);
InductionSmelter.addRecipe(<materialpart:extreme:block>, <materialpart:tough:block>, <materialpart:hard_carbon:block>, 128000);
InductionSmelter.addRecipe(<materialpart:thermoconducting:block>*2, <materialpart:extreme:block>, <materialpart:boron_arsenide:block>, 72000);
InductionSmelter.addRecipe(<materialpart:h_s_l_a_steel:block>*16, <minecraft:iron_block>*15, <materialpart:carbon_manganese:block>, 512000);
InductionSmelter.addRecipe(<materialpart:zircaloy:block>*8, <nuclearcraft:ingot_block:10>*7, <thermalfoundation:storage:1>, 128000);
InductionSmelter.addRecipe(<materialpart:lithium_manganese_dioxide:block>*2, <nuclearcraft:ingot_block:6>, <nuclearcraft:ingot_block:15>, 48000);
InductionSmelter.addRecipe(<materialpart:magnesium_diboride:block>*3, <nuclearcraft:ingot_block:7>, <nuclearcraft:ingot_block:5>*2, 32000);
InductionSmelter.addRecipe(<materialpart:silicon_carbide:block>*2, <materialpart:silicon:block>, <nuclearcraft:ingot_block:8>, 128000);
InductionSmelter.addRecipe(<materialpart:zirconium_molybdenum:block>*16, <nuclearcraft:material_block:0>*15, <nuclearcraft:ingot_block:10>, 512000);
InductionSmelter.addRecipe(<materialpart:carbon_manganese:block>*2, <ore:blockGraphite>.firstItem, <ore:blockManganese>.firstItem, 32000);

InductionSmelter.addRecipe(<nuclearcraft:alloy:6>*2, <ore:ingotSteel>.firstItem, <ore:ingotBoron>.firstItem, 6000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:1>*2, <ore:ingotFerroboron>.firstItem, <ore:ingotLithium>.firstItem, 9000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:2>*2, <ore:ingotGraphite>.firstItem*2, <ore:gemDiamond>.firstItem, 8000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:3>*3, <ore:ingotMagnesium>.firstItem, <ore:ingotBoron>.firstItem*2, 4000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:4>*2, <ore:ingotLithium>.firstItem, <ore:ingotManganeseDioxide>.firstItem, 6000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:7>*4, <ore:ingotCopper>.firstItem*3, <ore:ingotSilver>.firstItem, 3000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:8>*4, <ore:ingotTin>.firstItem*3, <ore:ingotSilver>.firstItem, 3000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:9>*4, <ore:ingotLead>.firstItem*3, <ore:ingotPlatinum>.firstItem, 3000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:10>, <ore:ingotTough>.firstItem, <ore:ingotHardCarbon>.firstItem, 16000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:11>*2, <ore:ingotExtreme>.firstItem, <ore:gemBoronArsenide>.firstItem, 9000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:12>*8, <ore:ingotZirconium>.firstItem*7, <ore:ingotTin>.firstItem, 16000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:13>*2, <ore:ingotGraphite>.firstItem, <ore:itemSilicon>.firstItem, 16000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:15>*16, <ore:ingotIron>.firstItem*15, <ore:dustCarbonManganese>.firstItem, 64000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:15>*16, <ore:ingotIron>.firstItem*15, <ore:ingotCarbonManganese>.firstItem, 64000);
InductionSmelter.addRecipe(<materialpart:carbon_manganese:ingot>*2, <ore:ingotGraphite>.firstItem, <ore:ingotManganese>.firstItem, 4000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:16>*16, <ore:ingotZirconium>.firstItem, <ore:dustMolybdenum>.firstItem*15, 64000);
InductionSmelter.addRecipe(<nuclearcraft:alloy:16>*16, <ore:ingotZirconium>.firstItem, <materialpart:molybdenum:ingot>*15, 64000);

Transposer.addFillRecipe(<ore:ingotSignalum>.firstItem, <ore:ingotShibuichi>.firstItem, <liquid:redstone>*250, 6000);
Transposer.addFillRecipe(<ore:ingotLumium>.firstItem, <ore:ingotTinSilver>.firstItem, <liquid:glowstone>*250, 6000);
Transposer.addFillRecipe(<ore:ingotEnderium>.firstItem, <ore:ingotLeadPlatinum>.firstItem, <liquid:ender>*250, 6000);
Transposer.addFillRecipe(<thermalfoundation:storage_alloy:5>, <materialpart:shibuichi:block>, <liquid:redstone>*2250, 48000);
Transposer.addFillRecipe(<thermalfoundation:storage_alloy:6>, <materialpart:tin_silver:block>, <liquid:glowstone>*2250, 48000);
Transposer.addFillRecipe(<thermalfoundation:storage_alloy:7>, <materialpart:lead_platinum:block>, <liquid:ender>*2250, 48000);

RedstoneFurnace.addRecipe(<nuclearcraft:ingot_block:14>, <nuclearcraft:ingot_block:15>, 16000);
RedstoneFurnace.addRecipe(<nuclearcraft:ingot_block:11>, <nuclearcraft:ingot_block:14>, 16000);
RedstoneFurnace.addRecipe(<nuclearcraft:ingot_block:14>, <materialpart:rhodochrosite:block>, 16000);

Infuser.addRecipe(<materialpart:shibuichi:block>, <liquid:redstone>*2250, <ore:blockSignalum>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<materialpart:tin_silver:block>, <liquid:glowstone>*2250, <ore:blockLumium>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<materialpart:lead_platinum:block>, <liquid:ender>*2250, <ore:blockEnderium>, 8.0, 1.0, 0.0);

