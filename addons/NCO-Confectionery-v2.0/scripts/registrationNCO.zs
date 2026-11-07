#loader nc_preinit

import mods.nuclearcraft.Registration;
import mods.nuclearcraft.CTHelper;

// SFR Sinks
Registration.registerFissionSink("cracker", 75, "one water sink || one iron sink");
Registration.registerFissionSink("marshmallow", 105, "one cell && one water sink");
Registration.registerFissionSink("chocolate", 85, "one reflector && one casing");
Registration.registerFissionSink("gold_smore", 350, "exactly two gold sinks && exactly one marshmallow sink && exactly one chocolate sink");
Registration.registerFissionSink("pancake", 140, "exactly one reflector && exactly one moderator");
Registration.registerFissionSink("caramel", 165, "two axial cells");
Registration.registerFissionSink("buttermilk", 75, "one irradiator");
Registration.registerFissionSink("wheat", 55, "exactly one gold sink");
Registration.registerFissionSink("egg", 65, "exactly two lead sinks");
Registration.registerFissionSink("sugar", 80, "one shield");
Registration.registerFissionSink("cake", 250, "one buttermilk sink && one wheat sink && one egg sink && one sugar sink");
Registration.registerFissionSink("pumpkin", 80, "exactly one lithium sink");
Registration.registerFissionSink("pumpkin_pie", 300, "one egg sink && one sugar sink && one pumpkin sink");

// MSR Heaters
Registration.registerFissionHeater("cracker", "cracker_nak", 1, "cracker_nak_hot", 1, 75, "one standard heater || one iron heater");
Registration.registerFissionHeater("marshmallow", "marshmallow_nak", 1, "marshmallow_nak_hot", 1, 105, "one vessel && one standard heater");
Registration.registerFissionHeater("chocolate", "chocolate_nak", 1, "chocolate_nak_hot", 1, 85, "one reflector && one casing");
Registration.registerFissionHeater("gold_smore", "gold_smore_nak", 1, "gold_smore_nak_hot", 1, 350, "exactly two gold heaters && exactly one marshmallow heater && exactly one chocolate heater");
Registration.registerFissionHeater("pancake", "pancake_nak", 1, "pancake_nak_hot", 1, 140, "exactly one reflector && exactly one moderator");
Registration.registerFissionHeater("caramel", "caramel_nak", 1, "caramel_nak_hot", 1, 165, "two axial vessels");
Registration.registerFissionHeater("buttermilk", "buttermilk_nak", 1, "buttermilk_nak_hot", 1, 75, "one irradiator");
Registration.registerFissionHeater("wheat", "wheat_nak", 1, "wheat_nak_hot", 1, 55, "exactly one gold heater");
Registration.registerFissionHeater("egg", "egg_nak", 1, "egg_nak_hot", 1, 65, "exactly two lead heaters");
Registration.registerFissionHeater("sugar", "sugar_nak", 1, "sugar_nak_hot", 1, 80, "one shield");
Registration.registerFissionHeater("cake", "cake_nak", 1, "cake_nak_hot", 1, 250, "one buttermilk heater && one wheat heater && one egg heater && one sugar heater");
Registration.registerFissionHeater("pumpkin", "pumpkin_nak", 1, "pumpkin_nak_hot", 1, 80, "exactly one lithium heater");
Registration.registerFissionHeater("pumpkin_pie", "pumpkin_pie_nak", 1, "pumpkin_pie_nak_hot", 1, 300, "one egg heater && one sugar heater && one pumpkin heater");

