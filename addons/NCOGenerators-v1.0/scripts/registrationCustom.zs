#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;

// Creative Tab
val energytech_tab = VanillaFactory.createCreativeTab("energy_tech", <item:nuclearcraft:battery_sodium>);
energytech_tab.register();

val items = ["cathode_na", "anode_na", "beta_alumina", "casing_battery", "casing_ec", "casing_k", "casing_k_s", "bvc", "blanket_empty", "blanket_li", "blanket_tritium", "li4sio4_ingot"] as string[];
val fluids = {"etheneoxide": 123456, "ethenecarbonate": 128654, "methane": 0x5B2F05, "flue_gas": 0xBFBFBF, "cold_flue_gas": 0xCECECE, "sodium_carbonate": 0xB2988E, "potassium_carbonate": 0xC6CE69, 
"carbonate_electrolyte": 0xE3D0AC, "super_compressed_air": 0xFFF4F9} as int[string];

var ysz = MaterialSystem.getMaterialBuilder().setName("YSZ").setColor(0xFCA99C).build() as Material;
var yttria = MaterialSystem.getMaterialBuilder().setName("Yttria").setColor(0xADAD9A).build() as Material;
var lanthanum = MaterialSystem.getMaterialBuilder().setName("Lanthanum").setColor(0x99210C).build() as Material;
var lsm = MaterialSystem.getMaterialBuilder().setName("LSM").setColor(0xD44310).build() as Material;
var ni_ysz = MaterialSystem.getMaterialBuilder().setName("NiYSZ").setColor(0xF0EDDB).build() as Material;
var transition = MaterialSystem.getMaterialBuilder().setName("Transition Metals").setColor(0x9040F1).build() as Material;
var rare_earths = MaterialSystem.getMaterialBuilder().setName("Rare Earths").setColor(0x40A485).build() as Material;
var cerium = MaterialSystem.getMaterialBuilder().setName("Cerium").setColor(0xDEDEDE).build() as Material;

ysz.registerParts(["dust", "block"] as string[]);
yttria.registerPart("dust");
lanthanum.registerPart("dust");
lsm.registerPart("dust");
ni_ysz.registerPart("dust");
transition.registerPart("dust");
rare_earths.registerPart("dust");
cerium.registerPart("dust");


for item in items {
	var item = VanillaFactory.createItem(item);
	item.maxStackSize = 64;
	item.creativeTab = <creativetab:energy_tech>;
	item.register();
}

for fluid, color in fluids {
	var fluid = VanillaFactory.createFluid(fluid, color);
	fluid.setDensity(750);
	fluid.setLuminosity(7);
	fluid.setTemperature(650);
	fluid.setViscosity(1500);
	fluid.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	fluid.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	fluid.register();
}


// Tritium-Helium Mix
val bredfluid = VanillaFactory.createFluid("bred_fluid", Color.fromHex("cd82ff"));
bredfluid.setGaseous(true);
bredfluid.stillLocation = "nuclearcraft:blocks/fluids/gas";
bredfluid.flowingLocation = "nuclearcraft:blocks/fluids/gas";
bredfluid.register();

if !(loadedMods has "qmd") {
val compressed_air = VanillaFactory.createFluid("compressed_air", 0xE8E8E8);
compressed_air.setGaseous(true);
compressed_air.register();
}
