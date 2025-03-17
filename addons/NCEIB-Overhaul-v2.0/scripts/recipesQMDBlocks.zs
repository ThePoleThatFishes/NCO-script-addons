#modloaded materialpart qmd

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

var blocks = {ca: [<materialpart:calcium:block>, <ore:ingotCalcium>, <ore:blockCalcium>], cr: [<materialpart:chromium:block>, <ore:ingotChromium>, <ore:blockChromium>],
hf: [<materialpart:hafnium:block>, <ore:ingotHafnium>, <ore:blockHafnium>], nd: [<materialpart:neodymium:block>, <ore:ingotNeodymium>, <ore:blockNeodymium>],
nb: [<materialpart:niobium:block>, <ore:ingotNiobium>, <ore:blockNiobium>], k: [<materialpart:potassium:block>, <ore:ingotPotassium>, <ore:blockPotassium>], 
na: [<materialpart:sodium:block>, <ore:ingotSodium>, <ore:blockSodium>], w: [<materialpart:tungsten:block>, <ore:ingotTungsten>, <ore:blockTungsten>], 
y: [<materialpart:yttrium:block>, <ore:ingotYttrium>, <ore:blockYttrium>], cfecr: [<materialpart:stainless_steel:block>, <ore:ingotStainlessSteel>, <ore:blockStainlessSteel>], 
co: [<materialpart:cobalt:block>, <ore:ingotCobalt>, <ore:blockCobalt>], ir: [<materialpart:iridium:block>, <ore:ingotIridium>, <ore:blockIridium>], 
nbsn: [<materialpart:niobium_tin:block>, <ore:ingotNiobiumTin>, <ore:blockNiobiumTin>], nbti: [<materialpart:niobium_titanium:block>, <ore:ingotNiobiumTitanium>, <ore:blockNiobiumTitanium>], 
ni: [<materialpart:nickel:block>, <ore:ingotNickel>, <ore:blockNickel>], os: [<materialpart:osmium:block>, <ore:ingotOsmium>, <ore:blockOsmium>], 
osir: [<materialpart:osmiridium:block>, <ore:ingotOsmiridium>, <ore:blockOsmiridium>], pt: [<materialpart:platinum:block>, <ore:ingotPlatinum>, <ore:blockPlatinum>], 
ti: [<materialpart:titanium:block>, <ore:ingotTitanium>, <ore:blockTitanium>], wc: [<materialpart:tungsten_carbide:block>, <ore:ingotTungstenCarbide>, <ore:blockTungstenCarbide>], 
zn: [<materialpart:zinc:block>, <ore:ingotZinc>, <ore:blockZinc>], nicr: [<materialpart:nichrome:block>, <ore:ingotNichrome>, <ore:blockNichrome>], 
superalloy: [<materialpart:super_alloy:block>, <ore:ingotSuperAlloy>, <ore:blockSuperAlloy>], er: [<materialpart:erbium:block>, <materialpart:erbium:ingot>, <ore:blockErbium>],
i: [<materialpart:iodine:block>, <materialpart:iodine:ingot>, <ore:blockIodine>], sm: [<materialpart:samarium:block>, <materialpart:samarium:ingot>, <ore:blockSamarium>],
tb: [<materialpart:terbium:block>, <materialpart:terbium:ingot>, <ore:blockTerbium>], yb: [<materialpart:ytterbium:block>, <materialpart:ytterbium:ingot>, <ore:blockYtterbium>]} as IIngredient[][string];

for name, ingredients in blocks {
	recipes.addShaped(name ~ "_to_block", ingredients[0].items[0], [
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]]
	]);
	recipes.addShapeless(name ~ "_from_block", ingredients[1].items[0]*9, [ingredients[0]]); 
	}


Manufactory.addRecipe(<ore:blockSilicon>, <ore:bouleSilicon>, 8.0, 1.5, 0.0);
Melter.addRecipe(<ore:blockSilicon>, <liquid:silicon>*1296, 8.0, 1.5, 0.0);

var everything = {<liquid:erbium>: [<materialpart:erbium:ingot>, <materialpart:erbium:block>, <ore:dustErbium>], 
<liquid:iodine>: [<materialpart:iodine:ingot>, <materialpart:iodine:block>, <ore:dustIodine>], 
<liquid:samarium>: [<materialpart:samarium:ingot>, <materialpart:samarium:block>, <ore:dustSamarium>], 
<liquid:terbium>: [<materialpart:terbium:ingot>, <materialpart:terbium:block>, <ore:dustTerbium>],
<liquid:ytterbium>: [<materialpart:ytterbium:ingot>, <materialpart:ytterbium:block>, <ore:dustYtterbium>]} as IIngredient[][ILiquidStack];

for fluid, itms in everything {
	Melter.addRecipe(itms[0], fluid*144);
	Melter.addRecipe(itms[1], fluid*1296);
	IngotFormer.addRecipe(fluid*144, itms[0]);
	Manufactory.addRecipe(itms[0], itms[2]);
	furnace.addRecipe(itms[0].items[0], itms[2]);
}

Radiation.setRadiationLevel(<ore:ingotStrontium90>, 34.44e-3);
DecayHastener.addRecipe(<ore:blockStrontium90>, <ore:blockZirconium>, 9.0, 1.0, 34.4e-3);
DecayHastener.addRecipe(<ore:blockPromethium147>, <ore:blockNeodymium>, 0.9, 1.0, 380.0e-3);
FissionIrradiator.addRecipe(<ore:blockCobalt>, <ore:ingotCobalt60>*9, 17280000, 0.0, 0.0, 0.0);