// Turbine Coils
Registration.registerTurbineCoil("cracker", 1.08, "two copper coils");
Registration.registerTurbineCoil("chocolate", 1.00, "one connector || one aluminum coil");
Registration.registerTurbineCoil("marshmallow", 1.02, "one caramel coil");
Registration.registerTurbineCoil("gold_smore", 1.32, "two gold coils && one marshmallow coil && one chocolate coil");
Registration.registerTurbineCoil("caramel", 1.08, "one gold coil");
Registration.registerTurbineCoil("pancake", 1.10, "one cracker coil && one chocolate coil");
Registration.registerTurbineCoil("buttermilk", 1.06, "one copper coil");
Registration.registerTurbineCoil("wheat", 1.05, "two axial connectors");
Registration.registerTurbineCoil("egg", 1.08, "exactly one copper coil && exactly one magnesium coil");
Registration.registerTurbineCoil("sugar", 1.07, "one chocolate coil");
Registration.registerTurbineCoil("cake", 1.30, "one buttermilk coil && one wheat coil && one egg coil && one sugar coil");
Registration.registerTurbineCoil("pumpkin", 1.10, "one silver coil");
Registration.registerTurbineCoil("pumpkin_pie", 1.28, "one pumpkin coil && one sugar coil && one egg coil");

// Turbine Blades
Registration.registerTurbineBlade("steelcake", 1.00, 2.00);
Registration.registerTurbineBlade("hccake", 1.08, 3.00);
Registration.registerTurbineBlade("extremecake", 1.06, 4.00);
Registration.registerTurbineBlade("tccake", 1.08, 5.00);
Registration.registerTurbineBlade("febcake", 1.08, 6.00);
Registration.registerTurbineBlade("toughcake", 1.12, 8.00);
Registration.registerTurbineBlade("bronzecake", 1.16, 9.00);
Registration.registerTurbineBlade("hslacake", 1.14, 10.00);
Registration.registerTurbineBlade("zircaloycake", 1.10, 12.00);
Registration.registerTurbineBlade("mgb2cake", 1.10, 14.00);
Registration.registerTurbineBlade("sicsiccmcake", 1.20, 16.00); 
Registration.registerTurbineBlade("limno2cake", 1.10, 18.00);
Registration.registerTurbineBlade("siccake", 1.18, 19.00);

