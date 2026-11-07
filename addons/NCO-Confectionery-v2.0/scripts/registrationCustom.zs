#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.BlockMaterial;
import mods.nuclearcraft.ColorHelper;
import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.ItemFood;
import crafttweaker.entity.IEntityLivingBase;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;
import mods.nuclearcraft.CTHelper;

// Creative Tab
val ncoconf_tab = VanillaFactory.createCreativeTab("ncoconf", <item:contenttweaker:smore_gold>);
ncoconf_tab.register();

// Foods
var goldsmore = VanillaFactory.createItemFood("smore_gold", 8);

goldsmore.saturation = 7.2;
goldsmore.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(2400, 1));
		player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(100, 1));
		player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(400, 1));
		player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(400, 1));
		player.addRadiation(-10.0);
		player.addRadiationResistance(1.25);
		}
	};
goldsmore.creativeTab = <creativetab:ncoconf>;
goldsmore.register();

var pancakes = VanillaFactory.createItemFood("pancakes", 4);

pancakes.saturation = 2.25;
pancakes.register();

var thmore = VanillaFactory.createItemFood("thmore", 6);

thmore.saturation = 2.25;
thmore.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(100, 0));
		player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(300, 1));
		player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(300, 1));
		player.addRadiation(12.5);
		player.addRadiationResistance(-2.5);
		}
	};
thmore.creativeTab = <creativetab:ncoconf>;
thmore.register();

var caramelsmore = VanillaFactory.createItemFood("smore_caramel", 10);

caramelsmore.saturation = 3.75;
caramelsmore.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(450, 1));
		player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(450, 1));
		player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(450, 1));
		}
	};
caramelsmore.creativeTab = <creativetab:ncoconf>;
caramelsmore.register();

var caramel = VanillaFactory.createItemFood("caramel", 2);

caramel.saturation = 0.75;
caramel.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(60, 0));
		player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(60, 0));
		}
	};
caramel.creativeTab = <creativetab:ncoconf>;
caramel.register();

var toastmallow = VanillaFactory.createItemFood("toasted_marshmallow", 1);

toastmallow.saturation = 1.0;
toastmallow.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(400, 0));
		}
	};
toastmallow.creativeTab = <creativetab:ncoconf>;
toastmallow.register();

// Item Registration
val items = ["pancake_core", "buttermilk", "eggshells", "caco3_dust", "cao_dust"] as string[];

for item in items {
	var item = VanillaFactory.createItem(item);
	item.maxStackSize = 64;
	item.creativeTab = <creativetab:ncoconf>;
	item.register();
}

var fission_chips = VanillaFactory.createItemFood("fission_chips", 14);

fission_chips.saturation = 5.0;
fission_chips.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(400, 2));
		player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(1000, 2));
		player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(750, 3));
		player.addRadiation(125);
		player.addRadiationResistance(-10.0);
		}
	};
fission_chips.creativeTab = <creativetab:ncoconf>;
fission_chips.register();

var banana_toffee = VanillaFactory.createItemFood("banana_toffee", 18);

banana_toffee.saturation = 6.0;
banana_toffee.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(900, 2));
		player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(600, 1));
		player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(1200, 2));
		}
	};
banana_toffee.creativeTab = <creativetab:ncoconf>;
banana_toffee.register();

var chocolate_covered_bk = VanillaFactory.createItemFood("chocolate_covered_bk", 10);

chocolate_covered_bk.saturation = 5.0;
chocolate_covered_bk.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(400, 4));
		player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(1000, 2));
		player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(750, 3));
		player.addRadiation(50);
		player.addRadiationResistance(-5.0);
		}
	};
chocolate_covered_bk.creativeTab = <creativetab:ncoconf>;
chocolate_covered_bk.register();

var bananatom_split = VanillaFactory.createItemFood("bananatom_split", 16);

bananatom_split.saturation = 6.0;
bananatom_split.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(400, 2));
		player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(1000, 2));
		player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(750, 3));
		player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(40, 1));
		player.addRadiation(250);
		player.addRadiationResistance(-15.0);
		}
	};
