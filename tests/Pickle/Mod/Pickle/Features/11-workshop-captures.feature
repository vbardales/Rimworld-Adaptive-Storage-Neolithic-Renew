# The pictures of the Workshop page, PUBLICATION.md section 1, in the order to upload them. They are not the review captures of `03`: those
# show the whole colony around the container, the game's interface and a wide frame, and a Workshop page sells nothing with that.
#
# Gallery series (owner's rule of 2026-10-02: a gallery capture is a staged photograph, not a default screenshot).
# The story: the storehouse of a neolithic camp, from the pantry shelf to the display plinth. One common set links the six
# pictures: the calm zone of Nelim's tribe, a smooth cream stone square of about 11 x 11 cells in the open air (x 195 to 205, z 181 to 191;
# measured on PickleTools' noon photograph, soft edges, so the usable part is about 9 x 9), with no roof and so natural daylight and no wall
# shadow. It is the one neutral light ground among the outdoor places (see TESTING.md, "Choosing the gallery place"). Every scenario reloads
# the save, so the square is fresh and is never emptied or cleared. The subjects are built in rows on it and furnished with their contents.
# Every animal of the map is removed first (the place step clears only x +-1.78 zoom, and one animal stayed in frame). The hour is noon and the weather clear.
# The map is the sanctuary save "Nelims-tribe" of PickleTools' ScreenshotStudio (Git LFS fixture, 250 x 250, one colonist, vanilla only),
# frames by name (`I am at the sanctuary "calm-zone"`, centred on the square at (200, 187)), then tightens on the subjects (`I frame the cell (200, 185) at zoom 7`);
# see PickleTools/docs/SANCTUAIRE-LIEUX.md.
# Each scenario hides the interface for the length of the picture with this suite's own step (the game's screenshot mode, Pickle's runner
# panel taken out of it) and brings it back. A scenario that dies between the two still gets the interface back, from an [AfterScenario].
# Nothing asserts about the image: a person opens each one, and a passing scenario says only that the route ran.
#
# `@requires:nelim.pickletools.screenshotstudio`: only the pass of `-DepMap wsl-deps.sanctuary.map` stages the studio and the fixture and plays
# this feature; every other pass skips it. Aim at this file with `-Filter '11-workshop-captures.feature'`. The plinth scenario also needs
# Odyssey and the last one the stone mod, both present in that map. The objects stand at x 195 to 205, rows z 183, 186 and 187.
# A Workshop crop may cut a building or its contents at an edge; the icon composition takes priority, as documented in PUBLICATION.md.
@requires:nelim.pickletools.screenshotstudio
@workshop
@review
Feature: the pictures of the Workshop page

  # 1. The whole set at once, each container with something in it: the mod's one idea in a single picture.
  Scenario: the whole set, each container holding something
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 7
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicWoodPile" is built at (196, 187)
    And a "ASNeolithicHayPile" is built at (198, 187)
    And a "ASNeolithicMealShelf" is built at (200, 187)
    And a "ASNeolithicTextileBundleFabric" is built at (202, 187)
    And a "ASNeolithicBasketWoody" is built at (204, 187)
    And a "ASNeolithicBasketFabric" is built at (198, 183)
    And a "ASNeolithicLargePot" is built at (200, 183)
    And a "ASNeolithicPlinthWoody" is built at (202, 183)
    And I spawn a "WoodLog" at (196, 187)
    And I spawn a "Hay" at (198, 187)
    And I spawn a "MealSimple" at (200, 187)
    And I spawn a "Cloth" at (202, 187)
    And I spawn a "Cloth" at (204, 187)
    And I spawn a "Steel" at (204, 187)
    And I spawn a "Cloth" at (198, 183)
    And I spawn a "Steel" at (198, 183)
    And I spawn a "RawBerries" at (200, 183)
    And I spawn a "Gold" at (202, 183)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 1 - the whole set"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 2. The idea, isolated: a basket empty, with one item, full.
  Scenario: a wooden basket, empty, with one item and full, side by side
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 7
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicBasketWoody" is built at (198, 186)
    And a "ASNeolithicBasketWoody" is built at (200, 186)
    And a "ASNeolithicBasketWoody" is built at (202, 186)
    And I spawn a "Cloth" at (200, 186)
    And I spawn a "Cloth" at (202, 186)
    And I spawn a "Steel" at (202, 186)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 2 - a basket fills up"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 3. A stack of chunks at one, two and six chunks, and a marble one: the sprite follows the load and the colour follows the stone.
  Scenario: granite chunk stacks at one, two and six chunks, and a marble one
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 7
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (196, 187)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (199, 187)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (202, 187)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (199, 183)
    And I spawn a "ChunkGranite" at (196, 187)
    And I spawn a "ChunkGranite" at (199, 187)
    And I spawn a "ChunkGranite" at (199, 187)
    And I spawn a "ChunkGranite" at (202, 187)
    And I spawn a "ChunkGranite" at (203, 187)
    And I spawn a "ChunkMarble" at (199, 183)
    And I spawn a "ChunkMarble" at (200, 183)
    And I spawn a "ChunkGranite" at (202, 187)
    And I spawn a "ChunkGranite" at (203, 187)
    And I spawn a "ChunkMarble" at (199, 183)
    And I spawn a "ChunkMarble" at (200, 183)
    And I spawn a "ChunkGranite" at (202, 187)
    And I spawn a "ChunkGranite" at (203, 187)
    And I spawn a "ChunkMarble" at (199, 183)
    And I spawn a "ChunkMarble" at (200, 183)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 3 - chunk stacks"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 4. Large pots with different food, and one with a lid: contents and material.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 7
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicLargePot" is built at (197, 187)
    And a "ASNeolithicLargePot" is built at (200, 187)
    And a "ASNeolithicLargePot" is built at (203, 187)
    And a "ASNeolithicLargePot" is built at (197, 183)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (200, 183)
    And a "ASNeolithicLargePot" is built at (203, 183)
    And I spawn a "RawBerries" at (197, 187)
    And I spawn a "Milk" at (200, 187)
    And I spawn a "EggChickenUnfertilized" at (203, 187)
    And I spawn a "Kibble" at (197, 183)
    And I spawn a "Pemmican" at (200, 183)
    And I spawn a "RawBerries" at (203, 183)
    And I spawn a "Milk" at (203, 183)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 4 - large pots"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 5. Plinths of wood, granite and vacstone, each showing an item. Vacstone needs Odyssey and is skipped without it.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 7
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicPlinthWoody" is built at (198, 186)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (200, 186)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (202, 186)
    And I spawn a "Gold" at (198, 186)
    And I spawn a "Silver" at (200, 186)
    And I spawn a "Jade" at (202, 186)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 5 - plinths"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 6. A stone from another mod beside granite: the generators build for every stone in the game, not for a list.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I frame the cell (200, 185) at zoom 7
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (196, 186)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (198, 186)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (201, 186)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (203, 186)
    And I spawn a "RawBerries" at (196, 186)
    And I spawn a "ChunkGranite" at (198, 186)
    And I spawn a "ChunkKura_Andesite" at (203, 186)
    And I spawn a "ChunkGranite" at (198, 186)
    And I spawn a "ChunkKura_Andesite" at (203, 186)
    And I spawn a "ChunkGranite" at (198, 186)
    And I spawn a "ChunkKura_Andesite" at (203, 186)
    And I spawn a "RawBerries" at (201, 186)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 6 - a stone from another mod"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
