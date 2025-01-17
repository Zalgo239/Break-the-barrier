
#debug
#loader contenttweaker
#priority 101
 
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import crafttweaker.potions.IPotion;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.IItemUpdate;
import crafttweaker.entity.IEntityLiving;


var woodstonedrilltip = VanillaFactory.createItem("woodstonedrilltip");
woodstonedrilltip.maxStackSize = 64;
woodstonedrilltip.register();
 
 
// Custom hot iron ingot
// Used instead of autogenning w/ iron
var hotironingot = VanillaFactory.createItem("hotironingot");
hotironingot.maxStackSize = 16;
 
hotironingot.onItemUpdate = function(itemStack, world, owner, slot, isSelected) {
    if (world.getWorldTime() % 20 == 0) {
        owner.attackEntityFrom(<damageSource:heat>.setDamageBypassesArmor(), 3.0);
    }
    return;
};
 
hotironingot.register();
 
var worldgenblock = VanillaFactory.createBlock("worldgenblock", <blockmaterial:sand>);
worldgenblock.setBlockHardness(0.5);
worldgenblock.setBlockResistance(2.5);
worldgenblock.setToolClass("pickaxe");
worldgenblock.setToolLevel(0);
worldgenblock.setBlockSoundType(<soundtype:sand>);
worldgenblock.register();
 
var worldgendirtblock = VanillaFactory.createBlock("worldgendirtblock", <blockmaterial:sand>);
worldgendirtblock.setBlockHardness(0.5);
worldgendirtblock.setBlockResistance(2.5);
worldgendirtblock.setToolClass("pickaxe");
worldgendirtblock.setToolLevel(0);
worldgendirtblock.setBlockSoundType(<soundtype:sand>);
worldgendirtblock.register();
 
var brokenboiler = VanillaFactory.createBlock("brokenboiler", <blockmaterial:sand>);
brokenboiler.setBlockHardness(0.5);
brokenboiler.setBlockResistance(2.5);
brokenboiler.setToolClass("pickaxe");
brokenboiler.setToolLevel(1);
brokenboiler.setBlockSoundType(<soundtype:sand>);
brokenboiler.register();
 
var spunchcube = VanillaFactory.createBlock("spunchcube", <blockmaterial:sand>);
spunchcube.setBlockHardness(0.5);
spunchcube.setBlockResistance(2.5);
spunchcube.setToolClass("pickaxe");
spunchcube.setToolLevel(1);
spunchcube.setBlockSoundType(<soundtype:sand>);
spunchcube.register();
 
 
var manasap = VanillaFactory.createFluid("manasap", Color.fromHex("01ebfc")); 
manasap.register();
 
var manainfusedlube = VanillaFactory.createFluid("manainfusedlube", Color.fromHex("129BCB")); 
manainfusedlube.register();
 
var manainfuseddf = VanillaFactory.createFluid("manainfuseddf", Color.fromHex("1186AF")); 
manainfuseddf.register();
 
var manainfusedethylene = VanillaFactory.createFluid("manainfusedethylene", Color.fromHex("1186AF")); 
manainfusedethylene.register();
 
var manainfusedpe = VanillaFactory.createFluid("manainfusedpe", Color.fromHex("BF40BF")); 
manainfusedpe.register();
 
var pressplate = VanillaFactory.createItem("pressplate");
pressplate.maxStackSize = 1;
pressplate.register();
 
// Drills 
var tieronedrill = VanillaFactory.createItem("tieronedrill");
tieronedrill.maxStackSize = 16;
tieronedrill.rarity = "rare";
tieronedrill.register();
 
var tiertwodrill = VanillaFactory.createItem("tiertwodrill");
tiertwodrill.maxStackSize = 16;
tiertwodrill.rarity = "rare";
tiertwodrill.register();
 
var tierthreedrill = VanillaFactory.createItem("tierthreedrill");
tierthreedrill.maxStackSize = 16;
tierthreedrill.rarity = "rare";
tierthreedrill.register();
 
var tierfourdrill = VanillaFactory.createItem("tierfourdrill");
tierfourdrill.maxStackSize = 16;
tierfourdrill.rarity = "rare";
tierfourdrill.register();
 
var biomedrill = VanillaFactory.createItem("biomedrill");
biomedrill.maxStackSize = 16;
biomedrill.rarity = "rare";
biomedrill.register();
 
var tierfivedrill = VanillaFactory.createItem("tierfivedrill");
tierfivedrill.maxStackSize = 16;
tierfivedrill.rarity = "rare";
tierfivedrill.register();
 
var tiersixdrill = VanillaFactory.createItem("tiersixdrill");
tiersixdrill.maxStackSize = 16;
tiersixdrill.rarity = "rare";
tiersixdrill.register();

var oildrill = VanillaFactory.createItem("oildrill");
oildrill.maxStackSize = 16;
oildrill.rarity = "rare";
oildrill.register();

var tiersevendrill = VanillaFactory.createItem("tiersevendrill");
tiersevendrill.maxStackSize = 16;
tiersevendrill.rarity = "rare";
tiersevendrill.register();

var tiereightdrill = VanillaFactory.createItem("tiereightdrill");
tiereightdrill.maxStackSize = 16;
tiereightdrill.rarity = "rare";
tiereightdrill.register();