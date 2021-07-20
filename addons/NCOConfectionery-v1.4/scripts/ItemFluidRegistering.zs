#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.BlockMaterial;
import mods.nuclearcraft.ColorHelper;
import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;

val items = ["blade_hc", "blade_tc", "blade_feb", "blade_tough", "blade_mgb2", "blade_limno2", "blade_zircaloy", "pancake_core", "mix314",
"mza314", "mni314", "mox314", "dmix314", "dmza314", "dmni314", "dmox314", "so314", "so314ox", "so314ni", "so314za",
"to316", "to316ox", "to316ni", "to316za", "to317", "to317ox", "to317ni", "to317za", "cathode_na", "anode_na", "beta_alumina",
"casing_battery", "casing_ec", "casing_k", "casing_k_s", "bvc", "buttermilk"] as string[];

for item in items {
	var item = VanillaFactory.createItem(item);
	item.maxStackSize = 64;
	item.creativeTab = <creativetab:ncoconf>;
	item.register();
}

val tritium_items = ["blanket_empty", "blanket_li", "blanket_tritium", "li4sio4_ingot"] as string[];

for t_i in tritium_items {
var material = VanillaFactory.createItem(t_i);
material.maxStackSize = 64;
material.setCreativeTab(<creativetab:ncoconf>);
material.register();
}

val bredfluid = VanillaFactory.createFluid("bred_fluid", Color.fromHex("cd82ff"));
bredfluid.setGaseous(true);
bredfluid.stillLocation = "nuclearcraft:blocks/fluids/gas";
bredfluid.flowingLocation = "nuclearcraft:blocks/fluids/gas";
bredfluid.register();

var ascanister = VanillaFactory.createItem("arsenic_canister");
ascanister.maxStackSize = 1;
ascanister.creativeTab = <creativetab:ncoconf>;
ascanister.register();


var fluids = {"so314": 10252553, "mix314": 10252553, "mf4314": ColorHelper.getFluorideColor(10252553), "mf4314flibe": ColorHelper.getFLIBEColor(10252553),
"to316": 2960685, "to317": 2960950} as int[string];

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


var dfluids = ["dmf4314flibe", "dmf4314", "dmix314"] as string[];

for fluid in dfluids {
	var fluid = VanillaFactory.createFluid(fluid, 6834950);
	fluid.setDensity(750);
	fluid.setLuminosity(10);
	fluid.setTemperature(1000);
	fluid.setViscosity(1500);
	fluid.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	fluid.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	fluid.register();
}

var batteryfluids = {"etheneoxide": 123456, "ethenecarbonate": 128654, "sodiumcathode": 14385893, "sodiumanode": 12086977} as int[string];

for batteryfluid, color in batteryfluids {
	var fluid = VanillaFactory.createFluid(batteryfluid, color);
	fluid.register();
}

var fluidnames = ["caramel", "chocolate", "cracker", "gold_smore", "marshmallow", "pancake", "buttermilk", "wheat", "egg", "sugar", "cake"] as string[];
var fluidcolours = [0xf1a70d, 0x581e0c, 0xb79023, 0xead13b, 0xd3d3d3, 0xfced92, 0xf7f7aa, 0xbfab31, 0xdfce9b, 0xffd59a, 0xb85d27, 0xf2c66f, 0x7a341f, 0xd8ab2f, 0xffe868, 0xeaeaea, 0xf9eda9, 0xffffaf, 0xe0c73a, 0xf9e7ae, 0xffe2ba, 0xdd7030] as int[];

for i, fluid in fluidnames {
	if (fluid != "chocolate" && fluid != "marshmallow" && fluid != "sugar") {
		var molten = VanillaFactory.createFluid(fluid, fluidcolours[i]);
		molten.setTemperature(500);
		molten.setLuminosity(7);
		molten.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
		molten.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
		molten.register();
	}
	var fluidnak = VanillaFactory.createFluid(fluid ~ "_nak", ColorHelper.getNAKColor(fluidcolours[i]));
	fluidnak.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	fluidnak.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	fluidnak.register();
	var fluidnakhot = VanillaFactory.createFluid(fluid ~ "_nak_hot", ColorHelper.getNAKColor(fluidcolours[i+11]));
	fluidnakhot.setLuminosity(12);
	fluidnakhot.setTemperature(900);
	fluidnakhot.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	fluidnakhot.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	fluidnakhot.register();
}

	

