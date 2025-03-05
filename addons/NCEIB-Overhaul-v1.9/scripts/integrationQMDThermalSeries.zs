#modloaded qmd thermalexpansion modtweaker

import mods.thermalexpansion.InductionSmelter;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.Factorizer;
import mods.jei.JEI;

InductionSmelter.addRecipe(<materialpart:tungsten_carbide:block>*2, <ore:blockTungsten>.firstItem, <ore:blockGraphite>.firstItem, 128000);
InductionSmelter.addRecipe(<ore:ingotTungstenCarbide>.firstItem*2, <ore:ingotTungsten>.firstItem, <ore:ingotGraphite>.firstItem, 16000);
InductionSmelter.addRecipe(<materialpart:niobium_tin:block>*4, <ore:blockNiobium>.firstItem*3, <ore:blockTin>.firstItem, 32000);
InductionSmelter.addRecipe(<ore:ingotNiobiumTin>.firstItem*4, <ore:ingotNiobium>.firstItem*3, <ore:ingotTin>.firstItem, 4000);
InductionSmelter.addRecipe(<materialpart:stainless_steel:block>*6, <ore:blockSteel>.firstItem*5, <ore:blockChromium>.firstItem, 32000);
InductionSmelter.addRecipe(<ore:ingotStainlessSteel>.firstItem*6, <ore:ingotSteel>.firstItem*5, <ore:ingotChromium>.firstItem, 4000);
InductionSmelter.addRecipe(<materialpart:niobium_titanium:block>*2, <ore:blockNiobium>.firstItem, <ore:blockTitanium>.firstItem, 32000);
InductionSmelter.addRecipe(<ore:ingotNiobiumTitanium>.firstItem*2, <ore:ingotNiobium>.firstItem, <ore:ingotTitanium>.firstItem, 4000);
InductionSmelter.addRecipe(<materialpart:osmiridium:block>*2, <ore:blockOsmium>.firstItem, <ore:blockIridium>.firstItem, 32000);
InductionSmelter.addRecipe(<ore:ingotOsmiridium>.firstItem*2, <ore:ingotOsmium>.firstItem, <ore:ingotIridium>.firstItem, 4000);
InductionSmelter.addRecipe(<materialpart:nichrome:block>*2, <ore:blockNickel>.firstItem, <ore:blockChromium>.firstItem, 32000);
InductionSmelter.addRecipe(<ore:ingotNichrome>.firstItem*2, <ore:ingotNickel>.firstItem, <ore:ingotChromium>.firstItem, 4000);
InductionSmelter.addRecipe(<materialpart:super_alloy:block>*3, <ore:blockNichrome>.firstItem*2, <ore:blockNiobiumTitanium>.firstItem, 32000);
InductionSmelter.addRecipe(<ore:ingotSuperAlloy>.firstItem*3, <ore:ingotNichrome>.firstItem*2, <ore:ingotNiobiumTitanium>.firstItem, 4000);




