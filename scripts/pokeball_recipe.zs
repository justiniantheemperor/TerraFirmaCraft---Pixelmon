import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.pixelmon;

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.StoneKnapping;

// create stone base

<pixelmon:aluminum_base>.displayName = "Stone Base";

StoneKnapping.addRecipe("StoneBase",[<pixelmon:aluminum_base> * 3],["all"],"XX XX"," XXX ");
StoneKnapping.addRecipe("StoneBase2",[<pixelmon:aluminum_base> * 6],["all"],"XX XX"," XXX ","     ","XX XX"," XXX ");

// add item heating properties

ItemRegistry.registerItemHeat(<pixelmon:blue_apricorn>,1.3,580,false);
ItemRegistry.registerItemHeat(<pixelmon:yellow_apricorn>,1.3,580,false);
ItemRegistry.registerItemHeat(<pixelmon:black_apricorn>,1.0,580,false);
ItemRegistry.registerItemHeat(<pixelmon:white_apricorn>,1.3,580,false);
ItemRegistry.registerItemHeat(<pixelmon:pink_apricorn>,1.3,580,false);
ItemRegistry.registerItemHeat(<pixelmon:green_apricorn>,1.3,580,false);
ItemRegistry.registerItemHeat(<pixelmon:red_apricorn>,1.5,580,false);

// add heating apricorn over fire, change at dark red, destroy at orange

Heating.addRecipe("cooked_blue_apricorn", <pixelmon:blue_apricorn>,  <pixelmon:cooked_blue_apricorn>, 580, 930);
Heating.addRecipe("cooked_yellow_apricorn", <pixelmon:yellow_apricorn>,  <pixelmon:cooked_yellow_apricorn>, 580, 930);
Heating.addRecipe("cooked_black_apricorn", <pixelmon:black_apricorn>,  <pixelmon:cooked_black_apricorn>, 580, 930);
Heating.addRecipe("cooked_white_apricorn", <pixelmon:white_apricorn>,  <pixelmon:cooked_white_apricorn>, 580, 930);
Heating.addRecipe("cooked_pink_apricorn", <pixelmon:pink_apricorn>,  <pixelmon:cooked_pink_apricorn>, 580, 930);
Heating.addRecipe("cooked_green_apricorn", <pixelmon:green_apricorn>,  <pixelmon:cooked_green_apricorn>, 580, 930);
Heating.addRecipe("cooked_red_apricorn", <pixelmon:red_apricorn>,  <pixelmon:cooked_red_apricorn>, 580, 930);

// pokeball recipes

recipes.remove(<pixelmon:poke_ball_disc>);
recipes.addShaped("poke_ball_disc", <pixelmon:poke_ball_disc> * 3, [[<pixelmon:cooked_red_apricorn>, <pixelmon:cooked_red_apricorn>]]);

recipes.remove(<pixelmon:poke_ball_lid>);
recipes.addShapeless("poke_ball_lid", <pixelmon:poke_ball_lid>, [<ore:hammer>.transformDamage(), <pixelmon:poke_ball_disc>]);

recipes.remove(<pixelmon:poke_ball>);
recipes.addShapeless("poke_ball", <pixelmon:poke_ball>, [<pixelmon:poke_ball_lid>, <pixelmon:aluminum_base>]);

// premier ball recipes

recipes.remove(<pixelmon:premier_ball_disc>);
recipes.addShaped("premier_ball_disc", <pixelmon:premier_ball_disc> * 3, [[<pixelmon:cooked_white_apricorn>, <pixelmon:cooked_white_apricorn>]]);

recipes.remove(<pixelmon:premier_ball_lid>);
recipes.addShapeless("premier_ball_lid", <pixelmon:premier_ball_lid>, [<ore:hammer>.transformDamage(), <pixelmon:premier_ball_disc>]);

recipes.remove(<pixelmon:premier_ball>);
recipes.addShapeless("premier_ball", <pixelmon:premier_ball>, [<pixelmon:premier_ball_lid>, <pixelmon:aluminum_base>]);

// safari ball 

recipes.remove(<pixelmon:safari_ball_disc>);
recipes.addShaped("safari_ball_disc", <pixelmon:safari_ball_disc> * 2, [[<pixelmon:cooked_green_apricorn>, <pixelmon:cooked_green_apricorn>]]);

recipes.remove(<pixelmon:safari_ball_lid>);
recipes.addShapeless("safari_ball_lid", <pixelmon:safari_ball_lid>, [<ore:hammer>.transformDamage(2), <pixelmon:safari_ball_disc>]);

recipes.remove(<pixelmon:safari_ball>);
recipes.addShapeless("safari_ball", <pixelmon:safari_ball>, [<pixelmon:safari_ball_lid>, <pixelmon:aluminum_base>]);

<pixelmon:safari_ball>.removeTooltip('Plains');
// <pixelmon:safari_ball>.addTooltip("Sneak for more info.");
<pixelmon:safari_ball>.addShiftTooltip("Can be used to catch Pokemon. 1.5x catch rate in Plains and Swampland.");