bananatom_split.creativeTab = <creativetab:ncoconf>;
bananatom_split.register();

var coreos = VanillaFactory.createItemFood("coreos", 4);

coreos.saturation = 0.4;
coreos.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(300, 0));
		player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(750, 1));
		player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(50, 2));
		player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(40, 0));
		player.addRadiation(20);
		player.addRadiationResistance(-4.0);
		}
	};
coreos.creativeTab = <creativetab:ncoconf>;
coreos.register();

// Fluid Registration
var fluids = {"cao": 0xffeedd, "hot_maple_syrup": 0xc15000, "hot_eggnog": 0xffeedd, "hot_gold_smore": 0xe8da8b, "eggmix": 0xffd59a, "eggnog": 0xffd59a, "maple_syrup": 0x9b4200} as int[string];

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

// MSR Coolants
var fluidnames = ["caramel", "chocolate", "cracker", "gold_smore", "marshmallow", "pancake", "buttermilk", "wheat", "egg", "sugar", "cake", "pumpkin", "pumpkin_pie"] as string[];
var fluidcolours = [0xf1a70d, 0x581e0c, 0xb79023, 0xead13b, 0xd3d3d3, 0xfced92, 0xf7f7aa, 0xbfab31, 0xdfce9b, 0xffd59a, 0xb85d27, 0xd85d00, 0xf78538,  
					0xf2c66f, 0x7a341f, 0xd8ab2f, 0xffe868, 0xeaeaea, 0xf9eda9, 0xffffaf, 0xe0c73a, 0xf9e7ae, 0xffe2ba, 0xdd7030, 0xd67531, 0xf4a169] as int[];

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
	var fluidnakhot = VanillaFactory.createFluid(fluid ~ "_nak_hot", ColorHelper.getNAKColor(fluidcolours[i+13]));
	fluidnakhot.setLuminosity(12);
	fluidnakhot.setTemperature(900);
	fluidnakhot.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	fluidnakhot.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	fluidnakhot.register();
}


// BaNa2-related thingies
var barium_disodide = MaterialSystem.getMaterialBuilder().setName("Barium Disodide").setColor(0x664042).build() as Material;
var banana = MaterialSystem.getMaterialBuilder().setName("Banana").setColor(0xF7F29B).build() as Material;
var calcium_argon = MaterialSystem.getMaterialBuilder().setName("Calcium Argon").setColor(0xF7F2D8).build() as Material;
if !(loadedMods has "qmd") {
	var calcium = MaterialSystem.getMaterialBuilder().setName("Calcium").setColor(0xD8F2D8).build() as Material;
	calcium.registerPart("dust");
}

val materials_blocks = [banana, calcium_argon] as Material[];
for mat in materials_blocks {
	mat.registerParts(["block", "ingot"] as string[]);
}

barium_disodide.registerParts(["ingot", "block", "molten"] as string[]);

// BaNa2 Eutectic Declarations
val baNaNaColor = ColorHelper.blend(0x664042, 0xF7F29B, 0.5) as int;
val baNaNaHotColor = ColorHelper.glow(baNaNaColor, 0xFFFFFF, 0.375) as int;
var standardBaNaNa = VanillaFactory.createFluid("banana", baNaNaColor);
standardBaNaNa.setDensity(12000);
standardBaNaNa.setViscosity(16000);
standardBaNaNa.setTemperature(400);
standardBaNaNa.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
standardBaNaNa.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
standardBaNaNa.register();

var hotStandardBaNaNa = VanillaFactory.createFluid("banana_hot", baNaNaHotColor);
hotStandardBaNaNa.setDensity(12000);
hotStandardBaNaNa.setViscosity(16000);
hotStandardBaNaNa.setTemperature(1200);
hotStandardBaNaNa.setLuminosity(7);
hotStandardBaNaNa.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
hotStandardBaNaNa.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
hotStandardBaNaNa.register();

