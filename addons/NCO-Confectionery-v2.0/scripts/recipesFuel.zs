#modloaded qmd

import mods.qmd.particle;
import mods.qmd.accelerator_source;
import mods.qmd.target_chamber;
import mods.qmd.item_source;
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

accelerator_source.addRecipe(<fluid:arsenic>*10, (<particle:arsenic_ion>*10000)~0.2);

target_chamber.addRecipe(<ore:ingotPlutonium239>, ((<particle:arsenic_ion>*3000000)^6.4e3)~1.0, <ore:ingotSmorium314>, <particle:proton>,
null, null, 45.0e3, 0.34);
target_chamber.addRecipe(<ore:ingotPlutonium239Oxide>, ((<particle:arsenic_ion>*3000000)^6.4e3)~1.0, <ore:ingotSmorium314Oxide>, <particle:proton>,
null, null, 45.0e3, 0.34);
target_chamber.addRecipe(<ore:ingotPlutonium239Nitride>, ((<particle:arsenic_ion>*3000000)^6.4e3)~1.0, <ore:ingotSmorium314Nitride>, <particle:proton>,
null, null, 45.0e3, 0.34);
target_chamber.addRecipe(<ore:ingotPlutonium239ZA>, ((<particle:arsenic_ion>*3000000)^6.4e3)~1.0, <ore:ingotSmorium314ZA>, <particle:proton>,
null, null, 45.0e3, 0.34);
target_chamber.addRecipe(<ore:ingotPlutonium239Carbide>, ((<particle:arsenic_ion>*3000000)^6.4e3)~1.0, <ore:ingotSmorium314Carbide>, <particle:proton>,
null, null, 45.0e3, 0.34);


// SFR Fuel Production
recipes.addShaped("mix314", <ore:ingotMIX314>.firstItem*9, [
[<ore:ingotSmorium314>, <ore:ingotUranium238>, <ore:ingotUranium238>],
[<ore:ingotUranium238>, <ore:ingotUranium238>, <ore:ingotUranium238>],
[<ore:ingotUranium238>, <ore:ingotUranium238>, <ore:ingotUranium238>]
]);
recipes.addShaped("mox314", <ore:ingotMIX314Oxide>.firstItem*9, [
[<ore:ingotSmorium314Oxide>, <ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>],
[<ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>],
[<ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>, <ore:ingotUranium238Oxide>]
]);
recipes.addShaped("mni314", <ore:ingotMIX314Nitride>.firstItem*9, [
[<ore:ingotSmorium314Nitride>, <ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>],
[<ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>],
[<ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>, <ore:ingotUranium238Nitride>]
]);
recipes.addShaped("mza314", <ore:ingotMIX314ZA>.firstItem*9, [
[<ore:ingotSmorium314ZA>, <ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>],
[<ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>],
[<ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>, <ore:ingotUranium238ZA>]
]);
recipes.addShaped("mc314", <ore:ingotMIX314Carbide>.firstItem*9, [
[<ore:ingotSmorium314Carbide>, <ore:ingotUranium238Carbide>, <ore:ingotUranium238Carbide>],
[<ore:ingotUranium238Carbide>, <ore:ingotUranium238Carbide>, <ore:ingotUranium238Carbide>],
[<ore:ingotUranium238Carbide>, <ore:ingotUranium238Carbide>, <ore:ingotUranium238Carbide>]
]);


// Fuel Reprocessing
val sr = ChanceItemIngredient.create(<ore:dustStrontium90>, 50) as IIngredient;
val pm = ChanceItemIngredient.create(<ore:dustPromethium147>, 50) as IIngredient;
val srfluid = ChanceFluidIngredient.create(<liquid:strontium_90>*16, 25, 16) as IIngredient;
val pmfluid = ChanceFluidIngredient.create(<liquid:promethium_147>*16, 25, 16) as IIngredient;

FuelReprocessor.addRecipe(<ore:ingotDepletedMIX314Oxide>*9, <ore:ingotThmorium316Oxide>, <ore:ingotThmorium317Oxide>*2, sr, null,
<ore:ingotPlutonium239Oxide>*3, <ore:ingotAmericium241Oxide>*2, pm, null);
FuelReprocessor.addRecipe(<ore:ingotDepletedMIX314Nitride>*9, <ore:ingotThmorium316Nitride>, <ore:ingotThmorium317Nitride>*2, sr, null,
<ore:ingotPlutonium239Nitride>*3, <ore:ingotAmericium241Nitride>*2, pm, null);
FuelReprocessor.addRecipe(<ore:ingotDepletedMIX314ZA>*9, <ore:ingotThmorium316ZA>, <ore:ingotThmorium317ZA>*2, sr, <ore:dustZirconium>,
<ore:ingotPlutonium239ZA>*3, <ore:ingotAmericium241ZA>*2, pm, null);
FuelReprocessor.addRecipe(<ore:ingotDepletedMIX314TRISO>*9, <ore:ingotThmorium316Carbide>, <ore:ingotThmorium317Carbide>*2, sr, <ore:dustGraphite>*3,
<ore:ingotPlutonium239Carbide>*3, <ore:ingotAmericium241Carbide>*2, pm, <ore:ingotSiliconCarbide>);
Centrifuge.addRecipe(<fluid:depleted_mix_314>*144, <fluid:thmorium_316>*16, <fluid:thmorium_317>*16, srfluid,
<fluid:plutonium_239>*48, <fluid:americium_241>*32, pmfluid);
