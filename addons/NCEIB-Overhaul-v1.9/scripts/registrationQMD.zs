#loader contenttweaker
#modloaded qmd

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.VanillaFactory;

// Ingot Blocks
var tungsten = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(0x4E564F).build() as Material;
var niobium = MaterialSystem.getMaterialBuilder().setName("Niobium").setColor(0x858B98).build() as Material;
var chromium = MaterialSystem.getMaterialBuilder().setName("Chromium").setColor(0xE7E7E7).build() as Material;
var titanium = MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(0x8E7E8D).build() as Material;
var hafnium = MaterialSystem.getMaterialBuilder().setName("Hafnium").setColor(0x998989).build() as Material;
var zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(0xC1C1C1).build() as Material;
var osmium = MaterialSystem.getMaterialBuilder().setName("Osmium").setColor(0x6F89A9).build() as Material;
var iridium = MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(0xDDD5DD).build() as Material;
var sodium = MaterialSystem.getMaterialBuilder().setName("Sodium").setColor(0xC48E91).build() as Material;
var potassium = MaterialSystem.getMaterialBuilder().setName("Potassium").setColor(0xC6D303).build() as Material;
var calcium = MaterialSystem.getMaterialBuilder().setName("Calcium").setColor(0xF4F3EA).build() as Material;
var yttrium = MaterialSystem.getMaterialBuilder().setName("Yttrium").setColor(0xA89E5E).build() as Material;
var neodymium = MaterialSystem.getMaterialBuilder().setName("Neodymium").setColor(0x858B98).build() as Material;
var strontium = MaterialSystem.getMaterialBuilder().setName("Strontium").setColor(0xC4CB97).build() as Material;


// Alloy Blocks
var tungsten_carbide = MaterialSystem.getMaterialBuilder().setName("Tungsten Carbide").setColor(0x272D28).build() as Material;
var niobium_tin = MaterialSystem.getMaterialBuilder().setName("Niobium Tin").setColor(0xDBDBDD).build() as Material;
var stainless_steel = MaterialSystem.getMaterialBuilder().setName("Stainless Steel").setColor(0xC0CACB).build() as Material;
var niobium_titanium = MaterialSystem.getMaterialBuilder().setName("Niobium Titanium").setColor(0x6E5468).build() as Material;
var osmiridium = MaterialSystem.getMaterialBuilder().setName("Osmiridium").setColor(0xCAE1FF).build() as Material;
var nichrome = MaterialSystem.getMaterialBuilder().setName("Nichrome").setColor(0x9FA98C).build() as Material;
var superalloy = MaterialSystem.getMaterialBuilder().setName("Super Alloy").setColor(0x7F7478).build() as Material;

// Dusts
var erbium = MaterialSystem.getMaterialBuilder().setName("Erbium").setColor(0x88A973).build() as Material;
var iodine = MaterialSystem.getMaterialBuilder().setName("Iodine").setColor(0x7B00BA).build() as Material;
var samarium = MaterialSystem.getMaterialBuilder().setName("Samarium").setColor(0x7EA64A).build() as Material;
var terbium = MaterialSystem.getMaterialBuilder().setName("Terbium").setColor(0x80BAAC).build() as Material;
var ytterbium = MaterialSystem.getMaterialBuilder().setName("Ytterbium").setColor(0x73414D).build() as Material;

var materials_blocks = [tungsten, niobium, chromium, titanium, hafnium, zinc, osmium, iridium, sodium, potassium, calcium, yttrium, neodymium, strontium, tungsten_carbide, niobium_tin, stainless_steel,
niobium_titanium, osmiridium, nichrome, superalloy] as Material[];

var materials_blocks_ingots = [erbium, iodine, samarium, terbium, ytterbium] as Material[];

var parts = ["block", "ingot"] as string[];

for mat in materials_blocks {
	mat.registerPart("block");
}

for mat in materials_blocks_ingots {
	mat.registerParts(parts);
}
