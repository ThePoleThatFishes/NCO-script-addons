#modloaded !qmd !mekanism
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
	
var hydrochloric_acid = VanillaFactory.createFluid("hydrochloric_acid", 0xafafa0);
hydrochloric_acid.register();

var salt_solution = VanillaFactory.createFluid("aqueuous_sodium_chloride", 0x0040f1);
salt_solution.register();

var salt = VanillaFactory.createItem("sodium_chloride");
salt.register();

var chlorine = VanillaFactory.createFluid("chlorine", 0xafaf60);
chlorine.gaseous = true;
chlorine.density = 50;
chlorine.viscosity = 1;
chlorine.stillLocation = "nuclearcraft:blocks/fluids/gas";
chlorine.flowingLocation = "nuclearcraft:blocks/fluids/gas";
chlorine.register();

	