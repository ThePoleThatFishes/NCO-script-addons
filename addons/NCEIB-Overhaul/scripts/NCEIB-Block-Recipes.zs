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

var blocks = {feb: [<contenttweaker:ferroboronblock>, <ore:ingotFerroboron>], tough: [<contenttweaker:toughblock>, <ore:ingotTough>],
hc: [<contenttweaker:hardcarbonblock>, <ore:ingotHardCarbon>], tc: [<contenttweaker:thermoconductingblock>, <ore:ingotThermoconducting>],
extr: [<contenttweaker:extremeblock>, <ore:ingotExtreme>], hsla: [<contenttweaker:hslasteelblock>, <ore:ingotHSLASteel>], 
sic: [<contenttweaker:sicblock>, <ore:ingotSiliconCarbide>], sicsiccmc: [<contenttweaker:sicsiccmcblock>, <ore:ingotSiCSiCCMC>],
za: [<contenttweaker:zircaloyblock>, <ore:ingotZircaloy>], pbpt: [<contenttweaker:leadplatinumblock>, <ore:ingotLeadPlatinum>],
snag: [<contenttweaker:tinsilverblock>, <ore:ingotTinSilver>], cuag: [<contenttweaker:shibuichiblock>, <ore:ingotShibuichi>],
steel: [<contenttweaker:steelblock>, <nuclearcraft:alloy:5>], limno2: [<contenttweaker:limno2block>, <ore:ingotLithiumManganeseDioxide>],
mgb2: [<contenttweaker:mgb2block>, <ore:ingotMagnesiumDiboride>], bronze: [<contenttweaker:bronzeblock>, <nuclearcraft:alloy:0>],
zrmo: [<contenttweaker:zrmoblock>, <ore:ingotZirconiumMolybdenum>], mo: [<contenttweaker:moblock>, <contenttweaker:moingot>],
bas: [<contenttweaker:basblock>, <ore:gemBoronArsenide>], bn: [<contenttweaker:bnblock>, <ore:gemBoronNitride>], 
carob: [<contenttweaker:carobblock>, <ore:gemCarobbiite>], fluor: [<contenttweaker:fluorblock>, <ore:gemFluorite>],
si: [<contenttweaker:siblock>, <ore:itemSilicon>], rhodo: [<contenttweaker:rhodoblock>, <ore:gemRhodochrosite>],
villi: [<contenttweaker:villiblock>, <ore:gemVilliaumite>], sr90: [<contenttweaker:sr90block>, <ore:ingotStrontium90>], 
bi: [<contenttweaker:biblock>, <ore:ingotBismuth>], cs137: [<contenttweaker:cs137block>, <ore:ingotCaesium137>], 
eu155: [<contenttweaker:eu155block>, <ore:ingotEuropium155>], po: [<contenttweaker:poblock>, <ore:ingotPolonium>],
pm147: [<contenttweaker:pm147block>, <ore:ingotPromethium147>], pa233: [<contenttweaker:pa233block>, <ore:ingotProtactinium233>],
ra: [<contenttweaker:rablock>, <ore:ingotRadium>], ru106: [<contenttweaker:ru106block>, <ore:ingotRuthenium106>], 
tbp: [<contenttweaker:tbpblock>, <ore:ingotTBP>], cmn: [<contenttweaker:cmnblock>, <ore:ingotCarbonManganese>]} as IIngredient[][string];

var oreEntries = ["blockManganeseOxide", "blockManganeseDioxide", "blockFerroboron", "blockTough", "blockHardCarbon", "blockThermoconducting", "blockExtreme",
"blockHSLASteel", "blockSiliconCarbide", "blockSiCSiCCMC", "blockZircaloy", "blockLeadPlatinum", "blockTinSilver", "blockShibuichi", "blockSteel",
"blockLithiumManganeseDioxide", "blockMagnesiumDiboride", "blockBronze", "blockZirconiumMolybdenum", "blockMolybdenum", "blockBoronArsenide",
"blockBoronNitride", "blockCarobbiite", "blockFluorite", "blockSilicon", "blockRhodochrosite", "blockVilliaumite", "blockStrontium90", "blockBismuth",
"blockCaesium137", "blockEuropium155", "blockPolonium", "blockPromethium147", "blockProtactinium233", "blockRadium", "blockRuthenium106", "blockTBP",
"blockCarbonManganese"] as string[];

