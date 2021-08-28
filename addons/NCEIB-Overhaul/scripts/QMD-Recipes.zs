#modloaded contenttweaker qmd

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.DecayHastener;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Radiation;
import mods.nuclearcraft.FissionIrradiator;

var blocks = {ca: [<contenttweaker:cablock>, <ore:ingotCalcium>], cr: [<contenttweaker:crblock>, <ore:ingotChromium>],
hf: [<contenttweaker:hfblock>, <ore:ingotHafnium>], nd: [<contenttweaker:ndblock>, <ore:ingotNeodymium>],
nb: [<contenttweaker:nbblock>, <ore:ingotNiobium>], k: [<contenttweaker:kblock>, <ore:ingotPotassium>], na: [<contenttweaker:nablock>, <ore:ingotSodium>],
w: [<contenttweaker:wblock>, <ore:ingotTungsten>], y: [<contenttweaker:yblock>, <ore:ingotYttrium>], 
cfecr: [<contenttweaker:cfecrblock>, <ore:ingotStainlessSteel>], co: [<contenttweaker:coblock>, <ore:ingotCobalt>], 
ir: [<contenttweaker:irblock>, <ore:ingotIridium>], nbsn: [<contenttweaker:nbsnblock>, <ore:ingotNiobiumTin>], 
nbti: [<contenttweaker:nbtiblock>, <ore:ingotNiobiumTitanium>], ni: [<contenttweaker:niblock>, <ore:ingotNickel>],
os: [<contenttweaker:osblock>, <ore:ingotOsmium>], osir: [<contenttweaker:osirblock>, <ore:ingotOsmiridium>], 
pt: [<contenttweaker:ptblock>, <ore:ingotPlatinum>], ti: [<contenttweaker:tiblock>, <ore:ingotTitanium>], 
wc: [<contenttweaker:wcblock>, <ore:ingotTungstenCarbide>], zn: [<contenttweaker:znblock>, <ore:ingotZinc>],
nicr: [<contenttweaker:nicrblock>, <ore:ingotNichrome>], superalloy: [<contenttweaker:superalloyblock>, <ore:ingotSuperAlloy>],
er: [<contenttweaker:erblock>, <contenttweaker:eringot>], i: [<contenttweaker:iblock>, <contenttweaker:iingot>], 
sm: [<contenttweaker:smblock>, <contenttweaker:smingot>], tb: [<contenttweaker:tbblock>, <contenttweaker:tbingot>], 
yb: [<contenttweaker:ybblock>, <contenttweaker:ybingot>]} as IIngredient[][string];

for name, ingredients in blocks {
	recipes.addShaped(name ~ "_to_block", ingredients[0].items[0], [
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]]
	]);
	recipes.addShapeless(name ~ "_from_block", ingredients[1].items[0]*9, [ingredients[0]]); 
	}


AlloyFurnace.addRecipe(<ore:blockTungsten>, <ore:blockGraphite>, <contenttweaker:wcblock>*2, 16.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockNiobium>*3, <ore:blockTin>, <contenttweaker:nbsnblock>*4, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockSteel>*5, <ore:blockChromium>, <contenttweaker:cfecrblock>*6, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockTitanium>, <ore:blockNiobium>, <contenttweaker:nbtiblock>*2, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockOsmium>, <ore:blockIridium>, <contenttweaker:osirblock>*2, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockNickel>, <ore:blockChromium>, <contenttweaker:nicrblock>*2, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockNichrome>*2, <ore:blockNiobiumTitanium>, <contenttweaker:superalloyblock>*3, 8.0, 1.0, 0.0);

Manufactory.addRecipe(<ore:blockSilicon>, <ore:bouleSilicon>, 8.0, 1.5, 0.0);
Melter.addRecipe(<ore:blockSilicon>, <liquid:silicon>*1296, 8.0, 1.5, 0.0);

var everything = {<liquid:erbium>: [<contenttweaker:eringot>, <contenttweaker:erblock>], <liquid:iodine>: [<contenttweaker:iingot>, <contenttweaker:iblock>], 
<liquid:samarium>: [<contenttweaker:smingot>, <contenttweaker:smblock>], <liquid:terbium>: [<contenttweaker:tbingot>, <contenttweaker:tbblock>],
<liquid:ytterbium>: [<contenttweaker:ybingot>, <contenttweaker:ybblock>]} as IIngredient[][ILiquidStack];

for fluid, itms in everything {
	Melter.addRecipe(itms[0], fluid*144);
	Melter.addRecipe(itms[1], fluid*1296);
	IngotFormer.addRecipe(fluid*144, itms[0]);
}

Radiation.setRadiationLevel(<ore:ingotStrontium90>, 34.44e-3);
DecayHastener.addRecipe(<ore:blockStrontium90>, <ore:blockZirconium>, 9.0, 1.0, 34.4e-3);
DecayHastener.addRecipe(<ore:blockPromethium147>, <ore:blockNeodymium>, 0.9, 1.0, 380.0e-3);
FissionIrradiator.addRecipe(<ore:blockCobalt>, <ore:ingotCobalt60>*9, 17280000, 0.0, 0.0, 0.0);

var oreblocks = { <ore:blockCalcium>: <contenttweaker:cablock>, <ore:blockChromium>: <contenttweaker:crblock>, <ore:blockHafnium>: <contenttweaker:hfblock>,
<ore:blockNeodymium>: <contenttweaker:ndblock>, <ore:blockNiobium>: <contenttweaker:nbblock>, <ore:blockPotassium>: <contenttweaker:kblock>, 
<ore:blockSodium>: <contenttweaker:nablock>, <ore:blockTungsten>: <contenttweaker:wblock>, <ore:blockYttrium>: <contenttweaker:yblock>,
<ore:blockStainlessSteel>: <contenttweaker:cfecrblock>, <ore:blockCobalt>: <contenttweaker:coblock>, <ore:blockIridium>: <contenttweaker:irblock>,
<ore:blockNiobiumTin>: <contenttweaker:nbsnblock>, <ore:blockNiobiumTitanium>: <contenttweaker:nbtiblock>, <ore:blockNickel>: <contenttweaker:niblock>,
<ore:blockOsmium>: <contenttweaker:osblock>, <ore:blockOsmiridium>: <contenttweaker:osirblock>, <ore:blockPlatinum>: <contenttweaker:ptblock>,
<ore:blockTitanium>: <contenttweaker:tiblock>, <ore:blockTungstenCarbide>: <contenttweaker:wcblock>, <ore:blockZinc>: <contenttweaker:znblock>,
<ore:blockNichrome>: <contenttweaker:nicrblock>, <ore:blockSuperAlloy>: <contenttweaker:superalloyblock>, <ore:blockErbium>: <contenttweaker:erblock>,
<ore:blockIodine>: <contenttweaker:iblock>, <ore:blockSamarium>: <contenttweaker:smblock>, <ore:blockTerbium>: <contenttweaker:tbblock>,
<ore:blockYtterbium>: <contenttweaker:ybblock>} as IItemStack[IOreDictEntry];

for oreentry, block in oreblocks {
	if (oreentry.items.length > 1) {
		recipes.remove(block);
		JEI.removeAndHide(block);
	}
}


