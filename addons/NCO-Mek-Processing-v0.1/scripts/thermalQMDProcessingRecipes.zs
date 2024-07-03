#modloaded qmd thermalfoundation

import mods.qmd.mass_spectrometer;
import mods.qmd.ore_leacher;
import mods.nuclearcraft.ChanceItemIngredient;
import crafttweaker.item.IIngredient;

val ores = [<ore:oreAluminum>, <ore:oreIridium>, <ore:oreNickel>, <ore:orePlatinum>, <ore:oreSilver>] as IIngredient[];
val msItem1 = [<ore:ionisedDustAluminum>*6, <ore:ionisedDustIridium>*6, <ore:ionisedDustNickel>*6, <ore:ionisedDustPlatinum>*6, <ore:ionisedDustSilver>*6] as IIngredient[];
val msItem2 = [<ore:dustIron>, ChanceItemIngredient.create(<ore:dustPlatinum>, 40), <ore:dustIron>, ChanceItemIngredient.create(<ore:dustIridium>, 40), <ore:dustLead>] as IIngredient[];
val msItem3 = [null, ChanceItemIngredient.create(<ore:dustOsmium>, 40), ChanceItemIngredient.create(<ore:dustAluminum>, 40), ChanceItemIngredient.create(<ore:dustOsmium>, 40), null] as IIngredient[];
val leacherItem1 = [<ore:crystalAluminum>*5, <ore:crystalIridium>*5, <ore:crystalNickel>*5, <ore:crystalPlatinum>*5, <ore:crystalSilver>*5] as IIngredient[];
val leacherItem2 = [ChanceItemIngredient.create(<ore:dustIron>, 25), ChanceItemIngredient.create(<ore:dustPlatinum>, 10), ChanceItemIngredient.create(<ore:dustIron>, 25), ChanceItemIngredient.create(<ore:dustIridium>, 10), ChanceItemIngredient.create(<ore:dustLead>, 25)] as IIngredient[];
val leacherItem3 = [null, ChanceItemIngredient.create(<ore:dustOsmium>, 10), ChanceItemIngredient.create(<ore:dustAluminum>, 10), ChanceItemIngredient.create(<ore:dustOsmium>, 10), null] as IIngredient[];

for i, ore in ores {

	// 6x Processing
	mass_spectrometer.removeRecipeWithInput(ores[i], null);
	mass_spectrometer.addRecipe(ores[i], null, msItem1[i], msItem2[i], msItem3[i], null, null, null, null, null, 1.0);
	
	
	// 5x Processing
	ore_leacher.removeRecipeWithInput(ores[i], <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16);
	ore_leacher.addRecipe(ores[i], <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16, leacherItem1[i], leacherItem2[i], leacherItem3[i]);
	ore_leacher.addRecipe(msItem1[i]*(msItem1[i].amount/6), <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16, leacherItem1[i]*(leacherItem1[i].amount/5), null, null);
	
}