// BaNaNa Heaters
Registration.registerFissionHeater("standard_banana", "banana", 1, "banana_hot", 1, 55, "one vessel");
Registration.registerFissionHeater("iron_banana", "iron_banana", 1, "iron_banana_hot", 1, 50, "one moderator");
Registration.registerFissionHeater("redstone_banana", "redstone_banana", 1, "redstone_banana_hot", 1, 85, "one vessel && one moderator");
Registration.registerFissionHeater("quartz_banana", "quartz_banana", 1, "quartz_banana_hot", 1, 80, "one redstone_banana heater");
Registration.registerFissionHeater("obsidian_banana", "obsidian_banana", 1, "obsidian_banana_hot", 1, 70, "two axial glowstone_banana heaters");
Registration.registerFissionHeater("nether_brick_banana", "nether_brick_banana", 1, "nether_brick_banana_hot", 1, 105, "one obsidian_banana heater");
Registration.registerFissionHeater("glowstone_banana", "glowstone_banana", 1, "glowstone_banana_hot", 1, 90, "two moderators");
Registration.registerFissionHeater("lapis_banana", "lapis_banana", 1, "lapis_banana_hot", 1, 100, "one vessel && one casing");
Registration.registerFissionHeater("gold_banana", "gold_banana", 1, "gold_banana_hot", 1, 110, "exactly two iron_banana heaters");
Registration.registerFissionHeater("prismarine_banana", "prismarine_banana", 1, "prismarine_banana_hot", 1, 115, "exactly two standard_banana heaters");
Registration.registerFissionHeater("slime_banana", "slime_banana", 1, "slime_banana_hot", 1, 145, "exactly one standard_banana heater && two lead_banana heaters");
Registration.registerFissionHeater("end_stone_banana", "end_stone_banana", 1, "end_stone_banana_hot", 1, 65, "one reflector");
Registration.registerFissionHeater("purpur_banana", "purpur_banana", 1, "purpur_banana_hot", 1, 95, "one reflector && one iron_banana heater");
Registration.registerFissionHeater("diamond_banana", "diamond_banana", 1, "diamond_banana_hot", 1, 200, "one vessel && one gold_banana heater");
Registration.registerFissionHeater("emerald_banana", "emerald_banana", 1, "emerald_banana_hot", 1, 195, "one moderator && one prismarine_banana heater");
Registration.registerFissionHeater("copper_banana", "copper_banana", 1, "copper_banana_hot", 1, 75, "one standard_banana heater");
Registration.registerFissionHeater("tin_banana", "tin_banana", 1, "tin_banana_hot", 1, 120, "two axial lapis_banana heaters");
Registration.registerFissionHeater("lead_banana", "lead_banana", 1, "lead_banana_hot", 1, 60, "one iron_banana heater");
Registration.registerFissionHeater("boron_banana", "boron_banana", 1, "boron_banana_hot", 1, 160, "exactly one quartz_banana heater && one casing");
Registration.registerFissionHeater("lithium_banana", "lithium_banana", 1, "lithium_banana_hot", 1, 130, "exactly two axial lead_banana heaters && one casing");
Registration.registerFissionHeater("magnesium_banana", "magnesium_banana", 1, "magnesium_banana_hot", 1, 125, "exactly one moderator && one casing");
Registration.registerFissionHeater("manganese_banana", "manganese_banana", 1, "manganese_banana_hot", 1, 150, "two vessels");
Registration.registerFissionHeater("aluminum_banana", "aluminum_banana", 1, "aluminum_banana_hot", 1, 175, "one quartz_banana heater && one lapis_banana heater");
Registration.registerFissionHeater("silver_banana", "silver_banana", 1, "silver_banana_hot", 1, 170, "two glowstone_banana heaters && one tin_banana heater");
Registration.registerFissionHeater("fluorite_banana", "fluorite_banana", 1, "fluorite_banana_hot", 1, 165, "one gold_banana heater && one prismarine_banana heater");
Registration.registerFissionHeater("villiaumite_banana", "villiaumite_banana", 1, "villiaumite_banana_hot", 1, 180, "one redstone_banana heater && one end_stone_banana heater");
Registration.registerFissionHeater("carobbiite_banana", "carobbiite_banana", 1, "carobbiite_banana_hot", 1, 140, "one end_stone_banana heater && one copper_banana heater");
Registration.registerFissionHeater("arsenic_banana", "arsenic_banana", 1, "arsenic_banana_hot", 1, 135, "two axial reflectors");
Registration.registerFissionHeater("liquid_nitrogen_banana", "liquid_nitrogen_banana", 1, "liquid_nitrogen_banana_hot", 1, 185, "two copper_banana heaters && one purpur_banana heater");
Registration.registerFissionHeater("liquid_helium_banana", "liquid_helium_banana", 1, "liquid_helium_banana_hot", 1, 190, "exactly two redstone_banana heaters");
Registration.registerFissionHeater("enderium_banana", "enderium_banana", 1, "enderium_banana_hot", 1, 155, "three moderators");
Registration.registerFissionHeater("cryotheum_banana", "cryotheum_banana", 1, "cryotheum_banana_hot", 1, 205, "three vessels");
Registration.registerFissionHeater("cracker_banana", "cracker_banana", 1, "cracker_banana_hot", 1, 75, "one standard_banana heater || one iron_banana heater");
Registration.registerFissionHeater("marshmallow_banana", "marshmallow_banana", 1, "marshmallow_banana_hot", 1, 105, "one vessel && one standard_banana heater");
Registration.registerFissionHeater("chocolate_banana", "chocolate_banana", 1, "chocolate_banana_hot", 1, 85, "one reflector && one casing");
Registration.registerFissionHeater("gold_smore_banana", "gold_smore_banana", 1, "gold_smore_banana_hot", 1, 350, "exactly two gold_banana heaters && exactly one marshmallow_banana heater && exactly one chocolate_banana heater");
Registration.registerFissionHeater("pancake_banana", "pancake_banana", 1, "pancake_banana_hot", 1, 140, "exactly one reflector && exactly one moderator");
Registration.registerFissionHeater("caramel_banana", "caramel_banana", 1, "caramel_banana_hot", 1, 165, "two axial vessels");
Registration.registerFissionHeater("buttermilk_banana", "buttermilk_banana", 1, "buttermilk_banana_hot", 1, 75, "one irradiator");
Registration.registerFissionHeater("wheat_banana", "wheat_banana", 1, "wheat_banana_hot", 1, 55, "exactly one gold_banana heater");
Registration.registerFissionHeater("egg_banana", "egg_banana", 1, "egg_banana_hot", 1, 65, "exactly two lead_banana heaters");
Registration.registerFissionHeater("sugar_banana", "sugar_banana", 1, "sugar_banana_hot", 1, 80, "one shield");
Registration.registerFissionHeater("cake_banana", "cake_banana", 1, "cake_banana_hot", 1, 250, "one buttermilk_banana heater && one wheat_banana heater && one egg_banana heater && one sugar_banana heater");
Registration.registerFissionHeater("pumpkin_banana", "pumpkin_banana", 1, "pumpkin_banana_hot", 1, 80, "exactly one lithium_banana heater");
Registration.registerFissionHeater("pumpkin_pie_banana", "pumpkin_pie_banana", 1, "pumpkin_pie_banana_hot", 1, 300, "one egg_banana heater && one sugar_banana heater && one pumpkin_banana heater");


