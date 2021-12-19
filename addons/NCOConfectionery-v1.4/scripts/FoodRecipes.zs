import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Radiation;
import mods.nuclearcraft.Extractor;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

oreDict.foodFlour;
<ore:foodFlour>.addAll(<ore:dustWheat>);

oreDict.foodChocolatebar;
<ore:foodChocolatebar>.add(<nuclearcraft:milk_chocolate>);

oreDict.foodPancakes;
<ore:foodPancakes>.add(<contenttweaker:pancakes>);

oreDict.foodCaramel;
<ore:foodCaramel>.add(<contenttweaker:caramel>);

oreDict.listAllegg;
<ore:listAllegg>.add(<minecraft:egg>);

oreDict.listAllmilk;
<ore:listAllmilk>.add(<minecraft:milk_bucket>);

oreDict.foodButter;
<ore:foodButter>.add(<nuclearcraft:cocoa_butter>);

oreDict.foodMarshmellows;
<ore:foodMarshmellows>.add(<nuclearcraft:marshmallow>);

oreDict.foodCrackers;
<ore:foodCrackers>.add(<nuclearcraft:graham_cracker>);

oreDict.foodEggnog;

oreDict.cropMaplesyrup;

recipes.addShapeless("goldsmore", <contenttweaker:smore_gold>, [<ore:ingotGold>, <ore:foodMarshmellows>, <ore:foodChocolatebar>, <ore:ingotGold>]);
recipes.addShapeless("thmore", <contenttweaker:thmore>, [<ore:foodCrackers>, <ore:foodMarshmellows>, <ore:ingotThorium>, <ore:foodCrackers>]);
recipes.addShapeless("caramelsmore", <contenttweaker:smore_caramel>, [<ore:foodCrackers>, <ore:foodCaramel>, <ore:foodMarshmellows>,
<ore:foodChocolatebar>, <ore:foodCrackers>]);

Assembler.addRecipe(<ore:listAllegg>*2, <ore:listAllmilk>, <ore:dustWheat>, <ore:foodButter>, <contenttweaker:pancakes>*32);
Manufactory.addRecipe(<minecraft:sugar>, <ore:foodCaramel>);
Infuser.addRecipe(<ore:foodButter>, <fluid:milk>*250, <contenttweaker:buttermilk>);
SaltMixer.addRecipe(<fluid:cocoa_butter>*144, <fluid:milk>*250, <fluid:buttermilk>*144);
IngotFormer.addRecipe(<fluid:buttermilk>*144, <contenttweaker:buttermilk>);

Extractor.addRecipe(<minecraft:egg>, <contenttweaker:eggshells>, <fluid:eggmix>*1000, 0.25, 1.0, 0.0);
SaltMixer.addRecipe(<fluid:eggmix>*250, <fluid:ethanol>*500, <fluid:eggnog>*250, 0.25, 0.5, 0.0);

Melter.addRecipe(<ore:foodCaramel>, <fluid:caramel>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<ore:foodCrackers>, <fluid:cracker>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<contenttweaker:smore_gold>, <fluid:gold_smore>*144, 0.5, 0.25, 0.0);
Melter.addRecipe(<ore:foodPancakes>*8, <fluid:pancake>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<contenttweaker:buttermilk>, <fluid:buttermilk>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<ore:listAllegg>, <fluid:egg>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<minecraft:wheat>, <fluid:wheat>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<minecraft:cake>, <fluid:cake>*144, 0.25, 0.5, 0.0);
Melter.removeRecipeWithOutput(<fluid:milk_chocolate>*144);
Melter.removeRecipeWithOutput(<fluid:marshmallow>*144);
Melter.addRecipe(<ore:foodChocolatebar>, <fluid:milk_chocolate>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<ore:foodMarshmellows>, <fluid:marshmallow>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<minecraft:pumpkin>, <fluid:pumpkin>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<minecraft:pumpkin_pie>, <fluid:pumpkin_pie>*144, 0.25, 0.5, 0.0);
Melter.addRecipe(<ore:foodEggnog>, <fluid:eggnog>*250, 0.25, 0.5, 0.0);
Melter.addRecipe(<ore:cropMaplesyrup>, <fluid:maple_syrup>*250, 0.25, 0.5, 0.0);

val fluiddict = {<fluid:cracker>: <fluid:cracker_nak>, <fluid:milk_chocolate>: <fluid:chocolate_nak>, <fluid:gold_smore>: <fluid:gold_smore_nak>,
<fluid:marshmallow>: <fluid:marshmallow_nak>, <fluid:pancake>: <fluid:pancake_nak>, <fluid:caramel>: <fluid:caramel_nak>, <fluid:buttermilk>: <fluid:buttermilk_nak>,
<fluid:sugar>: <fluid:sugar_nak>, <fluid:egg>: <fluid:egg_nak>, <fluid:wheat>: <fluid:wheat_nak>, <fluid:cake>: <fluid:cake_nak>, <fluid:pumpkin>: <fluid:pumpkin_nak>,
<fluid:pumpkin_pie>: <fluid:pumpkin_pie_nak>} as IIngredient[IIngredient];

for fluidname, fluidnak in fluiddict {
SaltMixer.addRecipe(fluidname*144, <fluid:nak>*144, fluidnak*144);
}

Radiation.setRadiationLevel(<contenttweaker:thmore>, 80.0e-12);