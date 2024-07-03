#loader preinit
#modloaded qmd

mods.qmd.particle.addParticle("arsenic_ion", "arsenic_ion.png", 70450.4, 1.0, -1.5);

mods.nuclearcraft.Registration.registerRTG("thmorium", 25, 500.0e-6);
mods.nuclearcraft.Registration.registerRTG("tritium", 2, 14.0e-6);
mods.nuclearcraft.Registration.registerRTG("ruthenium", 4, 14.0e-3);
mods.nuclearcraft.Registration.registerRTG("caesium", 12, 146.0e-6);
mods.nuclearcraft.Registration.registerRTG("europium", 8, 23.0e-3);
mods.nuclearcraft.Registration.registerRTG("promethium", 6, 3.2e-3);

mods.nuclearcraft.Registration.registerFissionSource("thmorium", 0.96);

mods.qmd.Registration.registerAcceleratorCooler("cracker", 100, "one copper cooler && one water cooler");
mods.qmd.Registration.registerAcceleratorCooler("marshmallow", 110, "one prismarine cooler");
mods.qmd.Registration.registerAcceleratorCooler("chocolate", 130, "two water coolers");
mods.qmd.Registration.registerAcceleratorCooler("smore", 240, "two cracker coolers && one marshmallow cooler && one chocolate cooler");
mods.qmd.Registration.registerAcceleratorCooler("caramel", 115, "one iron cooler && one copper cooler");
mods.qmd.Registration.registerAcceleratorCooler("buttermilk", 125, "one iron cooler && one lead cooler");
mods.qmd.Registration.registerAcceleratorCooler("pancake", 120, "one water cooler && one lead cooler");

mods.qmd.Registration.registerVaccuumChamberHeater("smore", 240, "one obsidian heater && one diamond heater");
mods.qmd.Registration.registerVaccuumChamberHeater("chocolate", 30, "exactly two axial gold heaters");
mods.qmd.Registration.registerVaccuumChamberHeater("cracker", 15, "exactly one glass");
mods.qmd.Registration.registerVaccuumChamberHeater("marshmallow", 50, "exactly three casing");
