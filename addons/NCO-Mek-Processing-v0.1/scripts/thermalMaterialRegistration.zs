#modloaded !mekanism thermalfoundation
#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.VanillaFactory;
import mods.nuclearcraft.ColorHelper;

// Define Materials

var aluminum = MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(0xEAEAF4).build() as Material;
var iridium = MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(0xefedf5).build() as Material;
var nickel = MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(0xededd8).build() as Material;
var platinum = MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(0xccffff).build() as Material;
var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(0xddf2f5).build() as Material;

// Slurries
val metals = ["aluminum", "iridium", "nickel", "platinum", "silver"] as string[];
val dirty_color = [ColorHelper.blend(0xEAEAF4, 0x000000, 0.25), ColorHelper.blend(0xefedf5, 0x000000, 0.25), ColorHelper.blend(0xededd8, 0x000000, 0.25), 
ColorHelper.blend(0xccffff, 0x000000, 0.25), ColorHelper.blend(0xddf2f5, 0x000000, 0.25)] as int[];
val clear_color = [ColorHelper.waterBlend(0xEAEAF4, 0.9), ColorHelper.waterBlend(0xefedf5, 0.9), ColorHelper.waterBlend(0xededd8, 0.9), 
ColorHelper.waterBlend(0xccffff, 0.9), ColorHelper.waterBlend(0xddf2f5, 0.9)] as int[];


// Registration
var materials = [aluminum, iridium, nickel, platinum, silver] as Material[];
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