#modloaded qmd

import mods.qmd.particle;
import mods.qmd.accelerator_source;
import mods.qmd.target_chamber;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.SolidFission;
import mods.nuclearcraft.SaltFission;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.Radiation;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.ChanceFluidIngredient;
import crafttweaker.item.IIngredient;

particle.addComponentParticle(<particle:arsenic_ion>, <particle:proton>*33);
particle.addComponentParticle(<particle:arsenic_ion>, <particle:neutron>*42);
particle.addComponentParticle(<particle:arsenic_ion>, <particle:electron>*32);

Infuser.addRecipe(<qmd:canister>, <fluid:arsenic>*666, <contenttweaker:arsenic_canister>, 4.0, 1.0, 0.0);

accelerator_source.addRecipe(<contenttweaker:arsenic_canister>, (<particle:arsenic_ion>*100)~0.2);

target_chamber.addRecipe(<ore:ingotPlutonium239>, ((<particle:arsenic_ion>*120000)^6.4e3)~0.5, <contenttweaker:so314>, <particle:proton>,
null, null, 45.0e3, 0.34);
target_chamber.addRecipe(<ore:ingotPlutonium239Oxide>, ((<particle:arsenic_ion>*120000)^6.4e3)~0.5, <contenttweaker:so314ox>, <particle:proton>,
null, null, 45.0e3, 0.34);
target_chamber.addRecipe(<ore:ingotPlutonium239Nitride>, ((<particle:arsenic_ion>*120000)^6.4e3)~0.5, <contenttweaker:so314ni>, <particle:proton>,
null, null, 45.0e3, 0.34);
target_chamber.addRecipe(<ore:ingotPlutonium239ZA>, ((<particle:arsenic_ion>*120000)^6.4e3)~0.5, <contenttweaker:so314za>, <particle:proton>,
null, null, 45.0e3, 0.34);


// SFR Fuel Production
recipes.addShaped("mix314", <contenttweaker:mix314>*9, [
[<contenttweaker:so314>, <ore:ingotUranium238>, <ore:ingotUranium238>],
[<ore:ingotUranium238>, <ore:ingotUranium238>, <ore:ingotUranium238>],
[<ore:ingotUranium238>, <ore:ingotUranium238>, <ore:ingotUranium238>]
]);
recipes.addShaped("mox314", <contenttweaker:mox314>*9, [
[<contenttweaker:so314ox>, <ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>],
[<ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>],
[<ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>]
]);
recipes.addShaped("mni314", <contenttweaker:mni314>*9, [
[<contenttweaker:so314ni>, <ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>],
[<ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>],
[<ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>]
]);
recipes.addShaped("mza314", <contenttweaker:mza314>*9, [
[<contenttweaker:so314za>, <ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>],
[<ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>],
[<ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>]
]);

Infuser.addRecipe(<contenttweaker:so314>, <fluid:oxygen>*1000, <contenttweaker:so314ox>);
Infuser.addRecipe(<contenttweaker:so314>, <fluid:nitrogen>*1000, <contenttweaker:so314ni>);
AlloyFurnace.addRecipe(<contenttweaker:so314>, <ore:dustZirconium>|<ore:ingotZirconium>, <contenttweaker:so314za>);
Infuser.addRecipe(<contenttweaker:mix314>, <fluid:oxygen>*1000, <contenttweaker:mox314>);
Infuser.addRecipe(<contenttweaker:mix314>, <fluid:nitrogen>*1000, <contenttweaker:mni314>);
AlloyFurnace.addRecipe(<contenttweaker:mix314>, <ore:dustZirconium>|<ore:ingotZirconium>, <contenttweaker:mza314>);


// MSR Fuel Production
Melter.addRecipe(<contenttweaker:so314>, <liquid:so314>*144, 2.0, 1.0, 0.0);
Melter.addRecipe(<contenttweaker:mix314>, <liquid:mix314>*144, 4.0, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:so314>*144, <liquid:uranium_238>*1152, <liquid:mix314>*1296, 4.0, 1.0, 0.0);
ChemicalReactor.addRecipe(<liquid:mix314>*72, <liquid:fluorine>*500, <liquid:mf4314>*72, null, 2.0, 1.0, 0.0);
SaltMixer.addRecipe(<liquid:mf4314>*72, <liquid:flibe>*72, <liquid:mf4314flibe>*72, 2.0, 1.0, 0.0);


// Fission Recipes
SolidFission.addRecipe(<contenttweaker:mox314>, <contenttweaker:dmox314>, 1500, 1296, 2.30, 36, 0.03, false, 168.0e-6);
SolidFission.addRecipe(<contenttweaker:mni314>, <contenttweaker:dmni314>, 1800, 1036, 2.30, 44, 0.03, false, 168.0e-6);
SolidFission.addRecipe(<contenttweaker:mza314>, <contenttweaker:dmza314>, 1200, 1620, 2.30, 28, 0.03, false, 168.0e-6);

SaltFission.addRecipe(<liquid:mf4314flibe>, <liquid:dmf4314flibe>, 13, 1296, 2.35, 36, 0.03, false, 16.8e-6);

