#modloaded qmd
#loader contenttweaker
#priority -1

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.Part;

val ionisedDustBuilder = MaterialSystem.getPartBuilder();
ionisedDustBuilder.setName("ionised_dust");
ionisedDustBuilder.setPartType(MaterialSystem.getPartType("item"));
ionisedDustBuilder.setOreDictName("ionisedDust");
ionisedDustBuilder.build();

val materials = MaterialSystem.getMaterials().values as Material[];

val ionisedDust = MaterialSystem.getPart("ionised_dust") as Part;
ionisedDust.registerToMaterials(materials);