#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import crafttweaker.item.IIngredient;

var materials = ["ferroboronBlock", "toughBlock", "hardCarbonBlock", "thermoconductingBlock", "extremeBlock", "hslaSteelBlock", "sicBlock", "sicsiccmcBlock",
"zircaloyBlock", "leadplatinumBlock", "tinsilverBlock", "shibuichiBlock", "steelBlock", "limno2Block", "mgb2Block", "bronzeBlock"] as string[];

for material in materials {
		var material = VanillaFactory.createBlock(material, <blockmaterial:iron>);
		material.setLightOpacity(255);
		material.setBlockHardness(3);
		material.setBlockResistance(30);
		material.setToolClass("pickaxe");
		material.setToolLevel(1);
		material.register(); }