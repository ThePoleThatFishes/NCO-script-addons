#loader preinit
#modloaded qmd

import mods.nuclearcraft.Registration;

mods.qmd.particle.addParticle("arsenic_ion", "arsenic_ion.png", 70450.4, 1.0, -1.5);

Registration.registerRTG("thmorium", 25, 500.0e-6);
Registration.registerRTG("tritium", 2, 14.0e-6);
Registration.registerRTG("ruthenium", 4, 14.0e-3);
Registration.registerRTG("caesium", 12, 146.0e-6);
Registration.registerRTG("europium", 8, 23.0e-3);
Registration.registerRTG("promethium", 6, 3.2e-3);

Registration.registerFissionSource("thmorium", 0.96);