val baseFluidsMap = {"iron": 0x8D1515, "redstone": 0xAB1C09, "quartz": 0xECE9E2, "obsidian": 0x1C1828, "nether_brick": 0x271317, "glowstone": 0xA38037,
"lapis": 0x27438A, "gold": 0xE6DA3C, "prismarine": 0x70A695, "slime": 0x79C865, "end_stone": 0xE7E9B3, "purpur": 0xA979A9, "diamond": 0x6FDFDA,
"emerald": 0x51D975, "copper": 0xAD6544, "tin": 0xD9DDF0, "lead": 0x3F4C4C, "boron": 0x7D7D7D, "lithium": 0xEFEFEF, "magnesium": 0xEED5E1, 
"manganese": 0x99A1CA, "aluminum": 0xB5ECD5, "silver": 0xE2DAF6, "fluorite": 0x8AB492, "villiaumite": 0xB06C56, "carobbiite": 0x95A251, "arsenic": 0x818475,
"liquid_nitrogen": 0x31C23A, "liquid_helium": 0xF3433D, "enderium": 0x0B5B5C, "cryotheum": 0x0099C1, "caramel": 0xF1A70D, "chocolate": 0x581E0C, "cracker": 0xB79023, 
"gold_smore": 0xEAD13B, "marshmallow": 0xD3D3D3, "pancake": 0xFCED92, "buttermilk": 0xF7F7AA, "wheat": 0xBFAB31, "egg": 0xDFCE9B, "sugar": 0xFFD59A, 
"cake": 0xB85D27, "pumpkin": 0xD85D00, "pumpkin_pie": 0xF78538} as int[string];
for fluid, color in baseFluidsMap {
	var coldBaNaNa = VanillaFactory.createFluid(fluid ~ "_banana", ColorHelper.blend(color, baNaNaColor, 0.25));
	coldBaNaNa.setDensity(12000);
	coldBaNaNa.setViscosity(16000);
	coldBaNaNa.setTemperature(400);
	coldBaNaNa.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	coldBaNaNa.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	coldBaNaNa.register();
	
	var hotBaNaNa = VanillaFactory.createFluid(fluid ~ "_banana_hot", ColorHelper.blend(color, baNaNaHotColor, 0.25));
	hotBaNaNa.setDensity(12000);
	hotBaNaNa.setViscosity(16000);
	hotBaNaNa.setTemperature(1200);
	hotBaNaNa.setLuminosity(7);
	hotBaNaNa.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	hotBaNaNa.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	hotBaNaNa.register();
}

// Pb-Bi Coolants (MRF Integration)
if (loadedMods has "moarreactorfunctionality") {
val pbBiMap = {"caramel": 0xf1a70d, "chocolate": 0x581e0c, "cracker": 0xb79023, "gold_smore": 0xead13b, "marshmallow": 0xd3d3d3, "pancake": 0xfced92, "buttermilk": 0xf7f7aa, 
"wheat": 0xbfab31, "egg": 0xdfce9b, "sugar": 0xffd59a, "cake": 0xb85d27, "pumpkin": 0xd85d00, "pumpkin_pie": 0xf78538} as int[string];

val pbBiColor = ColorHelper.blend(0x3F4C4C, 0x827E73, 0.5) as int;
val pbBiHotColor = ColorHelper.glow(pbBiColor, 0xFFFFFF, 0.375) as int;

for fluid, color in pbBiMap {
	var coldPbBi = VanillaFactory.createFluid(fluid ~ "_pbbi", ColorHelper.blend(color, pbBiColor, 0.25));
	coldPbBi.setDensity(12000);
	coldPbBi.setViscosity(16000);
	coldPbBi.setTemperature(400);
	coldPbBi.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	coldPbBi.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	coldPbBi.register();
	
	var hotPbBi = VanillaFactory.createFluid(fluid ~ "_pbbi_hot", ColorHelper.blend(color, pbBiHotColor, 0.25));
	hotPbBi.setDensity(12000);
	hotPbBi.setViscosity(16000);
	hotPbBi.setTemperature(1200);
	hotPbBi.setLuminosity(7);
	hotPbBi.stillLocation = "nuclearcraft:blocks/fluids/molten_still";
	hotPbBi.flowingLocation = "nuclearcraft:blocks/fluids/molten_flow";
	hotPbBi.register();
	}

}

