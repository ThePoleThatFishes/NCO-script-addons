#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.item.IIngredient;

var materials = ["ferroboronBlock", "toughBlock", "hardCarbonBlock", "thermoconductingBlock", "extremeBlock", "hslaSteelBlock", "sicBlock", "sicsiccmcBlock",
"zircaloyBlock", "leadplatinumBlock", "tinsilverBlock", "shibuichiBlock", "steelBlock", "limno2Block", "mgb2Block", "bronzeBlock", "zrmoBlock",
"moBlock", "basblock", "bnblock", "carobblock", "fluorblock", "siblock", "rhodoblock", "villiblock", "sr90block"] as string[];

for material in materials {
		var material = VanillaFactory.createBlock(material, <blockmaterial:iron>);
		material.setLightOpacity(255);
		material.setBlockHardness(3);
		material.setBlockResistance(30);
		material.setToolClass("pickaxe");
		material.setToolLevel(1);
		material.register(); }
		
var moIngot = VanillaFactory.createItem("moingot");
moIngot.maxStackSize = 64;
moIngot.register();

var sr90_ingot = VanillaFactory.createItem("sr90ingot");
sr90_ingot.maxStackSize = 64;
sr90_ingot.register();	