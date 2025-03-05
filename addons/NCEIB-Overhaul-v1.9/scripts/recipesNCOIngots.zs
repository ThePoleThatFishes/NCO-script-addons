import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.DecayHastener;
import mods.nuclearcraft.FissionIrradiator;
import mods.jei.JEI;

AlloyFurnace.addRecipe(<ore:ingotZirconium>, <ore:ingotMolybdenum>*15, <ore:ingotZirconiumMolybdenum>*16, 8.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:ingotGraphite>|<ore:dustGraphite>, <ore:ingotManganese>|<ore:dustManganese>, <ore:ingotCarbonManganese>*2, 1.0, 1.0, 0.0);
AlloyFurnace.removeRecipeWithOutput(<ore:ingotHSLASteel>*16);
AlloyFurnace.addRecipe(<ore:ingotCarbonManganese>|<ore:dustCarbonManganese>, <ore:ingotIron>*15|<ore:dustIron>*15, <ore:ingotHSLASteel>*16, 8.0, 2.0, 0.0);
furnace.addRecipe(<materialpart:manganese:ingot>, <ore:dustManganese>.firstItem);
IngotFormer.addRecipe(<liquid:molybdenum>*144, <ore:ingotManganese>.firstItem);

Melter.addRecipe(<ore:ingotStrontium90>, <liquid:strontium_90>*144);
IngotFormer.addRecipe(<liquid:strontium_90>*144, <ore:ingotStrontium90>);
DecayHastener.addRecipe(<ore:ingotStrontium90>, <ore:ingotZirconium>, 1.125, 1.0, 34.44e-3);
Manufactory.addRecipe(<ore:ingotBismuth>, <ore:dustBismuth>);

furnace.addRecipe(<ore:ingotBismuth>.firstItem, <ore:dustBismuth>.firstItem);
furnace.addRecipe(<ore:ingotCaesium137>.firstItem, <ore:dustCaesium137>.firstItem);
furnace.addRecipe(<ore:ingotEuropium155>.firstItem, <ore:dustEuropium155>.firstItem);
furnace.addRecipe(<ore:ingotPolonium>.firstItem, <ore:dustPolonium>.firstItem);
furnace.addRecipe(<ore:ingotPromethium147>.firstItem, <ore:dustPromethium147>.firstItem);
furnace.addRecipe(<ore:ingotProtactinium233>.firstItem, <ore:dustProtactinium233>.firstItem);
furnace.addRecipe(<ore:ingotRadium>.firstItem, <ore:dustRadium>.firstItem);
furnace.addRecipe(<ore:ingotRuthenium106>.firstItem, <ore:dustRuthenium106>.firstItem);
furnace.addRecipe(<ore:ingotStrontium90>.firstItem, <ore:dustStrontium90>.firstItem);
furnace.addRecipe(<ore:ingotTBP>.firstItem, <ore:dustTBP>.firstItem);