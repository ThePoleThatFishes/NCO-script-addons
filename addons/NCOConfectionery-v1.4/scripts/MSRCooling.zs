/*
The following code has been repurposed from Bob Bartsch/QuantumTraverse's code, originally used in the Moar Reactor Functionality script addon for NuclearCraft: Overhauled.
*/

import crafttweaker.item.IIngredient;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Enricher;
import crafttweaker.oredict.IOreDict;

var cooling = [165, 85, 75, 350, 105, 140] as int[];

var crMatrix = [[cooling[0]*5, cooling[1]*5, cooling[2]*5, cooling[3]*5, cooling[4]*5, cooling[5]*5],
[cooling[0]*5, cooling[1]*10, cooling[2]*10, cooling[3]*10, cooling[4]*10, cooling[5]*10],
[cooling[0]*50, cooling[1]*40, cooling[2]*40, cooling[3]*40, cooling[4]*40, cooling[5]*40],
[cooling[0]*25, cooling[1]*25, cooling[2]*25, cooling[3]*25, cooling[4]*25, cooling[5]*25]] as int[][];
var coolantIn = [<fluid:caramel_nak_hot>, <fluid:chocolate_nak_hot>, <fluid:cracker_nak_hot>, <fluid:gold_smore_nak_hot>, <fluid:marshmallow_nak_hot>,
<fluid:pancake_nak_hot>] as IIngredient[];
var coolantOut = [<fluid:caramel_nak>, <fluid:chocolate_nak>, <fluid:cracker_nak>, <fluid:gold_smore_nak>, <fluid:marshmallow_nak>, <fluid:pancake_nak>] as IIngredient[];
var coolModifier = [144, 128, 12, 60] as int[];
var transferIn = [<fluid:water>|<fluid:condensate_water>, <fluid:preheated_water>, <fluid:exhaust_steam>, <fluid:condensate_water>] as IIngredient[];
var transferOut = [<fluid:high_pressure_steam>, <fluid:high_pressure_steam>, <fluid:low_pressure_steam>, <fluid:preheated_water>] as IIngredient[];
var transferModifier = [4, 4, 1, 1] as int[];

//normal HX recipes
for i,array in crMatrix{
	for j,num in array{
		ChemicalReactor.addRecipe(coolantIn[j].amount(coolModifier[i]), transferIn[i].amount(num), coolantOut[j].amount(coolModifier[i]), transferOut[i].amount(num*transferModifier[i]), 0.00625, 0.0, 0.0);
	}
}

if !(oreDict has "QuantumTraverseWhyCanISteamMyCrabs") {
//steam powered HX recipes
ChemicalReactor.addRecipe(<fluid:high_pressure_steam>*75, <fluid:exhaust_steam>*120, <fluid:steam>*300, <fluid:low_pressure_steam>*120, 0.00625, 0.0, 0.0);
ChemicalReactor.addRecipe(<fluid:high_pressure_steam>*80, <fluid:condensate_water>*16, <fluid:steam>*320, <fluid:preheated_water>*16, 0.00625, 0.0, 0.0);


//condenser recipes
Enricher.addRecipe(<minecraft:snowball>, <fluid:exhaust_steam>*16000, <fluid:condensate_water>*1000, 0.00625, 0.0, 0.0);
Enricher.addRecipe(<minecraft:snowball>, <fluid:low_quality_steam>*16000, <fluid:condensate_water>*500, 0.00625, 0.0, 0.0);
}