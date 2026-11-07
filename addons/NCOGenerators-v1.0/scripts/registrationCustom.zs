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
val ncogen_tab = VanillaFactory.createCreativeTab("ncogen", <item:nuclearcraft:battery_sodium>);
ncogen_tab.register();

val items = ["cathode_na", "anode_na", "beta_alumina", "casing_battery", "casing_ec", "casing_k", "casing_k_s", "bvc", "blanket_empty", "blanket_li", "blanket_tritium", "li4sio4_ingot"] as string[];
val fluids = {"etheneoxide": 123456, "ethenecarbonate": 128654, "methane": 0x5B2F05, "flue_gas": 0x67FAFA, "cold_flue_gas": 0xB5FAFA, "sodium_carbonate": 0xB2988E, "potassium_carbonate": 0xC6CE69, 
"carbonate_electrolyte": 0xE3D0AC, "super_compressed_air": 0xFFF4F9} as int[string];

var ysz = MaterialSystem.getMaterialBuilder().setName("YSZ").setColor(0xFCA99C).build() as Material;
var yttria = MaterialSystem.getMaterialBuilder().setName("Yttria").setColor(0xADAD9A).build() as Material;
var lanthanum = MaterialSystem.getMaterialBuilder().setName("Lanthanum").setColor(0x99210C).build() as Material;
var lsm = MaterialSystem.getMaterialBuilder().setName("LSM").setColor(0xD44310).build() as Material;
var ni_ysz = MaterialSystem.getMaterialBuilder().setName("NiYSZ").setColor(0xF0EDDB).build() as Material;
var ceria = MaterialSystem.getMaterialBuilder().setName("Ceria").setColor(0xFCFFC1).build() as Material;
var bzc = MaterialSystem.getMaterialBuilder().setName("BZC").setColor(0xFFAFCC).build() as Material;
var ni_bzc = MaterialSystem.getMaterialBuilder().setName("NiBZC").setColor(0x7AEF9D).build() as Material;
var praseodymium = MaterialSystem.getMaterialBuilder().setName("Praseodymium").setColor(0x281D06).build() as Material;
var pnc = MaterialSystem.getMaterialBuilder().setName("PNC").setColor(0x6791AC).build() as Material;
var transition = MaterialSystem.getMaterialBuilder().setName("Transition Metals").setColor(0x9040F1).build() as Material;
var rare_earths = MaterialSystem.getMaterialBuilder().setName("Rare Earths").setColor(0x40A485).build() as Material;
var cerium = MaterialSystem.getMaterialBuilder().setName("Cerium").setColor(0xDEDEDE).build() as Material;

val electrolytes = [bzc, ysz] as Material[];
var electrodes_precursors = [yttria, lanthanum, lsm, ni_ysz, ceria, ni_bzc, praseodymium, pnc, transition, rare_earths, cerium] as Material[];
for elec in electrolytes {
	elec.registerParts(["dust", "block"] as string[]);
}
for electrodes in electrodes_precursors {
	electrodes.registerPart("dust");
}

for item in items {
	var item = VanillaFactory.createItem(item);
	item.maxStackSize = 64;
	item.creativeTab = <creativetab:ncogen>;
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

// Organic Rankine Cycle (PEM Fuel Cell)
if !(loadedMods has "moarreactorfunctionality") {
	var benzeneGas = VanillaFactory.createFluid("gaseous_benzene", 0xAFAFAF);
	benzeneGas.setGaseous(true);
	benzeneGas.setVaporize(true);
	benzeneGas.setDensity(-200);
	benzeneGas.setViscosity(100);
	benzeneGas.setTemperature(350);
	benzeneGas.stillLocation = "nuclearcraft:blocks/fluids/gas";
	benzeneGas.flowingLocation = "nuclearcraft:blocks/fluids/gas";
	benzeneGas.register();

	var benzeneExhaust = VanillaFactory.createFluid("exhaust_benzene", 0x8F8F8F);
	benzeneExhaust.setGaseous(true);
	benzeneExhaust.setVaporize(true);
	benzeneExhaust.setDensity(-200);
	benzeneExhaust.setViscosity(100);
	benzeneExhaust.setTemperature(350);
	benzeneExhaust.stillLocation = "nuclearcraft:blocks/fluids/gas";
	benzeneExhaust.flowingLocation = "nuclearcraft:blocks/fluids/gas";
	benzeneExhaust.register();
}

if !(loadedMods has "qmd") {
val compressed_air = VanillaFactory.createFluid("compressed_air", 0xE8E8E8);
compressed_air.setGaseous(true);
compressed_air.register();
}