// heal ball 

recipes.remove(<pixelmon:heal_ball_disc>);
recipes.addShaped("heal_ball_disc", <pixelmon:heal_ball_disc> * 2, [[<pixelmon:cooked_pink_apricorn>, <pixelmon:cooked_pink_apricorn>]]);

recipes.remove(<pixelmon:heal_ball_lid>);
recipes.addShapeless("heal_ball_lid", <pixelmon:heal_ball_lid>, [<ore:hammer>.transformDamage(2), <pixelmon:heal_ball_disc>]);

recipes.remove(<pixelmon:heal_ball>);
recipes.addShapeless("heal_ball", <pixelmon:heal_ball>, [<pixelmon:heal_ball_lid>, <pixelmon:aluminum_base>]);

// net ball 

recipes.remove(<pixelmon:net_ball_disc>);
recipes.addShaped("net_ball_disc", <pixelmon:net_ball_disc> * 2, [[<pixelmon:cooked_blue_apricorn>, <pixelmon:cooked_blue_apricorn>]]);

recipes.remove(<pixelmon:net_ball_lid>);
recipes.addShapeless("net_ball_lid", <pixelmon:net_ball_lid>, [<ore:hammer>.transformDamage(2), <pixelmon:net_ball_disc>]);

recipes.remove(<pixelmon:net_ball>);
recipes.addShapeless("net_ball", <pixelmon:net_ball>, [<pixelmon:net_ball_lid>, <pixelmon:aluminum_base>]);

// nest ball 

recipes.remove(<pixelmon:nest_ball_disc>);
recipes.addShaped("nest_ball_disc", <pixelmon:nest_ball_disc> * 2, [[<pixelmon:cooked_yellow_apricorn>, <pixelmon:cooked_yellow_apricorn>]]);

recipes.remove(<pixelmon:nest_ball_lid>);
recipes.addShapeless("nest_ball_lid", <pixelmon:nest_ball_lid>, [<ore:hammer>.transformDamage(2), <pixelmon:nest_ball_disc>]);

recipes.remove(<pixelmon:nest_ball>);
recipes.addShapeless("nest_ball", <pixelmon:nest_ball>, [<pixelmon:nest_ball_lid>, <pixelmon:aluminum_base>]);

// great ball recipes

recipes.remove(<pixelmon:great_ball>);
recipes.addShapeless("great_ball", <pixelmon:great_ball>, [<pixelmon:great_ball_lid>, <pixelmon:aluminum_base>]);

recipes.remove(<pixelmon:great_ball_lid>);
recipes.addShapeless("great_ball_lid", <pixelmon:great_ball_lid>, [<ore:hammer>.transformDamage(4), <pixelmon:great_ball_disc>]);

// other ball recipes - remove button

recipes.remove(<pixelmon:moon_ball>);
recipes.remove(<pixelmon:dive_ball>);
recipes.remove(<pixelmon:repeat_ball>);
recipes.remove(<pixelmon:dusk_ball>);
recipes.remove(<pixelmon:quick_ball>);
recipes.remove(<pixelmon:lure_ball>);
recipes.remove(<pixelmon:ultra_ball>);
recipes.remove(<pixelmon:heavy_ball>);
recipes.remove(<pixelmon:friend_ball>);
recipes.remove(<pixelmon:love_ball>);
recipes.remove(<pixelmon:level_ball>);
recipes.remove(<pixelmon:timer_ball>);
recipes.remove(<pixelmon:sport_ball>);
recipes.remove(<pixelmon:luxury_ball>);
recipes.remove(<pixelmon:fast_ball>);

recipes.addShapeless("moon_ball", <pixelmon:moon_ball>, [<pixelmon:moon_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("dive_ball", <pixelmon:dive_ball>, [<pixelmon:dive_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("repeat_ball", <pixelmon:repeat_ball>, [<pixelmon:repeat_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("dusk_ball", <pixelmon:dusk_ball>, [<pixelmon:dusk_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("quick_ball", <pixelmon:quick_ball>, [<pixelmon:quick_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("lure_ball", <pixelmon:lure_ball>, [<pixelmon:lure_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("ultra_ball", <pixelmon:ultra_ball>, [<pixelmon:ultra_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("heavy_ball", <pixelmon:heavy_ball>, [<pixelmon:heavy_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("friend_ball", <pixelmon:friend_ball>, [<pixelmon:friend_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("love_ball", <pixelmon:love_ball>, [<pixelmon:love_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("level_ball", <pixelmon:level_ball>, [<pixelmon:level_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("timer_ball", <pixelmon:timer_ball>, [<pixelmon:timer_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("sport_ball", <pixelmon:sport_ball>, [<pixelmon:sport_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("luxury_ball", <pixelmon:luxury_ball>, [<pixelmon:luxury_ball_lid>, <pixelmon:iron_base>]);
recipes.addShapeless("fast_ball", <pixelmon:fast_ball>, [<pixelmon:fast_ball_lid>, <pixelmon:iron_base>]);











