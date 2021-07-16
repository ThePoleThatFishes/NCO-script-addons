#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import crafttweaker.entity.IEntityLivingBase;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;

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
caramelsmore.register();

var caramel = VanillaFactory.createItemFood("caramel", 2);

caramel.saturation = 0.75;
caramel.onItemFoodEaten = function(stack, world, player) {
	if (!world.isRemote()) {
		player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(60, 0));
		player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(60, 0));
		}
	};
caramel.register();

	


