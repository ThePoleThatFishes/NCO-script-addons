#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.VanillaFactory;

// Alloy Blocks
var bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(0xC78C47).build() as Material;
var extreme_alloy = MaterialSystem.getMaterialBuilder().setName("Extreme").setColor(0x66253C).build() as Material;
var hard_carbon = MaterialSystem.getMaterialBuilder().setName("Hard Carbon").setColor(0x1C6469).build() as Material;
var ferroboron = MaterialSystem.getMaterialBuilder().setName("Ferroboron").setColor(0x646464).build() as Material;
var limno2 = MaterialSystem.getMaterialBuilder().setName("Lithium Manganese Dioxide").setColor(0x696969).build() as Material;
var hsla_steel = MaterialSystem.getMaterialBuilder().setName("HSLA Steel").setColor(0x7A6DA8).build() as Material;
var magnesium_diboride = MaterialSystem.getMaterialBuilder().setName("Magnesium Diboride").setColor(0x161208).build() as Material;
var sic_sic_cmc = MaterialSystem.getMaterialBuilder().setName("SiC SiC CMC").setColor(0x757167).build() as Material;
var lead_platinum = MaterialSystem.getMaterialBuilder().setName("Lead Platinum").setColor(0x486A6F).build() as Material;
var zircaloy = MaterialSystem.getMaterialBuilder().setName("Zircaloy").setColor(0xD7D7D4).build() as Material;
var thermoconducting_alloy = MaterialSystem.getMaterialBuilder().setName("Thermoconducting").setColor(0x4E5839).build() as Material;
var silicon_carbide = MaterialSystem.getMaterialBuilder().setName("Silicon Carbide").setColor(0x6D6A5F).build() as Material;
var steel = MaterialSystem.getMaterialBuilder().setName("Steel").setColor(0x919191).build() as Material;
var zirconium_molybdenum = MaterialSystem.getMaterialBuilder().setName("Zirconium Molybdenum").setColor(0xD2D6E5).build() as Material;
var tough_alloy = MaterialSystem.getMaterialBuilder().setName("Tough").setColor(0x160F22).build() as Material;
var tin_silver = MaterialSystem.getMaterialBuilder().setName("Tin Silver").setColor(0xE9E9FB).build() as Material;
var hastelloy = MaterialSystem.getMaterialBuilder().setName("Hastelloy").setColor(0xA4AFAE).build() as Material;
var shibuichi = MaterialSystem.getMaterialBuilder().setName("Shibuichi").setColor(0xB4ACA6).build() as Material;

// Gem Blocks
var silicon = MaterialSystem.getMaterialBuilder().setName("Silicon").setColor(0x6D6D6D).build() as Material;
var boron_arsenide = MaterialSystem.getMaterialBuilder().setName("BoronArsenide").setColor(0xADAD9A).build() as Material;
var boron_nitride = MaterialSystem.getMaterialBuilder().setName("BoronNitride").setColor(0x8EA684).build() as Material;
var carobbiite = MaterialSystem.getMaterialBuilder().setName("Carobbiite").setColor(0x9BA94C).build() as Material;
var fluorite = MaterialSystem.getMaterialBuilder().setName("Fluorite").setColor(0x91AD99).build() as Material;
var rhodochrosite = MaterialSystem.getMaterialBuilder().setName("Rhodochrosite").setColor(0xC76569).build() as Material;
var villiaumite = MaterialSystem.getMaterialBuilder().setName("Villiaumite").setColor(0xB37D69).build() as Material;

// Misc Dusts
var bismuth = MaterialSystem.getMaterialBuilder().setName("Bismuth").setColor(0xB7AFB9).build() as Material;
var caesium_137 = MaterialSystem.getMaterialBuilder().setName("Caesium137").setColor(0xB5B5B5).build() as Material;
var europium_155 = MaterialSystem.getMaterialBuilder().setName("Europium155").setColor(0x776845).build() as Material;
var polonium = MaterialSystem.getMaterialBuilder().setName("Polonium").setColor(0x698B86).build() as Material;
var promethium_147 = MaterialSystem.getMaterialBuilder().setName("Promethium147").setColor(0x98C69A).build() as Material;
var protactinium_233 = MaterialSystem.getMaterialBuilder().setName("Protactinium233").setColor(0x8B696E).build() as Material;
var radium = MaterialSystem.getMaterialBuilder().setName("Radium").setColor(0x867A95).build() as Material;
var ruthenium_106 = MaterialSystem.getMaterialBuilder().setName("Ruthenium106").setColor(0xC2C2C2).build() as Material;
var tbp = MaterialSystem.getMaterialBuilder().setName("TBP").setColor(0x392C2E).build() as Material;
var carbon_manganese = MaterialSystem.getMaterialBuilder().setName("Carbon Manganese").setColor(0x6C6F72).build() as Material;

// Missing Ingots
var molybdenum = MaterialSystem.getMaterialBuilder().setName("Molybdenum").setColor(0xA9AECC).build() as Material;
var strontium_90 = MaterialSystem.getMaterialBuilder().setName("Strontium90").setColor(0xC1C78F).build() as Material;

var materials_blocks = [bronze, extreme_alloy, hard_carbon, ferroboron, limno2, hsla_steel, magnesium_diboride, sic_sic_cmc, lead_platinum, zircaloy, thermoconducting_alloy, silicon_carbide, steel,
zirconium_molybdenum, tough_alloy, tin_silver, hastelloy, shibuichi, silicon, boron_arsenide, boron_nitride, carobbiite, fluorite, rhodochrosite, villiaumite] as Material[];
for mat in materials_blocks {
	mat.registerPart("block");
}

var materials_blocks_ingots = [bismuth, caesium_137, europium_155, polonium, promethium_147, protactinium_233, radium, ruthenium_106, tbp, carbon_manganese] as Material[];
val parts_to_register = ["block", "ingot"] as string[];
for mat in materials_blocks_ingots {
	mat.registerParts(parts_to_register);
}

var materials_ingots = [molybdenum, strontium_90] as Material[];
for mat in materials_ingots {
	mat.registerPart("ingot");
}