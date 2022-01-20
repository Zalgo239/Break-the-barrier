import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

// Multiblock 

var loc = "mbt:tier_three_drill_base";

val tier_three_drill_base = Builder.start(loc)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start()
            .aisle(
                "F   F",
                "     ",
				"  P  ",
				"     ",
				"F   F")
            .aisle(
                "F   F",
                "     ",
				"  P  ",
				"     ",
				"F   F")
            .aisle(
                "BIIIB",
                "I   I",
				"I P I",
				"I   I",
				"BIEIB")
			.aisle(
                "     ",
                " CCC ",
				" CBC ",
				" CCC ",
				"     ")
            .where("E", controller.self())
            .where("~", CTPredicate.getAir())
			.where("F", <gregtech:meta_block_frame_0:2>)
			.where("B", <gregtech:boiler_casing:1>)
			.where("C", <gregtech:metal_casing:4>)
            .whereOr("I", CTPredicate.states(<metastate:gregtech:metal_casing:4>)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1) // There is at least one IMPORT_ITEMS bus. JEI preview shows only one.
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1) // There is at least one INPUT_ENERGY hatch and no more than three of it. JEI preview shows only one.
                    )
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(
        FactoryRecipeMap.start("tier_three_drill_base")
                        .minFluidInputs(1)
                        .maxFluidInputs(2)
                        .minInputs(1)
						.maxInputs(1)
						.minOutputs(1)
                        .maxOutputs(9)
                        .build())
	.withBaseTexture(<gregtech:metal_casing>.asBlock().definition.getStateFromMeta(4))					
    .buildAndRegister();

// set optional properties
tier_three_drill_base.hasMaintenanceMechanics = false;
tier_three_drill_base.hasMufflerMechanics = false;

// Lang	
game.setLocalization(
    "multiblocktweaker.machine.tier_three_drill_base.name",
    "Tier three drill base controller"
);
game.setLocalization(
    "multiblocktweaker.multiblock.tier_three_drill_base.description",
    "i forgor"
);	

game.setLocalization(
    "recipemap.tier_three_drill_base.name",
    "Tier three drill base"
);

// Controller Recipe
recipes.addShaped(
    <gregtech:machine:3002>,
    [
        [<gregtech:meta_plate_double:324>, <ore:circuitGood>, <gregtech:meta_plate_double:324>],
        [<gregtech:meta_item_1:143>, <gregtech:machine:987>, <gregtech:meta_item_1:248>],
        [<gregtech:meta_plate_double:324>, <gregtech:meta_item_1:173>, <gregtech:meta_plate_double:324>]
    ]
);

// Recipes	
	
tier_three_drill_base
	.recipeMap
		.recipeBuilder()
    .duration(500)
	.EUt(40)
    .inputs(<contenttweaker:tierfivedrill>)
	.fluidInputs(<liquid:manainfusedlube> * 2000)
    .outputs(<gregtech:ore_quartzite_0> * 10,
			 <gregtech:ore_emerald_0> * 5,
	         <gregtech:ore_silver_0> * 10,
	         <gregtech:ore_redstone_0> * 10)
    .buildAndRegister();
	
tier_three_drill_base
	.recipeMap
		.recipeBuilder()
    .duration(700)
	.EUt(100)
    .inputs(<contenttweaker:tiersixdrill>)
	.fluidInputs(<liquid:manainfuseddf> * 3000)
    .outputs(<gregtech:ore_tantalite_0> * 5,
	         <gregtech:ore_emerald_0> * 3,
	         <gregtech:ore_ruby_0> * 10)
    .buildAndRegister();