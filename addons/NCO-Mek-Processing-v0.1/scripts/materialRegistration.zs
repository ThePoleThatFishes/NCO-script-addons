#modloaded !mekanism
#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.VanillaFactory;
import mods.nuclearcraft.ColorHelper;

// Define Materials
// Vanilla
var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(0xE9E9E9).build() as Material;
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(0xFBD300).build() as Material;


// NuclearCraft
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(0xffb832).build() as Material;
var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(0x818ebe).build() as Material;
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(0xcee3e3).build() as Material;
var boron = MaterialSystem.getMaterialBuilder().setName("Boron").setColor(0x9b9b9b).build() as Material;
var lithium = MaterialSystem.getMaterialBuilder().setName("Lithium").setColor(0xfafafa).build() as Material;
var magnesium = MaterialSystem.getMaterialBuilder().setName("Magnesium").setColor(0xf0d0ed).build() as Material;
var thorium = MaterialSystem.getMaterialBuilder().setName("Thorium").setColor(0x2c2c2c).build() as Material;
var uranium = MaterialSystem.getMaterialBuilder().setName("Uranium").setColor(0x406340).build() as Material;

// Slurries
val metals = ["iron", "gold", "copper", "lead", "tin", "boron", "lithium", "magnesium", "thorium", "uranium"] as string[];
val dirty_color = [ColorHelper.blend(0xE9E9E9, 0x000000, 0.25), ColorHelper.blend(0xFBD300, 0x000000, 0.25), ColorHelper.blend(0xffb832, 0x000000, 0.25), ColorHelper.blend(0x818ebe, 0x000000, 0.25), 
ColorHelper.blend(0xcee3e3, 0x000000, 0.25), ColorHelper.blend(0x9b9b9b9, 0x000000, 0.25), ColorHelper.blend(0xfafafa, 0x000000, 0.25), ColorHelper.blend(0xf0d0ed, 0x000000, 0.25), 
ColorHelper.blend(0x2c2c2c, 0x000000, 0.25), ColorHelper.blend(0x406340, 0x000000, 0.25)] as int[];
val clear_color = [ColorHelper.blend(0xE9E9E9, 0x000000, 0.9), ColorHelper.blend(0xFBD300, 0x000000, 0.9), ColorHelper.blend(0xffb832, 0x000000, 0.9), ColorHelper.blend(0x818ebe, 0x000000, 0.9), 
ColorHelper.blend(0xcee3e3, 0x000000, 0.9), ColorHelper.blend(0x9b9b9b9, 0x000000, 0.9), ColorHelper.blend(0xfafafa, 0x000000, 0.9), ColorHelper.blend(0xf0d0ed, 0x000000, 0.9), 
ColorHelper.blend(0x2c2c2c, 0x000000, 0.9), ColorHelper.blend(0x406340, 0x000000, 0.9)]  as int[];


// Registration
var materials = [iron, gold, copper, lead, tin, boron, lithium, magnesium, thorium, uranium] as Material[];
var parts = ["crystal", "shard", "clump", "dirty_dust"] as string[];

for mat in materials {
	mat.registerParts(parts);
}

for i, metal in metals {
	var fluid = VanillaFactory.createFluid("dirtyslurry" ~ metal, dirty_color[i]);
	fluid.register();
	fluid = VanillaFactory.createFluid("cleanslurry" ~ metal, clear_color[i]);
	fluid.register();
}
	