// Denitrification, Deoxidation, Dezirconation, Defluorification recipes
furnace.addRecipe(<contenttweaker:so314>, <contenttweaker:so314ox>);
furnace.addRecipe(<contenttweaker:so314>, <contenttweaker:so314ni>);
Separator.addRecipe(<contenttweaker:so314za>, <contenttweaker:so314>, <ore:dustZirconium>);
furnace.addRecipe(<contenttweaker:to316>, <contenttweaker:to316ox>);
furnace.addRecipe(<contenttweaker:to316>, <contenttweaker:to316ni>);
Separator.addRecipe(<contenttweaker:to316za>, <contenttweaker:to316>, <ore:dustZirconium>);
furnace.addRecipe(<contenttweaker:to317>, <contenttweaker:to317ox>);
furnace.addRecipe(<contenttweaker:to317>, <contenttweaker:to317ni>);
Separator.addRecipe(<contenttweaker:to317za>, <contenttweaker:to317>, <ore:dustZirconium>);
furnace.addRecipe(<contenttweaker:mix314>, <contenttweaker:mox314>);
furnace.addRecipe(<contenttweaker:mix314>, <contenttweaker:mni314>);
Separator.addRecipe(<contenttweaker:mza314>, <contenttweaker:mix314>, <ore:dustZirconium>);
Centrifuge.addRecipe(<liquid:mf4314flibe>*72, <liquid:mf4314>*72, <liquid:flibe>*72, null, null, null, null);
Electrolyzer.addRecipe(<liquid:mf4314>*72, <liquid:mix314>*72, <liquid:fluorine>*500, null, null);

furnace.addRecipe(<contenttweaker:dmix314>, <contenttweaker:dmox314>);
furnace.addRecipe(<contenttweaker:dmix314>, <contenttweaker:dmni314>);
Separator.addRecipe(<contenttweaker:dmza314>, <contenttweaker:dmix314>, <ore:dustZirconium>);
Centrifuge.addRecipe(<liquid:dmf4314flibe>*72, <liquid:dmf4314>*72, <liquid:flibe>*72, null, null, null, null);
Electrolyzer.addRecipe(<liquid:dmf4314>*72, <liquid:dmix314>*72, <liquid:fluorine>*500, null, null);

IngotFormer.addRecipe(<liquid:so314>*144, <contenttweaker:so314>);
IngotFormer.addRecipe(<liquid:mix314>*144, <contenttweaker:mix314>);
IngotFormer.addRecipe(<liquid:dmix314>*144, <contenttweaker:dmix314>);
IngotFormer.addRecipe(<liquid:to316>*144, <contenttweaker:to316>);
IngotFormer.addRecipe(<liquid:to317>*144, <contenttweaker:to317>);


// Fuel Reprocessing
val sr = ChanceItemIngredient.create(<ore:dustStrontium90>, 50) as IIngredient;
val pm = ChanceItemIngredient.create(<ore:dustPromethium147>, 50) as IIngredient;
val srfluid = ChanceFluidIngredient.create(<liquid:strontium_90>*16, 25, 16) as IIngredient;
val pmfluid = ChanceFluidIngredient.create(<liquid:promethium_147>*16, 25, 16) as IIngredient;

FuelReprocessor.addRecipe(<contenttweaker:dmix314>*9, <contenttweaker:to316>, <contenttweaker:to317>*2, sr, null,
<ore:ingotPlutonium239>*3, <ore:ingotAmericium241>*2, pm, null);
FuelReprocessor.addRecipe(<contenttweaker:dmox314>*9, <contenttweaker:to316ox>, <contenttweaker:to317ox>*2, sr, null,
<ore:ingotPlutonium239Oxide>.firstItem*3, <ore:ingotAmericium241Oxide>.firstItem*2, pm, null);
FuelReprocessor.addRecipe(<contenttweaker:dmni314>*9, <contenttweaker:to316ni>, <contenttweaker:to317ni>*2, sr, null,
<ore:ingotPlutonium239Nitride>.firstItem*3, <ore:ingotAmericium241Nitride>.firstItem*2, pm, null);
FuelReprocessor.addRecipe(<contenttweaker:dmza314>*9, <contenttweaker:to316za>, <contenttweaker:to317za>*2, sr, <ore:dustZirconium>,
<ore:ingotPlutonium239ZA>.firstItem*3, <ore:ingotAmericium241ZA>.firstItem*2, pm, null);
Centrifuge.addRecipe(<fluid:dmix314>*144, <fluid:to316>*16, <fluid:to317>*16, srfluid,
<fluid:plutonium_239>*48, <fluid:americium_241>*32, pmfluid);


Radiation.setRadiationLevel(<contenttweaker:so314>, 54.0e-6);
Radiation.setRadiationLevel(<contenttweaker:so314ni>, 54.0e-6);
Radiation.setRadiationLevel(<contenttweaker:so314ox>, 54.0e-6);
Radiation.setRadiationLevel(<contenttweaker:so314za>, 54.0e-6);

Radiation.setRadiationLevel(<contenttweaker:mix314>, 57.0e-6);
Radiation.setRadiationLevel(<contenttweaker:mni314>, 57.0e-6);
Radiation.setRadiationLevel(<contenttweaker:mox314>, 57.0e-6);
Radiation.setRadiationLevel(<contenttweaker:mza314>, 57.0e-6);

Radiation.setRadiationLevel(<contenttweaker:dmix314>, 68.0e-3);
Radiation.setRadiationLevel(<contenttweaker:dmni314>, 68.0e-3);
Radiation.setRadiationLevel(<contenttweaker:dmox314>, 68.0e-3);
Radiation.setRadiationLevel(<contenttweaker:dmza314>, 68.0e-3);

Radiation.setRadiationLevel(<contenttweaker:to316>, 450.0e-6);
Radiation.setRadiationLevel(<contenttweaker:to316ni>, 450.0e-6);
Radiation.setRadiationLevel(<contenttweaker:to316ox>, 450.0e-6);
Radiation.setRadiationLevel(<contenttweaker:to316za>, 450.0e-6);

Radiation.setRadiationLevel(<contenttweaker:to317>, 1.4e-3);
Radiation.setRadiationLevel(<contenttweaker:to317ni>, 1.4e-3);
Radiation.setRadiationLevel(<contenttweaker:to317ox>, 1.4e-3);
Radiation.setRadiationLevel(<contenttweaker:to317za>, 1.4e-3);