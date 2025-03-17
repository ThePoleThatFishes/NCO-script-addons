#modloaded tconstruct modtweaker qmd

import mods.tconstruct.Casting;

Casting.addBasinRecipe(<materialpart:sodium:block>, null, <liquid:sodium>, 1296, false, 800);
Casting.addBasinRecipe(<materialpart:potassium:block>, null, <liquid:potassium>, 1296, false, 800);
Casting.addTableRecipe(<ore:ingotSodium>.firstItem, <tconstruct:cast_custom:0>, <liquid:sodium>, 144, false, 100);
Casting.addTableRecipe(<ore:ingotPotassium>.firstItem, <tconstruct:cast_custom:0>, <liquid:potassium>, 144, false, 100);