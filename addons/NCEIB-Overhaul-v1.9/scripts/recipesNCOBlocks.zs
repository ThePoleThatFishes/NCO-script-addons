import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.DecayHastener;
import mods.nuclearcraft.FissionIrradiator;
import mods.jei.JEI;

var blocks = {feb: [<materialpart:ferroboron:block>, <ore:ingotFerroboron>], tough: [<materialpart:tough:block>, <ore:ingotTough>],
hc: [<materialpart:hard_carbon:block>, <ore:ingotHardCarbon>], tc: [<materialpart:thermoconducting:block>, <ore:ingotThermoconducting>],
extr: [<materialpart:extreme:block>, <ore:ingotExtreme>], hsla: [<materialpart:h_s_l_a_steel:block>, <ore:ingotHSLASteel>], 
sic: [<materialpart:silicon_carbide:block>, <ore:ingotSiliconCarbide>], sicsiccmc: [<materialpart:si_c_si_c_c_m_c:block>, <ore:ingotSiCSiCCMC>],
za: [<materialpart:zircaloy:block>, <ore:ingotZircaloy>], pbpt: [<materialpart:lead_platinum:block>, <ore:ingotLeadPlatinum>],
snag: [<materialpart:tin_silver:block>, <ore:ingotTinSilver>], cuag: [<materialpart:shibuichi:block>, <ore:ingotShibuichi>],
steel: [<materialpart:steel:block>, <nuclearcraft:alloy:5>], limno2: [<materialpart:lithium_manganese_dioxide:block>, <ore:ingotLithiumManganeseDioxide>],
mgb2: [<materialpart:magnesium_diboride:block>, <ore:ingotMagnesiumDiboride>], bronze: [<materialpart:bronze:block>, <nuclearcraft:alloy:0>],
zrmo: [<materialpart:zirconium_molybdenum:block>, <ore:ingotZirconiumMolybdenum>],
bas: [<materialpart:boron_arsenide:block>, <ore:gemBoronArsenide>], bn: [<materialpart:boron_nitride:block>, <ore:gemBoronNitride>], 
carob: [<materialpart:carobbiite:block>, <ore:gemCarobbiite>], fluor: [<materialpart:fluorite:block>, <ore:gemFluorite>],
si: [<materialpart:silicon:block>, <ore:itemSilicon>], rhodo: [<materialpart:rhodochrosite:block>, <ore:gemRhodochrosite>],
villi: [<materialpart:villiaumite:block>, <ore:gemVilliaumite>], 
bi: [<materialpart:bismuth:block>, <ore:ingotBismuth>], cs137: [<materialpart:caesium137:block>, <ore:ingotCaesium137>], 
eu155: [<materialpart:europium155:block>, <ore:ingotEuropium155>], po: [<materialpart:polonium:block>, <ore:ingotPolonium>],
pm147: [<materialpart:promethium147:block>, <ore:ingotPromethium147>], pa233: [<materialpart:protactinium233:block>, <ore:ingotProtactinium233>],
ra: [<materialpart:radium:block>, <ore:ingotRadium>], ru106: [<materialpart:ruthenium106:block>, <ore:ingotRuthenium106>], 
tbp: [<materialpart:t_b_p:block>, <ore:ingotTBP>], cmn: [<materialpart:carbon_manganese:block>, <ore:ingotCarbonManganese>]} as IIngredient[][string];

for name, ingredients in blocks {
	recipes.addShaped(name ~ "_to_block", ingredients[0].items[0], [
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]]
	]);
	recipes.addShapeless(name ~ "_from_block", ingredients[1].items[0]*9, [ingredients[0]]); 
	}

Infuser.addRecipe(<materialpart:shibuichi:block>, <liquid:redstone>*2250, <ore:blockSignalum>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<materialpart:tin_silver:block>, <liquid:glowstone>*2250, <ore:blockLumium>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<materialpart:lead_platinum:block>, <liquid:ender>*2250, <ore:blockEnderium>, 8.0, 1.0, 0.0);

Infuser.addRecipe(<ore:blockManganese>, <liquid:oxygen>*9000, <nuclearcraft:ingot_block:14>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<ore:blockManganeseOxide>, <liquid:oxygen>*9000, <nuclearcraft:ingot_block:15>, 8.0, 1.0, 0.0);
furnace.addRecipe(<ore:blockManganese>.firstItem, <ore:blockManganeseOxide>);
furnace.addRecipe(<ore:blockManganeseOxide>.firstItem, <ore:blockManganeseDioxide>);

furnace.addRecipe(<ore:blockManganeseOxide>.firstItem, <ore:blockRhodochrosite>);
Manufactory.addRecipe(<ore:blockCarobbiite>, <ore:dustPotassiumFluoride>*9, 8.0, 1.0, 0.0);
Manufactory.addRecipe(<ore:blockVilliaumite>, <ore:dustSodiumFluoride>*9, 8.0, 1.0, 0.0);
Enricher.addRecipe(<ore:blockFluorite>, <liquid:water>*9000, <liquid:fluorite_water>*5994, 8.0, 1.0, 0.0);
Manufactory.addRecipe(<ore:blockBoronNitride>, <ore:dustBoronNitride>*9, 8.0, 1.0, 0.0);

FissionIrradiator.addRecipe(<ore:blockThorium>, <ore:blockTBP>, 1440000, 0.0, 0.0, 52.416e-12);
FissionIrradiator.addRecipe(<ore:blockTBP>, <ore:blockProtactinium233>, 24480000, 0.0, 0.0, 61.344e-3);
FissionIrradiator.addRecipe(<ore:blockBismuth>, <ore:blockPolonium>, 17280000, 0.0, 0.5, 36.432e-21);
DecayHastener.addRecipe(<ore:blockTBP>, <ore:ingotTBU>*9, 1.0125, 1.0, 83.6e-3);
DecayHastener.addRecipe(<ore:blockProtactinium233>, <ore:ingotUranium233>*9, 0.84375, 1.0, 1.5);
DecayHastener.addRecipe(<ore:blockRadium>, <ore:blockLead>, 1.6785, 1.0, 6.25e-4);
DecayHastener.addRecipe(<ore:blockPolonium>, <ore:blockLead>, 0.95625, 1.0, 293.0e-3);
DecayHastener.addRecipe(<ore:blockUranium238>, <ore:blockRadium>, 148.275, 1.0, 225.0e-12);

val gems = {<ore:blockCarobbiite>: <liquid:carobbiite>*5994, <ore:blockVilliaumite>: <liquid:villiaumite>*5994, <ore:blockFluorite>: <liquid:fluorite>*5994,
<ore:blockBoronArsenide>: <liquid:bas>*5994} as IIngredient[IIngredient];

for gemblock, gemfluid in gems {
	Melter.addRecipe(gemblock, gemfluid, 8.0, 1.0, 0.0);
}

	
	
