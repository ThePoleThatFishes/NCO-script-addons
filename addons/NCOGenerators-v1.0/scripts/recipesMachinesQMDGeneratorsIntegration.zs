#modloaded ncomekprocessing qmd

import mods.nuclearcraft.ChanceItemIngredient;
import mods.qmd.ore_leacher;
import mods.qmd.mass_spectrometer;

mass_spectrometer.removeRecipeWithInput(<ore:oreThorium>, null);
mass_spectrometer.addRecipe(<ore:oreThorium>, null, <ore:ionisedDustThorium>*6, ChanceItemIngredient.create(<ore:dustTransitionMetals>*2, 40), ChanceItemIngredient.create(<ore:dustRareEarths>*3, 30), null, null, null, null, null, 1200.0/1000.0);

ore_leacher.removeRecipeWithInput(<ore:oreThorium>, <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16);
ore_leacher.addRecipe(<ore:oreThorium>, <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16, <ore:crystalThorium>*5, ChanceItemIngredient.create(<ore:dustTransitionMetals>*2, 15), ChanceItemIngredient.create(<ore:dustRareEarths>*3, 10), 1000.0/400.0, 100.0/50.0, 0.0);
ore_leacher.addRecipe(<ore:ionisedDustThorium>, <fluid:nitric_acid>*16, <fluid:hydrochloric_acid>*16, <fluid:sulfuric_acid>*16, <ore:crystalThorium>, null, null, 200.0/400.0, 100.0/50.0, 0.0);