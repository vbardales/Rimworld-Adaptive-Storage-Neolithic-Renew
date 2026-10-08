# DRAFT of 2026-10-06 (probes of 2026-10-07 read, see STATUS.md), tagged @wip so that no normal pass picks it up (play it with -IncludeWip, -DepMap wsl-deps.camp.map).
# A second Workshop series for this mod, in the spirit of PUBLISHING.md's gallery rules of 2026-10-06: magazine photographs of one story,
# with living things in them, a place that tells something, and the author (this suite) choosing place, time, composition and manner.
#
# The story: "Noon at the camp". A small neolithic camp on the bare earth clearing of Nelim's tribe (named place bare-clearing, centre
# (195, 152), a 14 x 14 square of plain brown earth with no roof, so natural daylight): a campfire in the middle, two torches, stools, and the
# mod's storage laid out as a camp would have it, wood and hay by the fire, baskets and pots on the shady side, the plinths of the tribe's
# treasures in front of the chief's place. People and animals come and go. Time unfolds in the game: every picture starts at noon and waits 5
# more game minutes than the one before (12:00 to 12:25; 2 500 ticks make an hour, so about 208 ticks per 5 minutes, plus 60 ticks to settle).
# Daytime animals and people only. The gallery has no count limit, only 8 MB for the folder and 2 MB per image (PUBLISHING.md): six pictures plus the Preview copy `0-` is the plan.
#
# Shot plan (place; frame; time; subject; living things; what the picture says):
#   1. 12:00 wide: the whole camp (cells (188, 146) to (202, 158) fill 85 % of the screen). Fire lit, storage on three sides. Ayla stands
#      by the fire in a dyed tribal tunic, Doka stands further off; a dog lies near the fire. "The camp is awake."
#   2. 12:05 close: the baskets (cells (189, 153) to (196, 158)). Empty, one item, full. Ayla, in a bright dyed tunic that answers the wood,
#      stands behind the baskets; a squirrel waits at the edge. "What goes in, shows."
#   3. 12:10 medium: wood pile, hay pile and the chunk stacks by the fire (cells (189, 146) to (202, 152)). Doka stands at the stacks in
#      a dark tunic against the pale stone; a hare nibbles at the hay. "Fuel and stone, stacked as they come."
#   4. 12:15 medium: the large pots near the fire (cells (190, 153) to (202, 158)). Doka tends them, the dog sits by Ayla. "Food for noon."
#   5. 12:20 medium: the plinths in front of the chief's stool (cells (191, 146) to (201, 151)). The chief (Tahu) in a dyed headdress and
#      tunic stands behind the plinths; a peacock spreads its tail. "The tribe's treasures."
#   6. 12:25 medium: the stone pots and stacks of the other mod beside granite (cells (189, 153) to (200, 158)). A cat sleeps between them.
#      "Every stone, in its place."
# bare-clearing (z 145 to 158 hold it at both ends): every frame now stays inside z 147 to 157. COLONIST CAPTURES ARE ON HOLD (owner, 2026-10-07) until TMW: do not replay scenarios 1 to 5 for a cut.
# Review rule: after the run, open every picture and compare it with the line above; redo the one that does not say what it should.
#
# Mods used besides this one and the sanctuary studio (owner, 2026-10-06: any mod may be chosen, not only hers). defNames read in each mod's own
# folder on 2026-10-06: Mud's Tribal Apparel (2796703834, Mud.TribalApparel): Apparel_TribalCape, Apparel_TribalCloak, Apparel_TribalFurCloak;
# ETRT: Tribal Apparel (continued) (3545351721, ETRT.TribalApparel): Apparel_FSFurCoat, Apparel_FSFurHat, ET_Apparel_WolfHood, ET_Apparel_DeerHood;
# Vanilla Furniture Expanded - Props and Decor (2102143149, VanillaExpanded.VFEPropsandDecor, needs Harmony and VFE Core 2023507013):
# VFEPD_HayBaleLarge, VFEPD_TanningRack, VFEPD_BrewingBarrel (VFE Props and Decor base folder; the tent, drying rack and stew pot belong to its Classical and Cooking modules, not loaded here).
# TO VERIFY ON A PROBE RUN (written from memory of the game, not played): the colonist kind "Colonist", the vanilla apparel "Apparel_TribalA"
# and "Apparel_TribalHeaddress", the decor defNames "Campfire", "TorchLamp", "Stool", the footprint of the tent, the extent of bare-clearing
# (x 188 to 201, z 145 to 158), that the step texts below exist as written in PickleTools/docs/STAGING.md (parentheses without backslash),
#
# `@requires:nelim.pickletools.screenshotstudio`: only the pass of `-DepMap wsl-deps.camp.map` stages the studio and the fixture. Odyssey for
# picture 5 (vacstone), the stone mod for picture 6.
# Two families of steps, told apart by their prefix (2026-10-08): `Nelim's Sanctuary: ` (SB, repository SanctuaryBacklot: the named places and the fixture Nelims-tribe) and `Nelim's Pickle Tools: ` (NPT, repository PickleTools: studio, presentation mode, camera, decor, colonists, animals). Steps without a prefix are this mod's or Pickle's own.
@requires:nelim.pickletools.screenshotstudio
@wip
@workshop
@review
Feature: the camp pictures of the Workshop page

  # 1. Noon at the camp, wide: the whole set around the fire.
  Scenario: the whole camp at noon
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (191, 150)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (191, 150) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (199, 150)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (199, 150) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" at (193, 154)
    And Nelim's Pickle Tools: I place the decor "Stool" at (197, 154)
    And Nelim's Pickle Tools: I place the decor "VFEPD_TanningRack" at (200, 151)
    And Nelim's Pickle Tools: I place the decor "VFEPD_BrewingBarrel" at (196, 153)
    And a "ASNeolithicWoodPile" is built at (192, 148)
    And a "ASNeolithicHayPile" is built at (194, 148)
    And a "ASNeolithicMealShelf" is built at (197, 148)
    And a "ASNeolithicTextileBundleFabric" is built at (199, 148)
    And a "ASNeolithicBasketWoody" is built at (190, 154)
    And a "ASNeolithicBasketFabric" is built at (190, 155)
    And a "ASNeolithicLargePot" is built at (200, 154)
    And a "ASNeolithicLargePot" is built at (200, 155)
    And I spawn a "WoodLog" at (192, 148)
    And I spawn a "Hay" at (194, 148)
    And I spawn a "MealSimple" at (197, 148)
    And I spawn a "Cloth" at (199, 148)
    And I spawn a "Cloth" at (190, 154)
    And I spawn a "Steel" at (190, 155)
    And I spawn a "RawBerries" at (200, 154)
    And I spawn a "Milk" at (200, 155)
    And Nelim's Pickle Tools: I frame the cells (188, 148) to (201, 155) filling 85 percent of the screen
    When I wait 60 ticks
    And Nelim's Pickle Tools: an adult animal of kind "LabradorRetriever" named "Biscuit" is spawned at (197, 153)
    And game speed is paused
    And Nelim's Pickle Tools: a colonist "Ayla" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Ayla" body type is Female
    And Nelim's Sanctuary: "Ayla" has the gene "Eyes_Green"
    And Nelim's Pickle Tools: "Ayla" wears "Apparel_TribalA" dyed rgb (196, 78, 52)
    And Nelim's Pickle Tools: "Ayla" wears "Apparel_TribalFurCloak"
    And Nelim's Pickle Tools: a colonist "Doka" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Doka" body type is Male
    And Nelim's Sanctuary: "Doka" has the gene "Eyes_DarkBrown"
    And Nelim's Pickle Tools: "Doka" wears "Apparel_TribalA" dyed rgb (45, 62, 80)
    And Nelim's Pickle Tools: "Doka" wears "Apparel_TribalCloak"
    And Nelim's Pickle Tools: "Doka" wears "ET_Apparel_WolfHood"
    And Nelim's Pickle Tools: "Ayla" stands at (196, 151) facing West
    And Nelim's Pickle Tools: "Doka" stands at (193, 155) facing North
    And Nelim's Pickle Tools: the other colonists are out of frame
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 1 - the whole camp at noon"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 2. The baskets, close: empty, one item, full, with Ayla behind them.
  Scenario: three baskets, empty, with one item and full, and Ayla behind them
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And a "ASNeolithicBasketWoody" is built at (190, 155)
    And a "ASNeolithicBasketWoody" is built at (192, 155)
    And a "ASNeolithicBasketWoody" is built at (194, 155)
    And I spawn a "Cloth" at (192, 155)
    And I spawn a "Cloth" at (194, 155)
    And I spawn a "Steel" at (194, 155)
    And Nelim's Pickle Tools: I frame the cells (189, 152) to (196, 156) filling 85 percent of the screen
    When I wait 268 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Chicken" named "Plume" is spawned at (196, 155)
    And game speed is paused
    And Nelim's Pickle Tools: a colonist "Ayla" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Ayla" body type is Female
    And Nelim's Sanctuary: "Ayla" has the gene "Eyes_Green"
    And Nelim's Pickle Tools: "Ayla" wears "Apparel_TribalA" dyed rgb (230, 170, 40)
    And Nelim's Pickle Tools: "Ayla" wears "Apparel_TribalCape" dyed rgb (120, 80, 30)
    And Nelim's Pickle Tools: "Ayla" stands at (194, 153) facing South
    And Nelim's Pickle Tools: the other colonists are out of frame
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 2 - three baskets"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 3. Fuel and stone by the fire, Doka at the stacks, a hare at the hay.
  Scenario: wood and hay piles and granite stacks at one, two and six chunks, and a marble one
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And Nelim's Pickle Tools: I place the decor "VFEPD_TanningRack" at (201, 147)
    And a "ASNeolithicWoodPile" is built at (190, 148)
    And a "ASNeolithicHayPile" is built at (192, 148)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (194, 149)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (196, 149)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (198, 149)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (200, 149)
    And I spawn a "WoodLog" at (190, 148)
    And I spawn a "Hay" at (192, 148)
    And I spawn a "ChunkGranite" at (194, 149)
    And I spawn a "ChunkGranite" at (196, 149)
    And I spawn a "ChunkGranite" at (196, 149)
    And I spawn a "ChunkGranite" at (198, 149)
    And I spawn a "ChunkGranite" at (199, 149)
    And I spawn a "ChunkGranite" at (198, 149)
    And I spawn a "ChunkGranite" at (199, 149)
    And I spawn a "ChunkGranite" at (198, 149)
    And I spawn a "ChunkGranite" at (199, 149)
    And I spawn a "ChunkMarble" at (200, 149)
    And Nelim's Pickle Tools: I frame the cells (189, 148) to (202, 154) filling 85 percent of the screen
    When I wait 477 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Hare" named "Pomme" is spawned at (193, 150)
    And game speed is paused
    And Nelim's Pickle Tools: a colonist "Doka" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Doka" body type is Male
    And Nelim's Sanctuary: "Doka" has the gene "Eyes_DarkBrown"
    And Nelim's Pickle Tools: "Doka" wears "Apparel_TribalA" dyed rgb (45, 62, 80)
    And Nelim's Pickle Tools: "Doka" wears "Apparel_TribalCloak"
    And Nelim's Pickle Tools: "Doka" wears "ET_Apparel_WolfHood"
    And Nelim's Pickle Tools: "Doka" stands at (197, 151) facing South
    And Nelim's Pickle Tools: the other colonists are out of frame
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 3 - fuel and stone"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 4. Food for noon: the pots near the fire, Doka tending them, the dog beside Ayla.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And Nelim's Pickle Tools: I place the decor "VFEPD_BrewingBarrel" at (196, 153)
    And a "ASNeolithicLargePot" is built at (191, 154)
    And a "ASNeolithicLargePot" is built at (193, 154)
    And a "ASNeolithicLargePot" is built at (195, 154)
    And a "ASNeolithicLargePot" is built at (197, 154)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (199, 154)
    And a "ASNeolithicLargePot" is built at (201, 154)
    And I spawn a "RawBerries" at (191, 154)
    And I spawn a "Milk" at (193, 154)
    And I spawn a "EggChickenUnfertilized" at (195, 154)
    And I spawn a "Kibble" at (197, 154)
    And I spawn a "Pemmican" at (199, 154)
    And I spawn a "RawBerries" at (201, 154)
    And I spawn a "Milk" at (201, 154)
    And Nelim's Pickle Tools: I frame the cells (190, 150) to (202, 155) filling 85 percent of the screen
    When I wait 685 ticks
    And Nelim's Pickle Tools: an adult animal of kind "LabradorRetriever" named "Biscuit" is spawned at (200, 154)
    And game speed is paused
    And Nelim's Pickle Tools: a colonist "Doka" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Doka" body type is Male
    And Nelim's Sanctuary: "Doka" has the gene "Eyes_DarkBrown"
    And Nelim's Pickle Tools: "Doka" wears "Apparel_TribalA" dyed rgb (45, 62, 80)
    And Nelim's Pickle Tools: "Doka" wears "Apparel_TribalCloak"
    And Nelim's Pickle Tools: "Doka" wears "ET_Apparel_WolfHood"
    And Nelim's Pickle Tools: a colonist "Ayla" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Ayla" body type is Female
    And Nelim's Sanctuary: "Ayla" has the gene "Eyes_Green"
    And Nelim's Pickle Tools: "Ayla" wears "Apparel_TribalA" dyed rgb (196, 78, 52)
    And Nelim's Pickle Tools: "Ayla" wears "Apparel_TribalFurCloak"
    And Nelim's Pickle Tools: "Doka" stands at (196, 152) facing South
    And Nelim's Pickle Tools: "Ayla" stands at (199, 152) facing West
    And Nelim's Pickle Tools: the other colonists are out of frame
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 4 - food for noon"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 5. The tribe's treasures: three plinths in front of the chief, a peacock spreading its tail. Vacstone needs Odyssey.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item, and the chief behind them
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" at (195, 148)
    And a "ASNeolithicPlinthWoody" is built at (193, 150)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (195, 150)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (197, 150)
    And I spawn a "Gold" at (193, 150)
    And I spawn a "Silver" at (195, 150)
    And I spawn a "Jade" at (197, 150)
    And Nelim's Pickle Tools: I frame the cells (191, 148) to (201, 154) filling 85 percent of the screen
    When I wait 893 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Peacock" named "Eclat" is spawned at (199, 150)
    And game speed is paused
    And Nelim's Pickle Tools: a colonist "Tahu" of kind "Colonist" exists
    And Nelim's Pickle Tools: "Tahu" body type is Female
    And Nelim's Sanctuary: "Tahu" has the gene "Eyes_Golden"
    And Nelim's Pickle Tools: "Tahu" wears "Apparel_TribalA" dyed rgb (120, 40, 110)
    And Nelim's Pickle Tools: "Tahu" wears "Apparel_TribalFurCloak" dyed rgb (230, 190, 60)
    And Nelim's Pickle Tools: "Tahu" wears "ET_Apparel_DeerHood"
    And Nelim's Pickle Tools: "Tahu" stands at (195, 148) facing South
    And I draft "Tahu"
    And I wait for "Tahu" to have job "Wait_Combat"
    And I wait 60 ticks
    And Nelim's Pickle Tools: "Tahu" stands at (195, 148) facing South
    And Nelim's Pickle Tools: the animal "Eclat" stands at (199, 150) facing West
    And Nelim's Pickle Tools: the other colonists are out of frame
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 5 - the tribe's treasures"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 6. Every stone, in its place: the pots and stacks of another mod's stone beside granite, a cat asleep between them.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (190, 154)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (192, 154)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (196, 154)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (198, 154)
    And I spawn a "RawBerries" at (190, 154)
    And I spawn a "ChunkGranite" at (192, 154)
    And I spawn a "ChunkKura_Andesite" at (198, 154)
    And I spawn a "ChunkGranite" at (192, 154)
    And I spawn a "ChunkKura_Andesite" at (198, 154)
    And I spawn a "ChunkGranite" at (192, 154)
    And I spawn a "ChunkKura_Andesite" at (198, 154)
    And I spawn a "RawBerries" at (196, 154)
    And Nelim's Pickle Tools: the other colonists are out of frame
    And Nelim's Pickle Tools: I frame the cells (189, 150) to (200, 155) filling 85 percent of the screen
    When I wait 1102 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Cat" named "Mie" is spawned at (194, 154)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 6 - every stone in its place"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed
