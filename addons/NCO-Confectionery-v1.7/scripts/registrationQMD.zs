#loader nc_preinit
#modloaded qmd

// Particle
mods.qmd.particle.addParticle("arsenic_ion", "arsenic_ion.png", 70450.4, 1.0, -1.5);

// RTG
mods.nuclearcraft.Registration.registerRTG("thmorium", 25, 500.0e-6);

// Neutron Source
mods.nuclearcraft.Registration.registerFissionSource("thmorium", 0.96);

// Accelerator Coolers
mods.qmd.Registration.registerAcceleratorCooler("cracker", 100, "one copper cooler && one water cooler");
mods.qmd.Registration.registerAcceleratorCooler("marshmallow", 110, "one prismarine cooler");
mods.qmd.Registration.registerAcceleratorCooler("chocolate", 130, "two water coolers");
mods.qmd.Registration.registerAcceleratorCooler("smore", 240, "two cracker coolers && one marshmallow cooler && one chocolate cooler");
mods.qmd.Registration.registerAcceleratorCooler("caramel", 115, "one iron cooler && one copper cooler");
mods.qmd.Registration.registerAcceleratorCooler("buttermilk", 125, "one iron cooler && one lead cooler");
mods.qmd.Registration.registerAcceleratorCooler("pancake", 120, "one water cooler && one lead cooler");

// NSC Heater
mods.qmd.Registration.registerVaccuumChamberHeater("smore", 240, "one obsidian heater && one diamond heater");
mods.qmd.Registration.registerVaccuumChamberHeater("chocolate", 30, "exactly two axial gold heaters");
mods.qmd.Registration.registerVaccuumChamberHeater("cracker", 15, "exactly one glass");
mods.qmd.Registration.registerVaccuumChamberHeater("marshmallow", 50, "exactly three casing");

// Fission Isotopes & Fuel
mods.nuclearcraft.Registration.registerFissionIsotope("smorium", "smorium_314", null, "Smorium314", 54.0e-6, true, false, true, true, true, 10252553);
mods.nuclearcraft.Registration.registerFissionIsotope("thmorium", "thmorium_316", null, "Thmorium316", 740.0e-6, true, false, true, true, true, 2960685);
mods.nuclearcraft.Registration.registerFissionIsotope("thmorium", "thmorium_317", null, "Thmorium317", 85.0e-6, true, false, true, true, true, 2960950);

mods.nuclearcraft.Registration.registerFissionFuel("pellet_smorium", "mix_314", "nuclearcraft:item/pellet", "MIX314", 1500, 1296, 2.30, 36, 0.025, false, 168.0e-6, 54.0e-6, 1.4e-3, true, false, false, true, true, true, 10252553, 2960685);