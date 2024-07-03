#modloaded !qmd !mekanism
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Enricher;

Crystallizer.addRecipe(<fluid:water>*8000, <contenttweaker:sodium_chloride>, 4.0, 1.0, 0.0);
Crystallizer.addRecipe(<fluid:aqueuous_sodium_chloride>*666, <contenttweaker:sodium_chloride>, 1.0, 1.0, 0.0);
Enricher.addRecipe(<contenttweaker:sodium_chloride>, <fluid:water>*666, <fluid:aqueuous_sodium_chloride>*666, 1.0, 1.0, 0.0);
Electrolyzer.addRecipe(<fluid:aqueuous_sodium_chloride>*666, <fluid:hydrogen>*500, <fluid:chlorine>*500, <fluid:oxygen>*250, null, 1.0, 2.0, 0.0);
ChemicalReactor.addRecipe(<fluid:hydrogen>*1000, <fluid:chlorine>*1000, <fluid:hydrochloric_acid>*1000, null, 1.0, 1.0, 0.0);


