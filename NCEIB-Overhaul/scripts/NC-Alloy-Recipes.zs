import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.IngotFormer;
import mods.jei.JEI;

var blocks = {feb: [<contenttweaker:ferroboronblock>, <ore:ingotFerroboron>], tough: [<contenttweaker:toughblock>, <ore:ingotTough>],
hc: [<contenttweaker:hardcarbonblock>, <ore:ingotHardCarbon>], tc: [<contenttweaker:thermoconductingblock>, <ore:ingotThermoconducting>],
extr: [<contenttweaker:extremeblock>, <ore:ingotExtreme>], hsla: [<contenttweaker:hslasteelblock>, <ore:ingotHSLASteel>], 
sic: [<contenttweaker:sicblock>, <ore:ingotSiliconCarbide>], sicsiccmc: [<contenttweaker:sicsiccmcblock>, <ore:ingotSiCSiCCMC>],
za: [<contenttweaker:zircaloyblock>, <ore:ingotZircaloy>], pbpt: [<contenttweaker:leadplatinumblock>, <ore:ingotLeadPlatinum>],
snag: [<contenttweaker:tinsilverblock>, <ore:ingotTinSilver>], cuag: [<contenttweaker:shibuichiblock>, <ore:ingotShibuichi>],
steel: [<contenttweaker:steelblock>, <nuclearcraft:alloy:5>], limno2: [<contenttweaker:limno2block>, <ore:ingotLithiumManganeseDioxide>],
mgb2: [<contenttweaker:mgb2block>, <ore:ingotMagnesiumDiboride>], bronze: [<contenttweaker:bronzeblock>, <nuclearcraft:alloy:0>],
zrmo: [<contenttweaker:zrmoblock>, <ore:ingotZirconiumMolybdenum>], mo: [<contenttweaker:moblock>, <contenttweaker:moingot>]} as IIngredient[][string];

var oreEntries = ["blockFerroboron", "blockTough", "blockHardCarbon", "blockThermoconducting", "blockExtreme", "blockHSLASteel", "blockSiliconCarbide",
"blockSiCSiCCMC", "blockZircaloy", "blockLeadPlatinum", "blockTinSilver", "blockShibuichi", "blockSteel", "blockLithiumManganeseDioxide",
"blockMagnesiumDiboride", "blockBronze", "blockZirconiumMolybdenum", "blockMolybdenum"] as string[];

var oreBlocks = { <ore:blockFerroboron>: <contenttweaker:ferroboronblock>, <ore:blockTough>: <contenttweaker:toughblock>,
<ore:blockHardCarbon>: <contenttweaker:hardcarbonblock>, <ore:blockThermoconducting>: <contenttweaker:thermoconductingblock>, 
<ore:blockExtreme>: <contenttweaker:extremeblock>, <ore:blockHSLASteel>: <contenttweaker:hslasteelblock>, <ore:blockSiliconCarbide>: <contenttweaker:sicblock>,
<ore:blockSiCSiCCMC>: <contenttweaker:sicsiccmcblock>, <ore:blockZircaloy>: <contenttweaker:zircaloyblock>, <ore:blockLeadPlatinum>: <contenttweaker:leadplatinumblock>,
<ore:blockTinSilver>: <contenttweaker:tinsilverblock>, <ore:blockShibuichi>: <contenttweaker:shibuichiblock>, <ore:blockSteel>: <contenttweaker:steelblock>,
<ore:blockLithiumManganeseDioxide>: <contenttweaker:limno2block>, <ore:blockMagnesiumDiboride>: <contenttweaker:mgb2block>, <ore:blockBronze>: <contenttweaker:bronzeblock>,
<ore:blockZirconiumMolybdenum>: <contenttweaker:zrmoblock>, <ore:blockMolybdenum>: <contenttweaker:moblock>} as IItemStack[IOreDictEntry];


for entry in oreEntries {
	oreDict.entry;
	}
	
var steelFlag = <ore:blockSteel>.empty as bool;
var bronzeFlag = <ore:blockBronze>.empty as bool;
	