// PbBi Heaters (MRF Integration)
if (loadedMods has "moarreactorfunctionality") {
	Registration.registerFissionHeater("cracker_pbbi", "cracker_pbbi", 1, "cracker_pbbi_hot", 1, 75, "one standard_pbbi heater || one iron_pbbi heater");
	Registration.registerFissionHeater("marshmallow_pbbi", "marshmallow_pbbi", 1, "marshmallow_pbbi_hot", 1, 105, "one vessel && one standard_pbbi heater");
	Registration.registerFissionHeater("chocolate_pbbi", "chocolate_pbbi", 1, "chocolate_pbbi_hot", 1, 85, "one reflector && one casing");
	Registration.registerFissionHeater("gold_smore_pbbi", "gold_smore_pbbi", 1, "gold_smore_pbbi_hot", 1, 350, "exactly two gold_pbbi heaters && exactly one marshmallow_pbbi heater && exactly one chocolate_pbbi heater");
	Registration.registerFissionHeater("pancake_pbbi", "pancake_pbbi", 1, "pancake_pbbi_hot", 1, 140, "exactly one reflector && exactly one moderator");
	Registration.registerFissionHeater("caramel_pbbi", "caramel_pbbi", 1, "caramel_pbbi_hot", 1, 165, "two axial vessels");
	Registration.registerFissionHeater("buttermilk_pbbi", "buttermilk_pbbi", 1, "buttermilk_pbbi_hot", 1, 75, "one irradiator");
	Registration.registerFissionHeater("wheat_pbbi", "wheat_pbbi", 1, "wheat_pbbi_hot", 1, 55, "exactly one gold_pbbi heater");
	Registration.registerFissionHeater("egg_pbbi", "egg_pbbi", 1, "egg_pbbi_hot", 1, 65, "exactly two lead_pbbi heaters");
	Registration.registerFissionHeater("sugar_pbbi", "sugar_pbbi", 1, "sugar_pbbi_hot", 1, 80, "one shield");
	Registration.registerFissionHeater("cake_pbbi", "cake_pbbi", 1, "cake_pbbi_hot", 1, 250, "one buttermilk_pbbi heater && one wheat_pbbi heater && one egg_pbbi heater && one sugar_pbbi heater");
	Registration.registerFissionHeater("pumpkin_pbbi", "pumpkin_pbbi", 1, "pumpkin_pbbi_hot", 1, 80, "exactly one lithium_pbbi heater");
	Registration.registerFissionHeater("pumpkin_pie_pbbi", "pumpkin_pie_pbbi", 1, "pumpkin_pie_pbbi_hot", 1, 300, "one egg_pbbi heater && one sugar_pbbi heater && one pumpkin_pbbi heater");
}