var oreBlocks = { <ore:blockManganeseOxide>: <nuclearcraft:ingot_block:14>, <ore:blockManganeseDioxide>: <nuclearcraft:ingot_block:15>,
<ore:blockFerroboron>: <contenttweaker:ferroboronblock>, <ore:blockTough>: <contenttweaker:toughblock>,
<ore:blockHardCarbon>: <contenttweaker:hardcarbonblock>, <ore:blockThermoconducting>: <contenttweaker:thermoconductingblock>, 
<ore:blockExtreme>: <contenttweaker:extremeblock>, <ore:blockHSLASteel>: <contenttweaker:hslasteelblock>, <ore:blockSiliconCarbide>: <contenttweaker:sicblock>,
<ore:blockSiCSiCCMC>: <contenttweaker:sicsiccmcblock>, <ore:blockZircaloy>: <contenttweaker:zircaloyblock>, <ore:blockLeadPlatinum>: <contenttweaker:leadplatinumblock>,
<ore:blockTinSilver>: <contenttweaker:tinsilverblock>, <ore:blockShibuichi>: <contenttweaker:shibuichiblock>, <ore:blockSteel>: <contenttweaker:steelblock>,
<ore:blockLithiumManganeseDioxide>: <contenttweaker:limno2block>, <ore:blockMagnesiumDiboride>: <contenttweaker:mgb2block>, <ore:blockBronze>: <contenttweaker:bronzeblock>,
<ore:blockZirconiumMolybdenum>: <contenttweaker:zrmoblock>, <ore:blockMolybdenum>: <contenttweaker:moblock>, <ore:blockBoronArsenide>: <contenttweaker:basblock>,
<ore:blockBoronNitride>: <contenttweaker:bnblock>, <ore:blockCarobbiite>: <contenttweaker:carobblock>, <ore:blockFluorite>: <contenttweaker:fluorblock>,
<ore:blockSilicon>: <contenttweaker:siblock>, <ore:blockRhodochrosite>: <contenttweaker:rhodoblock>, <ore:blockVilliaumite>: <contenttweaker:villiblock>,
<ore:blockStrontium90>: <contenttweaker:sr90block>, <ore:blockBismuth>: <contenttweaker:biblock>, <ore:blockCaesium137>: <contenttweaker:cs137block>,
<ore:blockEuropium155>: <contenttweaker:eu155block>, <ore:blockPolonium>: <contenttweaker:poblock>, <ore:blockPromethium147>: <contenttweaker:pm147block>,
<ore:blockProtactinium233>: <contenttweaker:pa233block>, <ore:blockRadium>: <contenttweaker:rablock>, <ore:blockRuthenium106>: <contenttweaker:ru106block>,
<ore:blockTBP>: <contenttweaker:tbpblock>, <ore:blockCarbonManganese>: <contenttweaker:cmnblock>} as IItemStack[IOreDictEntry];


for entry in oreEntries {
	oreDict.entry;
	}
	
var steelFlag = <ore:blockSteel>.empty as bool;
var bronzeFlag = <ore:blockBronze>.empty as bool;
var sr90Flag = <ore:blockStrontium90>.empty as bool;
	
for oreName, oreBlock in oreBlocks {
	oreName.add(oreBlock);
	}

oreDict.gemSilicon;
<ore:gemSilicon>.add(<nuclearcraft:gem:6>);

var oreEntriesIngots = ["ingotMolybdenum", "ingotStrontium90", "ingotBismuth", "ingotCaesium137", "ingotEuropium155", "ingotPolonium", "ingotPromethium147",
"ingotProtactinium233", "ingotRadium", "ingotRuthenium106", "ingotTBP", "ingotCarbonManganese"] as string[];