for oreName, oreBlock in oreBlocks {
	oreName.add(oreBlock);
	}

oreDict.ingotMolybdenum;
<ore:ingotMolybdenum>.add(<contenttweaker:moingot>);

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
AlloyFurnace.addRecipe(<contenttweaker:ferroboronblock>, <ore:blockLithium>, <contenttweaker:toughblock>*2, 8.0, 1.5, 0.0);
AlloyFurnace.addRecipe(<ore:blockGraphite>*2, <ore:blockDiamond>, <contenttweaker:hardcarbonblock>*2, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<contenttweaker:toughblock>, <contenttweaker:hardcarbonblock>, <contenttweaker:extremeblock>, 16.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<contenttweaker:extremeblock>, <ore:gemBoronArsenide>*9, <contenttweaker:thermoconductingblock>*2, 12.0, 1.5, 0.0);
AlloyFurnace.addRecipe(<ore:blockIron>*15, <ore:dustCarbonManganese>*9, <contenttweaker:hslasteelblock>*16, 64.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockZirconium>*7, <ore:blockTin>, <contenttweaker:zircaloyblock>*8, 32.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockLithium>, <nuclearcraft:ingot_block:15>, <contenttweaker:limno2block>*2, 12.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockMagnesium>, <ore:blockBoron>*2, <contenttweaker:mgb2block>*3, 8.0, 1.0, 0.0);
AlloyFurnace.addRecipe(<ore:itemSilicon>*9, <ore:blockGraphite>, <contenttweaker:sicblock>*2, 16.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:blockZirconium>, <contenttweaker:moblock>*15, <contenttweaker:zrmoblock>*16, 72.0, 2.0, 0.0);
AlloyFurnace.addRecipe(<ore:ingotZirconium>, <contenttweaker:moingot>*15, <ore:ingotZirconiumMolybdenum>*16, 8.0, 2.0, 0.0);

Infuser.addRecipe(<contenttweaker:shibuichiblock>, <liquid:redstone>*2250, <ore:blockSignalum>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<contenttweaker:tinsilverblock>, <liquid:glowstone>*2250, <ore:blockLumium>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<contenttweaker:leadplatinumblock>, <liquid:ender>*2250, <ore:blockEnderium>, 8.0, 1.0, 0.0);

Infuser.addRecipe(<ore:blockManganese>, <liquid:oxygen>*9000, <nuclearcraft:ingot_block:14>, 8.0, 1.0, 0.0);
Infuser.addRecipe(<nuclearcraft:ingot_block:14>, <liquid:oxygen>*9000, <nuclearcraft:ingot_block:15>, 8.0, 1.0, 0.0);
furnace.addRecipe(<nuclearcraft:ingot_block:11>, <nuclearcraft:ingot_block:14>);
furnace.addRecipe(<nuclearcraft:ingot_block:14>, <nuclearcraft:ingot_block:15>);
furnace.addRecipe(<contenttweaker:moingot>, <nuclearcraft:fission_dust:6>);
IngotFormer.addRecipe(<liquid:molybdenum>*144, <contenttweaker:moingot>);

// SiC-SiC CMC Recipes, delete until the next comment to disable these recipes!
Enricher.addRecipe(<nuclearcraft:alloy:13>, <liquid:hydrogen>*1000, <liquid:sic_vapor>*1000);
Infuser.addRecipe(<nuclearcraft:alloy:13>, <liquid:sic_vapor>*1000, <nuclearcraft:part:13>);
Infuser.addRecipe(<nuclearcraft:part:13>, <liquid:sic_vapor>*1000, <nuclearcraft:alloy:14>);

Enricher.addRecipe(<contenttweaker:sicblock>, <liquid:hydrogen>*9000, <liquid:sic_vapor>*9000, 8.0, 1.0, 0.0);
Infuser.addRecipe(<contenttweaker:sicblock>, <liquid:sic_vapor>*9000, <nuclearcraft:part:13>*9, 8.0, 1.0, 0.0);
// Delete until here!!

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
	