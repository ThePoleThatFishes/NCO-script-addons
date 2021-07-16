import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.AlloyFurnace;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Radiation;
import crafttweaker.oredict.IOreDictEntry;

// OreDicting
oreDict.listAllmilk;
<ore:listAllmilk>.add(<minecraft:milk_bucket>);

oreDict.listAllegg;
<ore:listAllegg>.add(<minecraft:egg>);

oreDict.butter;
<ore:butter>.addAll(<ore:ingotCocoaButter>);
<ore:butter>.addAll(<ore:foodButter>);
<ore:butter>.addAll(<ore:listAllnutbutter>);

oreDict.dustWheat;
<ore:dustWheat>.addAll(<ore:foodFlour>);

oreDict.pancakes;
<ore:pancakes>.addAll(<ore:foodPancakes>);
<ore:pancakes>.add(<contenttweaker:pancakes>);

recipes.addShapeless("goldsmore", <contenttweaker:smore_gold>,
	[<ore:ingotGold>, <ore:ingotChocolate>,	<ore:ingotMarshmallow>, <ore:ingotGold>]);
	
recipes.addShapeless("thmore", <contenttweaker:thmore>,
	[<nuclearcraft:graham_cracker>, <ore:ingotThorium>, <ore:ingotMarshmallow>, <nuclearcraft:graham_cracker>]);
	
recipes.addShapeless("caramelsmore", <contenttweaker:smore_caramel>,
	[<nuclearcraft:smore>, <contenttweaker:caramel>]);


Assembler.addRecipe(<ore:listAllegg>*2, <ore:listAllmilk>, <ore:dustWheat>, <ore:butter>, <contenttweaker:pancakes>*8);

Manufactory.addRecipe(<minecraft:sugar>, <contenttweaker:caramel>);

Radiation.setRadiationLevel(<contenttweaker:thmore>, 80.0e-12);