var oreIngots = { <ore:ingotMolybdenum>: <contenttweaker:moingot>, <ore:ingotStrontium90>: <contenttweaker:sr90ingot>, 
<ore:ingotBismuth>: <contenttweaker:biingot>, <ore:ingotCaesium137>: <contenttweaker:cs137ingot>, <ore:ingotEuropium155>: <contenttweaker:eu155ingot>,
<ore:ingotPolonium>: <contenttweaker:poingot>, <ore:ingotPromethium147>: <contenttweaker:pm147ingot>, <ore:ingotProtactinium233>: <contenttweaker:pa233ingot>,
<ore:ingotRadium>: <contenttweaker:raingot>, <ore:ingotRuthenium106>: <contenttweaker:ru106ingot>, <ore:ingotTBP>: <contenttweaker:tbpingot>,
<ore:ingotCarbonManganese>: <contenttweaker:cmningot>} as IItemStack[IOreDictEntry];

for entry in oreEntriesIngots {
	oreDict.entry;
}
	
for oreName, oreIngot in oreIngots {
	oreName.add(oreIngot);
}

for name, ingredients in blocks {
	recipes.addShaped(name ~ "_to_block", ingredients[0].items[0], [
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]],
	[ingredients[1], ingredients[1], ingredients[1]]
	]);
	recipes.addShapeless(name ~ "_from_block", ingredients[1].items[0]*9, [ingredients[0]]); 
	}
	
AlloyFurnace.addRecipe(<ore:blockCopper>*3, <ore:blockSilver>, <contenttweaker:shibuichiblock>*4, 12.0, 0.5, 0.0);
AlloyFurnace.addRecipe(<ore:blockTin>*3, <ore:blockSilver>, <contenttweaker:tinsilverblock>*4, 12.0, 0.5, 0.0);
AlloyFurnace.addRecipe(<ore:blockLead>*3, <ore:blockPlatinum>, <contenttweaker:leadplatinumblock>*4, 12.0, 0.5, 0.0);	
AlloyFurnace.addRecipe(<ore:blockFerroboron>, <ore:blockLithium>, <contenttweaker:toughblock>*2, 8.0, 1.5, 0.0);
AlloyFurnace.addRecipe(<ore:blockGraphite>*2, <ore:blockDiamond>, <contenttweaker:hardcarbonblock>*2, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockTough>, <ore:blockHardCarbon>, <contenttweaker:extremeblock>, 16.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockExtreme>, <ore:blockBoronArsenide>, <contenttweaker:thermoconductingblock>*2, 12.0, 1.5, 0.0);
AlloyFurnace.addRecipe(<ore:blockIron>*15, <ore:blockCarbonManganese>, <contenttweaker:hslasteelblock>*16, 64.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockZirconium>*7, <ore:blockTin>, <contenttweaker:zircaloyblock>*8, 32.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockLithium>, <ore:blockManganeseDioxide>, <contenttweaker:limno2block>*2, 12.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockMagnesium>, <ore:blockBoron>*2, <contenttweaker:mgb2block>*3, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockSilicon>, <ore:blockGraphite>, <contenttweaker:sicblock>*2, 16.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockZirconium>, <ore:blockMolybdenum>*15, <contenttweaker:zrmoblock>*16, 64.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:ingotZirconium>, <ore:ingotMolybdenum>*15, <ore:ingotZirconiumMolybdenum>*16, 8.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockGraphite>, <ore:blockManganese>, <contenttweaker:cmnblock>*2, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:ingotGraphite>|<ore:dustGraphite>, <ore:ingotManganese>|<ore:dustManganese>, <contenttweaker:cmningot>*2, 1.0, 1.0, 0.0);
AlloyFurnace.removeRecipeWithOutput(<ore:ingotHSLASteel>*16);
AlloyFurnace.addRecipe(<ore:ingotCarbonManganese>|<ore:dustCarbonManganese>, <ore:ingotIron>*15|<ore:dustIron>*15, <ore:ingotHSLASteel>*16, 8.0, 2.0, 0.0);

