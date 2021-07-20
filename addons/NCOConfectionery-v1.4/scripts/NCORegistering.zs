#loader nc_preinit

import mods.nuclearcraft.Registration;

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

Registration.registerFissionHeater("cracker", "cracker_nak", 1, "cracker_nak_hot", 1, 75, "one standard heater || one iron heater");
Registration.registerFissionHeater("marshmallow", "marshmallow_nak", 1, "marshmallow_nak_hot", 1, 105, "one cell && one standard heater");
Registration.registerFissionHeater("chocolate", "chocolate_nak", 1, "chocolate_nak_hot", 1, 85, "one reflector && one casing");
Registration.registerFissionHeater("gold_smore", "gold_smore_nak", 1, "gold_smore_nak_hot", 1, 350, "exactly two gold heaters && exactly one marshmallow heater && exactly one chocolate heater");
Registration.registerFissionHeater("pancake", "pancake_nak", 1, "pancake_nak_hot", 1, 140, "exactly one reflector && exactly one moderator");
Registration.registerFissionHeater("caramel", "caramel_nak", 1, "caramel_nak_hot", 1, 165, "two axial cells");
Registration.registerFissionHeater("buttermilk", "buttermilk_nak", 1, "buttermilk_nak_hot", 1, 75, "one irradiator");
Registration.registerFissionHeater("wheat", "wheat_nak", 1, "wheat_nak_hot", 1, 55, "exactly one gold heater");
Registration.registerFissionHeater("egg", "egg_nak", 1, "egg_nak_hot", 1, 65, "exactly two lead heaters");
Registration.registerFissionHeater("sugar", "sugar_nak", 1, "sugar_nak_hot", 1, 80, "one shield");
Registration.registerFissionHeater("cake", "cake_nak", 1, "cake_nak_hot", 1, 250, "one buttermilk heater && one wheat heater && one egg heater && one sugar heater");

Registration.registerBattery("sodium", 12000000, 4);
Registration.registerBattery("potassium", 20000000, 3);

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

Registration.registerTurbineBlade("steelcake", 1.00, 2.00);
Registration.registerTurbineBlade("hccake", 1.08, 3.00);
Registration.registerTurbineBlade("extremecake", 1.06, 4.00);
Registration.registerTurbineBlade("tccake", 1.08, 5.00);
Registration.registerTurbineBlade("febcake", 1.08, 6.00);
Registration.registerTurbineBlade("toughcake", 1.16, 8.00);
Registration.registerTurbineBlade("zircaloycake", 1.10, 12.00);
Registration.registerTurbineBlade("mgb2cake", 1.10, 14.00);
Registration.registerTurbineBlade("sicsiccmcake", 1.20, 16.00); 
Registration.registerTurbineBlade("limno2cake", 1.10, 18.00);