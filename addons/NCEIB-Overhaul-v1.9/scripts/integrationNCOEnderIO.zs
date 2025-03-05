#modloaded enderio endertweaker

import mods.enderio.AlloySmelter;

AlloySmelter.addRecipe(<materialpart:ferroboron:block>*2, [<ore:blockBoron>, <ore:blockSteel>], 48000);
AlloySmelter.addRecipe(<materialpart:tough:block>*2, [<ore:blockLithium>, <materialpart:ferroboron:block>], 72000);
AlloySmelter.addRecipe(<materialpart:hard_carbon:block>*2, [<ore:blockGraphite>, <ore:blockDiamond>], 64000);
AlloySmelter.addRecipe(<materialpart:extreme:block>, [<materialpart:tough:block>, <materialpart:hard_carbon:block>], 128000);
AlloySmelter.addRecipe(<materialpart:thermoconducting:block>*2, [<materialpart:extreme:block>, <ore:blockBoronArsenide>], 72000);
AlloySmelter.addRecipe(<materialpart:h_s_l_a_steel:block>*16, [<ore:blockIron>*15, <ore:blockCarbonManganese>], 512000);
AlloySmelter.addRecipe(<materialpart:zircaloy:block>*8, [<ore:blockZirconium>*7, <ore:blockTin>], 128000);
AlloySmelter.addRecipe(<materialpart:lithium_manganese_dioxide:block>*2, [<ore:blockLithium>, <ore:blockManganeseDioxide>], 48000);
AlloySmelter.addRecipe(<materialpart:magnesium_diboride:block>*3, [<ore:blockMagnesium>, <ore:blockBoron>*2], 32000);
AlloySmelter.addRecipe(<materialpart:silicon_carbide:block>*2, [<ore:blockGraphite>, <ore:blockSilicon>], 128000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:13>*2, [<ore:ingotGraphite>, <ore:itemSilicon>], 16000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:16>*16, [<ore:ingotZirconium>, <ore:dustMolybdenum>*15], 64000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:16>*16, [<ore:ingotZirconium>, <ore:ingotMolybdenum>*15], 64000);
AlloySmelter.addRecipe(<materialpart:zirconium_molybdenum:block>*16, [<ore:blockZirconium>, <ore:blockMolybdenum>*15], 512000);
AlloySmelter.addRecipe(<materialpart:carbon_manganese:block>*2, [<ore:blockGraphite>, <ore:blockManganese>], 32000);
AlloySmelter.addRecipe(<materialpart:carbon_manganese:ingot>*2, [<ore:ingotGraphite>, <ore:ingotManganese>], 4000);

AlloySmelter.addRecipe(<nuclearcraft:alloy:7>*4, [<ore:ingotCopper>*3, <ore:ingotSilver>], 3000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:8>*4, [<ore:ingotTin>*3, <ore:ingotSilver>], 3000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:9>*4, [<ore:ingotLead>*3, <ore:ingotPlatinum>], 3000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:15>*16, [<ore:ingotIron>*15, <ore:dustCarbonManganese>|<ore:ingotCarbonManganese>], 64000);

AlloySmelter.addRecipe(<materialpart:shibuichi:block>*4, [<ore:blockCopper>*3, <ore:blockSilver>], 24000);
AlloySmelter.addRecipe(<materialpart:tin_silver:block>*4, [<ore:blockTin>*3, <ore:blockSilver>], 24000);
AlloySmelter.addRecipe(<materialpart:lead_platinum:block>*4, [<ore:blockLead>*3, <ore:blockPlatinum>], 24000);