Infuser.addRecipe(<contenttweaker:shibuichiblock>, <liquid:redstone>*2250, <ore:blockSignalum>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<contenttweaker:tinsilverblock>, <liquid:glowstone>*2250, <ore:blockLumium>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<contenttweaker:leadplatinumblock>, <liquid:ender>*2250, <ore:blockEnderium>, 8.0, 1.0, 0.0);

Infuser.addRecipe(<ore:blockManganese>, <liquid:oxygen>*9000, <nuclearcraft:ingot_block:14>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<ore:blockManganeseOxide>, <liquid:oxygen>*9000, <nuclearcraft:ingot_block:15>, 8.0, 1.0, 0.0);
furnace.addRecipe(<ore:blockManganese>.firstItem, <ore:blockManganeseOxide>);
furnace.addRecipe(<ore:blockManganeseOxide>.firstItem, <ore:blockManganeseDioxide>);
furnace.addRecipe(<contenttweaker:moingot>, <nuclearcraft:fission_dust:6>);
IngotFormer.addRecipe(<liquid:molybdenum>*144, <contenttweaker:moingot>);

// SiC-SiC CMC Recipes, delete until the next comment to disable these recipes!
Enricher.addRecipe(<ore:ingotSiliconCarbide>, <liquid:hydrogen>*1000, <liquid:sic_vapor>*1000);
Infuser.addRecipe(<ore:ingotSiliconCarbide>, <liquid:sic_vapor>*1000, <nuclearcraft:part:13>);
Infuser.addRecipe(<ore:fiberSiliconCarbide>, <liquid:sic_vapor>*1000, <nuclearcraft:alloy:14>);

Enricher.addRecipe(<ore:blockSiliconCarbide>, <liquid:hydrogen>*9000, <liquid:sic_vapor>*9000, 8.0, 1.0, 0.0);
Infuser.addRecipe(<ore:blockSiliconCarbide>, <liquid:sic_vapor>*9000, <nuclearcraft:part:13>*9, 8.0, 1.0, 0.0);
// Delete until here!!

furnace.addRecipe(<ore:blockManganeseOxide>.firstItem, <ore:blockRhodochrosite>);
Manufactory.addRecipe(<ore:blockCarobbiite>, <ore:dustPotassiumFluoride>*9, 8.0, 1.0, 0.0);
Manufactory.addRecipe(<ore:blockVilliaumite>, <ore:dustSodiumFluoride>*9, 8.0, 1.0, 0.0);
Enricher.addRecipe(<ore:blockFluorite>, <liquid:water>*9000, <liquid:fluorite_water>*5994, 8.0, 1.0, 0.0);
Manufactory.addRecipe(<ore:blockBoronNitride>, <ore:dustBoronNitride>*9, 8.0, 1.0, 0.0);

Melter.addRecipe(<ore:ingotStrontium90>, <liquid:strontium_90>*144);
IngotFormer.addRecipe(<liquid:strontium_90>*144, <ore:ingotStrontium90>);
DecayHastener.addRecipe(<ore:ingotStrontium90>, <ore:ingotZirconium>, 1.125, 1.0, 34.44e-3);

FissionIrradiator.addRecipe(<ore:blockThorium>, <ore:blockTBP>, 1440000, 0.0, 0.0, 52.416e-12);
FissionIrradiator.addRecipe(<ore:blockTBP>, <ore:blockProtactinium233>, 24480000, 0.0, 0.0, 61.344e-3);
FissionIrradiator.addRecipe(<ore:blockBismuth>, <ore:blockPolonium>, 17280000, 0.0, 0.5, 36.432e-21);
DecayHastener.addRecipe(<ore:blockTBP>, <ore:ingotTBU>*9, 1.0125, 1.0, 83.6e-3);
DecayHastener.addRecipe(<ore:blockProtactinium233>, <ore:ingotUranium233>*9, 0.84375, 1.0, 1.5);
DecayHastener.addRecipe(<ore:blockRadium>, <ore:blockLead>, 1.6785, 1.0, 6.25e-4);
DecayHastener.addRecipe(<ore:blockPolonium>, <ore:blockLead>, 0.95625, 1.0, 293.0e-3);
DecayHastener.addRecipe(<ore:blockUranium238>, <ore:blockRadium>, 148.275, 1.0, 225.0e-12);

