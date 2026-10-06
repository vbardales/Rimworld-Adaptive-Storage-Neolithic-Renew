# The pictures of the Workshop page, PUBLICATION.md section 1, in the order to upload them. They are not the review captures of `03`: those
# show the whole colony around the container, the game's interface and a wide frame, and a Workshop page sells nothing with that.
#
# Gallery series (owner's rule of 2026-10-02: a gallery capture is a staged photograph, not a default screenshot).
# The story: a quiet noon of tidying at the storehouse of a neolithic camp, seen through the animals that come by, from the pantry shelf to
# the display plinth. Time unfolds in the game: every picture starts at noon and waits 5 more game minutes than the one before (12:00, 12:05,
# 12:10, 12:15, 12:20, 12:25; 2 500 ticks make an hour, so about 208 ticks per 5 minutes, plus 60 ticks to settle), clear sky. Daytime animals only.
# Shot plan (place: the calm zone of Nelim's tribe, named scene calm-zone-close, a cream stone square in the open air with no roof and no wall shadow):
#   1. 12:00, wide frame. The whole set, each container holding something; a hen pecks by the hay, the day begins.
#   2. 12:05, close frame on the three baskets (zoom 2.2): empty, one item, full; a squirrel has climbed up to the full one.
#   3. 12:10, wide frame. Granite stacks at one, two and six chunks and a marble one; a hare nibbles between the stacks.
#   4. 12:15, wide frame. Pots of food and a lidded one; a dog noses the milk pot.
#   5. 12:20, medium frame (zoom 2.6). Plinths of wood, granite and vacstone, each showing an item; a peacock spreads its tail beside them.
#   6. 12:25, wide frame. The pot and stack of a stone from another mod beside granite; a cat has settled between the two.
# The common set is a smooth cream stone square of about 11 x 11 cells (x 195 to 205, z 181 to 191, soft edge, so about 9 x 9 usable) and the
# one neutral light ground among the outdoor places (see TESTING.md, Choosing the gallery place). Every scenario reloads the save, so the
# square is fresh and is never emptied or cleared. Every animal of the map is removed first (the place step clears only x +-1.78 zoom, and one
# animal stayed in frame) and the animal of the picture is spawned after the wait, so it has not wandered off.
# The map is the sanctuary save "Nelims-tribe" of PickleTools' ScreenshotStudio (Git LFS fixture, 250 x 250, one colonist, vanilla only),
# frames by name (`I am at the sanctuary "calm-zone-close"`: centre (200, 185), a close frame of about 10 x 5.6 cells entirely inside the
# cream square, defined with PickleTools); see PickleTools/docs/SANCTUAIRE-LIEUX.md.
# Each scenario turns on PickleTools' studio presentation mode (it also hides the item-count labels of the Adaptive Storage containers) and hides the interface for the length of the picture with this suite's own step (the game's screenshot mode, Pickle's runner
# panel taken out of it) and brings it back. A scenario that dies between the two still gets the interface back, from an [AfterScenario].
# Nothing asserts about the image: a person opens each one, and a passing scenario says only that the route ran.
#
# `@requires:nelim.pickletools.screenshotstudio`: only the pass of `-DepMap wsl-deps.sanctuary.map` stages the studio and the fixture and plays
# this feature; every other pass skips it. Aim at this file with `-Filter '11-workshop-captures.feature'`. The plinth scenario also needs
# Odyssey and the last one the stone mod, both present in that map. The objects stand at x 196 to 204, rows z 183, 185 and 186.
# A Workshop crop may cut a building or its contents at an edge; the icon composition takes priority, as documented in PUBLICATION.md.
@requires:nelim.pickletools.screenshotstudio
@workshop
@review
Feature: the pictures of the Workshop page

  # 1. The whole set at once, each container with something in it: the mod's one idea in a single picture.
  Scenario: the whole set, each container holding something
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone-close"
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicWoodPile" is built at (196, 186)
    And a "ASNeolithicHayPile" is built at (198, 186)
    And a "ASNeolithicMealShelf" is built at (200, 186)
    And a "ASNeolithicTextileBundleFabric" is built at (202, 186)
    And a "ASNeolithicBasketWoody" is built at (204, 186)
    And a "ASNeolithicBasketFabric" is built at (198, 183)
    And a "ASNeolithicLargePot" is built at (200, 183)
    And a "ASNeolithicPlinthWoody" is built at (202, 183)
    And I spawn a "WoodLog" at (196, 186)
    And I spawn a "Hay" at (198, 186)
    And I spawn a "MealSimple" at (200, 186)
    And I spawn a "Cloth" at (202, 186)
    And I spawn a "Cloth" at (204, 186)
    And I spawn a "Steel" at (204, 186)
    And I spawn a "Cloth" at (198, 183)
    And I spawn a "Steel" at (198, 183)
    And I spawn a "RawBerries" at (200, 183)
    And I spawn a "Gold" at (202, 183)
    When I wait 60 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Chicken" named "Poulette" is spawned at (197, 184)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "workshop 1 - the whole set"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 2. The idea, isolated: a basket empty, with one item, full.
  Scenario: a wooden basket, empty, with one item and full, side by side
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone-close"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 2.2
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicBasketWoody" is built at (198, 185)
    And a "ASNeolithicBasketWoody" is built at (200, 185)
    And a "ASNeolithicBasketWoody" is built at (202, 185)
    And I spawn a "Cloth" at (200, 185)
    And I spawn a "Cloth" at (202, 185)
    And I spawn a "Steel" at (202, 185)
    When I wait 268 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Squirrel" named "Noisette" is spawned at (203, 184)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "workshop 2 - a basket fills up"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 3. A stack of chunks at one, two and six chunks, and a marble one: the sprite follows the load and the colour follows the stone.
  Scenario: granite chunk stacks at one, two and six chunks, and a marble one
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone-close"
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (196, 186)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (199, 186)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (202, 186)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (199, 183)
    And I spawn a "ChunkGranite" at (196, 186)
    And I spawn a "ChunkGranite" at (199, 186)
    And I spawn a "ChunkGranite" at (199, 186)
    And I spawn a "ChunkGranite" at (202, 186)
    And I spawn a "ChunkGranite" at (203, 186)
    And I spawn a "ChunkMarble" at (199, 183)
    And I spawn a "ChunkMarble" at (200, 183)
    And I spawn a "ChunkGranite" at (202, 186)
    And I spawn a "ChunkGranite" at (203, 186)
    And I spawn a "ChunkMarble" at (199, 183)
    And I spawn a "ChunkMarble" at (200, 183)
    And I spawn a "ChunkGranite" at (202, 186)
    And I spawn a "ChunkGranite" at (203, 186)
    And I spawn a "ChunkMarble" at (199, 183)
    And I spawn a "ChunkMarble" at (200, 183)
    When I wait 477 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Hare" named "Pomme" is spawned at (201, 184)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "workshop 3 - chunk stacks"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 4. Large pots with different food, and one with a lid: contents and material.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone-close"
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicLargePot" is built at (197, 186)
    And a "ASNeolithicLargePot" is built at (200, 186)
    And a "ASNeolithicLargePot" is built at (203, 186)
    And a "ASNeolithicLargePot" is built at (197, 183)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (200, 183)
    And a "ASNeolithicLargePot" is built at (203, 183)
    And I spawn a "RawBerries" at (197, 186)
    And I spawn a "Milk" at (200, 186)
    And I spawn a "EggChickenUnfertilized" at (203, 186)
    And I spawn a "Kibble" at (197, 183)
    And I spawn a "Pemmican" at (200, 183)
    And I spawn a "RawBerries" at (203, 183)
    And I spawn a "Milk" at (203, 183)
    When I wait 685 ticks
    And Nelim's Pickle Tools: an adult animal of kind "LabradorRetriever" named "Biscuit" is spawned at (201, 185)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "workshop 4 - large pots"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 5. Plinths of wood, granite and vacstone, each showing an item. Vacstone needs Odyssey and is skipped without it.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone-close"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 2.6
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicPlinthWoody" is built at (198, 185)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (200, 185)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (202, 185)
    And I spawn a "Gold" at (198, 185)
    And I spawn a "Silver" at (200, 185)
    And I spawn a "Jade" at (202, 185)
    When I wait 893 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Peacock" named "Eclat" is spawned at (204, 185)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "workshop 5 - plinths"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 6. A stone from another mod beside granite: the generators build for every stone in the game, not for a list.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone-close"
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (196, 185)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (198, 185)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (201, 185)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (203, 185)
    And I spawn a "RawBerries" at (196, 185)
    And I spawn a "ChunkGranite" at (198, 185)
    And I spawn a "ChunkKura_Andesite" at (203, 185)
    And I spawn a "ChunkGranite" at (198, 185)
    And I spawn a "ChunkKura_Andesite" at (203, 185)
    And I spawn a "ChunkGranite" at (198, 185)
    And I spawn a "ChunkKura_Andesite" at (203, 185)
    And I spawn a "RawBerries" at (201, 185)
    When I wait 1102 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Cat" named "Mie" is spawned at (200, 184)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "workshop 6 - a stone from another mod"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
