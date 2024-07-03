#modloaded qmd

import mods.qmd.mass_spectrometer;
import mods.qmd.ore_leacher;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.ChanceFluidIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;

val ores = [<ore:oreIron>, <ore:oreGold>, <ore:oreCopper>, <ore:oreLead>, <ore:oreTin>, <ore:oreBoron>, <ore:oreLithium>, <ore:oreMagnesium>, <ore:oreThorium>, <ore:oreUranium>] as IIngredient[];
val msItem1 = [<ore:ionisedDustIron>*6, <ore:ionisedDustGold>*6, <ore:ionisedDustCopper>*6, <ore:ionisedDustLead>*6, <ore:ionisedDustTin>*6, <ore:ionisedDustBoron>*6, <ore:ionisedDustLithium>*6, <ore:ionisedDustMagnesium>*6, <ore:ionisedDustThorium>*6, <ore:ionisedDustUranium>*6] as IIngredient[];
val msItem2 = [ChanceItemIngredient.create(<ore:dustChromium>*3, 40, 2), ChanceItemIngredient.create(<ore:dustSilver>, 40), ChanceItemIngredient.create(<ore:dustZinc>, 20), ChanceItemIngredient.create(<ore:dustNickel>, 40), <ore:dustZirconium>, <ore:dustSodium>*3, ChanceItemIngredient.create(<ore:dustAluminum>, 40), ChanceItemIngredient.create(<ore:dustCalcium>, 40), ChanceItemIngredient.create(<ore:dustTitanium>, 60), ChanceItemIngredient.create(<ore:dustThorium>, 40)] as IIngredient[];
val msItem3 = [ChanceItemIngredient.create(<ore:dustManganese>, 20), null, ChanceItemIngredient.create(<ore:dustIridium>, 4), ChanceItemIngredient.create(<ore:dustCobalt>, 20), ChanceItemIngredient.create(<ore:dustTungsten>, 40), null, ChanceItemIngredient.create(<ore:dustSodium>, 20), ChanceItemIngredient.create(<ore:dustPotassium>, 20), ChanceItemIngredient.create(<ore:dustHafnium>, 40), ChanceItemIngredient.create(<ore:dustNiobium>, 40)] as IIngredient[];
val msItem4 = [null, null, null, null, null, null, null, null, null, ChanceItemIngredient.create(<ore:dustRadium>, 5)] as IIngredient[];
val msFluid1 = [null, null, null, null, null, null, null, null, null, null] as IIngredient[];
val msFluid2 = [null, null, null, null, null, null, null, null, null, null] as IIngredient[];
val msFluid3 = [null, null, null, null, null, <fluid:chlorine>*1500, null, null, null, null] as IIngredient[];
val msFluid4 = [null, null, null, null, null, null, null, null, null, null] as IIngredient[];
val leacherItem1 = [<ore:crystalIron>*5, <ore:crystalGold>*5, <ore:crystalCopper>*5, <ore:crystalLead>*5, <ore:crystalTin>*5, <ore:crystalBoron>*5, <ore:crystalLithium>*5, <ore:crystalMagnesium>*5, <ore:crystalThorium>*5, <ore:crystalUranium>*5] as IIngredient[];
val leacherItem2 = [ChanceItemIngredient.create(<ore:dustChromium>, 60), ChanceItemIngredient.create(<ore:dustSilver>, 10), ChanceItemIngredient.create(<ore:dustZinc>, 5), ChanceItemIngredient.create(<ore:dustNickel>, 10), ChanceItemIngredient.create(<ore:dustZirconium>, 25), ChanceItemIngredient.create(<ore:dustSodiumChloride>*2, 50, 1), ChanceItemIngredient.create(<ore:dustAluminum>, 10), ChanceItemIngredient.create(<ore:dustCalcium>, 10), ChanceItemIngredient.create(<ore:dustTitanium>, 15), ChanceItemIngredient.create(<ore:dustThorium>, 10)] as IIngredient[];
val leacherItem3 = [ChanceItemIngredient.create(<ore:dustManganese>, 5), null, ChanceItemIngredient.create(<ore:dustIridium>, 1), ChanceItemIngredient.create(<ore:dustCobalt>, 5), ChanceItemIngredient.create(<ore:dustTungsten>, 10), null, null, ChanceItemIngredient.create(<ore:dustPotassium>, 5), ChanceItemIngredient.create(<ore:dustHafnium>, 10), ChanceItemIngredient.create(<ore:dustNiobium>, 10)] as IIngredient[];

for i, ore in ores {

	// 6x Processing
	mass_spectrometer.removeRecipeWithInput(ores[i], null);
	print(i);
	mass_spectrometer.addRecipe(ores[i], null, msItem1[i], msItem2[i], msItem3[i], msItem4[i], msFluid1[i], msFluid2[i], msFluid3[i], msFluid4[i], 1.0);
	
	
	// 5x Processing
	ore_leacher.removeRecipeWithInput(ores[i], <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16);
	ore_leacher.addRecipe(ores[i], <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16, leacherItem1[i], leacherItem2[i], leacherItem3[i]);
	ore_leacher.addRecipe(msItem1[i]*(msItem1[i].amount/6), <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16, leacherItem1[i]*(leacherItem1[i].amount/5), null, null);
	
}