furnace.addRecipe(<ore:ingotBismuth>.firstItem, <ore:dustBismuth>.firstItem);
furnace.addRecipe(<ore:ingotCaesium137>.firstItem, <ore:dustCaesium137>.firstItem);
furnace.addRecipe(<ore:ingotEuropium155>.firstItem, <ore:dustEuropium155>.firstItem);
furnace.addRecipe(<ore:ingotPolonium>.firstItem, <ore:dustPolonium>.firstItem);
furnace.addRecipe(<ore:ingotPromethium147>.firstItem, <ore:dustPromethium147>.firstItem);
furnace.addRecipe(<ore:ingotProtactinium233>.firstItem, <ore:dustProtactinium233>.firstItem);
furnace.addRecipe(<ore:ingotRadium>.firstItem, <ore:dustRadium>.firstItem);
furnace.addRecipe(<ore:ingotRuthenium106>.firstItem, <ore:dustRuthenium106>.firstItem);
furnace.addRecipe(<ore:ingotStrontium90>.firstItem, <ore:dustStrontium90>.firstItem);
furnace.addRecipe(<ore:ingotTBP>.firstItem, <ore:dustTBP>.firstItem);



val gems = {<ore:blockCarobbiite>: <liquid:carobbiite>*5994, <ore:blockVilliaumite>: <liquid:villiaumite>*5994, <ore:blockFluorite>: <liquid:fluorite>*5994,
<ore:blockBoronArsenide>: <liquid:bas>*5994} as IIngredient[IIngredient];

for gemblock, gemfluid in gems {
	Melter.addRecipe(gemblock, gemfluid, 8.0, 1.0, 0.0);
}

if (!steelFlag) {
		AlloyFurnace.addRecipe(<ore:blockSteel>, <ore:blockBoron>, <contenttweaker:ferroboronblock>*2, 8.0, 1.5, 0.0);
		recipes.remove(<contenttweaker:steelblock>);
		JEI.removeAndHide(<contenttweaker:steelblock>);
		recipes.remove(<nuclearcraft:alloy:5>);
		JEI.removeAndHide(<nuclearcraft:alloy:5>);}
else {
		AlloyFurnace.addRecipe(<ore:blockGraphite>*2, <ore:blockIron>, <contenttweaker:steelblock>, 8.0, 1.0, 0.0);
		AlloyFurnace.addRecipe(<ore:blockCoal>*2, <ore:blockIron>, <contenttweaker:steelblock>, 8.0, 1.0, 0.0);
		AlloyFurnace.addRecipe(<contenttweaker:steelblock>, <ore:blockBoron>, <contenttweaker:ferroboronblock>*2, 8.0, 1.5, 0.0);}
		
if (!bronzeFlag) {
	recipes.remove(<contenttweaker:bronzeblock>);
	JEI.removeAndHide(<contenttweaker:bronzeblock>);
	recipes.remove(<nuclearcraft:alloy:0>);
	JEI.removeAndHide(<nuclearcraft:alloy:0>);}
else {
	AlloyFurnace.addRecipe(<ore:blockCopper>*3, <ore:blockTin>, <contenttweaker:bronzeblock>*4, 8.0, 1.0, 0.0); }
	
if (!sr90Flag) {
	recipes.remove(<contenttweaker:sr90block>);
	JEI.removeAndHide(<contenttweaker:sr90block>);
	}

	
	
