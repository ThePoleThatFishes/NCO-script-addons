#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.item.IIngredient;


var materials = ["cablock", "crblock", "hfblock", "ndblock", "nbblock", "kblock", "nablock", "wblock", "yblock", "cfecrblock", "coblock", "irblock",
"nbsnblock", "nbtiblock", "niblock", "osblock", "osirblock", "ptblock", "tiblock", "wcblock", "znblock"] as string[];

for material in materials {
	var material = VanillaFactory.createBlock(material, <blockmaterial:iron>);
	material.setLightOpacity(255);
	material.setBlockHardness(3);
	material.setBlockResistance(30);
	material.setToolClass("pickaxe");
	material.setToolLevel(1);
	material.register(); 
}

var sr90_ingot = VanillaFactory.createItem("sr90ingot");
sr90_ingot.maxStackSize = 64;
sr90_ingot.register();	

