# The pictures of the Workshop page, PUBLICATION.md section 1, in the order to upload them. They are not the review captures of `03`: those
# show the whole colony around the container, the game's interface and a wide frame, and a Workshop page sells nothing with that.
#
# Gallery series (owner's rule of 2026-10-02: a gallery capture is a staged photograph, not a default screenshot).
# The story: the storehouse of a neolithic camp by the river, from the pantry shelf to the display plinth. One common set links the six
# pictures: the hut of Nelim's tribe (wood walls, parquet floor, the river a few cells to the west), emptied before each picture, then
# furnished by the scenario with the mod's buildings and their contents. Roof and animals of the hut are removed first (sun-lit room, no sleeping animal). The hour is noon and the weather clear.
# The map is the sanctuary save "Nelims-tribe" of PickleTools' ScreenshotStudio (Git LFS fixture, 250 x 250, one colonist, vanilla only),
# frames by name (`I am at the sanctuary "hut"`: position (140, 73), the game's closest zoom 12) and emptied by name
# (`the sanctuary "hut" is emptied`); see PickleTools/docs/SANCTUAIRE-LIEUX.md.
# Each scenario hides the interface for the length of the picture with this suite's own step (the game's screenshot mode, Pickle's runner
# panel taken out of it) and brings it back. A scenario that dies between the two still gets the interface back, from an [AfterScenario].
# Nothing asserts about the image: a person opens each one, and a passing scenario says only that the route ran.
#
# `@requires:nelim.pickletools.screenshotstudio`: only the pass of `-DepMap wsl-deps.sanctuary.map` stages the studio and the fixture and plays
# this feature; every other pass skips it. Aim at this file with `-Filter '11-workshop-captures.feature'`. The plinth scenario also needs
# Odyssey and the last one the stone mod, both present in that map. Interior of the hut: x 135 to 145, z 69 to 77.
# A Workshop crop may cut a building or its contents at an edge; the icon composition takes priority, as documented in PUBLICATION.md.
@requires:nelim.pickletools.screenshotstudio
@workshop
@review
Feature: the pictures of the Workshop page

  # 1. The whole set at once, each container with something in it: the mod's one idea in a single picture.
  Scenario: the whole set, each container holding something
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the roof is removed from the sanctuary "hut"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I am at the sanctuary "hut"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "hut" is emptied
    And a "ASNeolithicWoodPile" is built at (136, 74)
    And a "ASNeolithicHayPile" is built at (138, 74)
    And a "ASNeolithicMealShelf" is built at (140, 74)
    And a "ASNeolithicTextileBundleFabric" is built at (142, 74)
    And a "ASNeolithicBasketWoody" is built at (144, 74)
    And a "ASNeolithicBasketFabric" is built at (138, 70)
    And a "ASNeolithicLargePot" is built at (140, 70)
    And a "ASNeolithicPlinthWoody" is built at (142, 70)
    And I spawn a "WoodLog" at (136, 74)
    And I spawn a "Hay" at (138, 74)
    And I spawn a "MealSimple" at (140, 74)
    And I spawn a "Cloth" at (142, 74)
    And I spawn a "Cloth" at (144, 74)
    And I spawn a "Steel" at (144, 74)
    And I spawn a "Cloth" at (138, 70)
    And I spawn a "Steel" at (138, 70)
    And I spawn a "RawBerries" at (140, 70)
    And I spawn a "Gold" at (142, 70)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 1 - the whole set"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 2. The idea, isolated: a basket empty, with one item, full.
  Scenario: a wooden basket, empty, with one item and full, side by side
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the roof is removed from the sanctuary "hut"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I am at the sanctuary "hut"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "hut" is emptied
    And a "ASNeolithicBasketWoody" is built at (138, 73)
    And a "ASNeolithicBasketWoody" is built at (140, 73)
    And a "ASNeolithicBasketWoody" is built at (142, 73)
    And I spawn a "Cloth" at (140, 73)
    And I spawn a "Cloth" at (142, 73)
    And I spawn a "Steel" at (142, 73)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 2 - a basket fills up"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 3. A stack of chunks at one, two and six chunks, and a marble one: the sprite follows the load and the colour follows the stone.
  Scenario: granite chunk stacks at one, two and six chunks, and a marble one
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the roof is removed from the sanctuary "hut"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I am at the sanctuary "hut"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "hut" is emptied
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (135, 73)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (138, 73)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (141, 73)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (144, 73)
    And I spawn a "ChunkGranite" at (135, 73)
    And I spawn a "ChunkGranite" at (138, 73)
    And I spawn a "ChunkGranite" at (138, 73)
    And I spawn a "ChunkGranite" at (141, 73)
    And I spawn a "ChunkGranite" at (142, 73)
    And I spawn a "ChunkMarble" at (144, 73)
    And I spawn a "ChunkMarble" at (145, 73)
    And I spawn a "ChunkGranite" at (141, 73)
    And I spawn a "ChunkGranite" at (142, 73)
    And I spawn a "ChunkMarble" at (144, 73)
    And I spawn a "ChunkMarble" at (145, 73)
    And I spawn a "ChunkGranite" at (141, 73)
    And I spawn a "ChunkGranite" at (142, 73)
    And I spawn a "ChunkMarble" at (144, 73)
    And I spawn a "ChunkMarble" at (145, 73)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 3 - chunk stacks"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 4. Large pots with different food, and one with a lid: contents and material.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the roof is removed from the sanctuary "hut"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I am at the sanctuary "hut"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "hut" is emptied
    And a "ASNeolithicLargePot" is built at (135, 73)
    And a "ASNeolithicLargePot" is built at (137, 73)
    And a "ASNeolithicLargePot" is built at (139, 73)
    And a "ASNeolithicLargePot" is built at (141, 73)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (143, 73)
    And a "ASNeolithicLargePot" is built at (145, 73)
    And I spawn a "RawBerries" at (135, 73)
    And I spawn a "Milk" at (137, 73)
    And I spawn a "EggChickenUnfertilized" at (139, 73)
    And I spawn a "Kibble" at (141, 73)
    And I spawn a "Pemmican" at (143, 73)
    And I spawn a "RawBerries" at (145, 73)
    And I spawn a "Milk" at (145, 73)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 4 - large pots"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 5. Plinths of wood, granite and vacstone, each showing an item. Vacstone needs Odyssey and is skipped without it.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the roof is removed from the sanctuary "hut"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I am at the sanctuary "hut"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "hut" is emptied
    And a "ASNeolithicPlinthWoody" is built at (138, 73)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (140, 73)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (142, 73)
    And I spawn a "Gold" at (138, 73)
    And I spawn a "Silver" at (140, 73)
    And I spawn a "Jade" at (142, 73)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 5 - plinths"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 6. A stone from another mod beside granite: the generators build for every stone in the game, not for a list.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the roof is removed from the sanctuary "hut"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I am at the sanctuary "hut"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "hut" is emptied
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (137, 73)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (139, 73)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (142, 73)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (144, 73)
    And I spawn a "RawBerries" at (137, 73)
    And I spawn a "ChunkGranite" at (139, 73)
    And I spawn a "ChunkKura_Andesite" at (144, 73)
    And I spawn a "ChunkGranite" at (139, 73)
    And I spawn a "ChunkKura_Andesite" at (144, 73)
    And I spawn a "ChunkGranite" at (139, 73)
    And I spawn a "ChunkKura_Andesite" at (144, 73)
    And I spawn a "RawBerries" at (142, 73)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 6 - a stone from another mod"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
