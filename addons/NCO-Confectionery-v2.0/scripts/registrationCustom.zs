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

	

