# The pictures of the Workshop page, PUBLICATION.md section 1, in the order to upload them. They are not the review captures of `03`: those
# show the whole colony around the container, the game's interface and a wide frame, and a Workshop page sells nothing with that.
#
# Gallery series (owner's rule of 2026-10-02: a gallery capture is a staged photograph, not a default screenshot).
# The story: the storehouse of a neolithic camp by the river, from the pantry shelf to the display plinth. One common set links the six
# pictures: the podium of Nelim's tribe (a free 14 x 14 square in the open air, bare earth, no roof and so natural daylight and no wall shadow),
# emptied before each picture, then furnished by the scenario with the mod's buildings and their contents. Animals of the podium are removed first.
# The hour is noon and the weather clear. (The first series stood in the roofed hut; with its roof removed it still sat in wall shadow.)
# The map is the sanctuary save "Nelims-tribe" of PickleTools' ScreenshotStudio (Git LFS fixture, 250 x 250, one colonist, vanilla only),
# frames by name (`I am at the sanctuary "podium"`: position (197, 152), the game's closest zoom 12) and emptied by name
# (`the sanctuary "podium" is emptied`); see PickleTools/docs/SANCTUAIRE-LIEUX.md.
# Each scenario hides the interface for the length of the picture with this suite's own step (the game's screenshot mode, Pickle's runner
# panel taken out of it) and brings it back. A scenario that dies between the two still gets the interface back, from an [AfterScenario].
# Nothing asserts about the image: a person opens each one, and a passing scenario says only that the route ran.
#
# `@requires:nelim.pickletools.screenshotstudio`: only the pass of `-DepMap wsl-deps.sanctuary.map` stages the studio and the fixture and plays
# this feature; every other pass skips it. Aim at this file with `-Filter '11-workshop-captures.feature'`. The plinth scenario also needs
# Odyssey and the last one the stone mod, both present in that map. Podium: x 191 to 204, z 146 to 159; the objects stand at x 192 to 202, rows z 149, 152 and 153.
# A Workshop crop may cut a building or its contents at an edge; the icon composition takes priority, as documented in PUBLICATION.md.
@requires:nelim.pickletools.screenshotstudio
@workshop
@review
Feature: the pictures of the Workshop page

  # 1. The whole set at once, each container with something in it: the mod's one idea in a single picture.
  Scenario: the whole set, each container holding something
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "podium"
    And Nelim's Pickle Tools: I am at the sanctuary "podium"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "podium" is emptied
    And a "ASNeolithicWoodPile" is built at (193, 153)
    And a "ASNeolithicHayPile" is built at (195, 153)
    And a "ASNeolithicMealShelf" is built at (197, 153)
    And a "ASNeolithicTextileBundleFabric" is built at (199, 153)
    And a "ASNeolithicBasketWoody" is built at (201, 153)
    And a "ASNeolithicBasketFabric" is built at (195, 149)
    And a "ASNeolithicLargePot" is built at (197, 149)
    And a "ASNeolithicPlinthWoody" is built at (199, 149)
    And I spawn a "WoodLog" at (193, 153)
    And I spawn a "Hay" at (195, 153)
    And I spawn a "MealSimple" at (197, 153)
    And I spawn a "Cloth" at (199, 153)
    And I spawn a "Cloth" at (201, 153)
    And I spawn a "Steel" at (201, 153)
    And I spawn a "Cloth" at (195, 149)
    And I spawn a "Steel" at (195, 149)
    And I spawn a "RawBerries" at (197, 149)
    And I spawn a "Gold" at (199, 149)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 1 - the whole set"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 2. The idea, isolated: a basket empty, with one item, full.
  Scenario: a wooden basket, empty, with one item and full, side by side
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "podium"
    And Nelim's Pickle Tools: I am at the sanctuary "podium"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "podium" is emptied
    And a "ASNeolithicBasketWoody" is built at (195, 152)
    And a "ASNeolithicBasketWoody" is built at (197, 152)
    And a "ASNeolithicBasketWoody" is built at (199, 152)
    And I spawn a "Cloth" at (197, 152)
    And I spawn a "Cloth" at (199, 152)
    And I spawn a "Steel" at (199, 152)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 2 - a basket fills up"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 3. A stack of chunks at one, two and six chunks, and a marble one: the sprite follows the load and the colour follows the stone.
  Scenario: granite chunk stacks at one, two and six chunks, and a marble one
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "podium"
    And Nelim's Pickle Tools: I am at the sanctuary "podium"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "podium" is emptied
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (192, 152)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (195, 152)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (198, 152)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (201, 152)
    And I spawn a "ChunkGranite" at (192, 152)
    And I spawn a "ChunkGranite" at (195, 152)
    And I spawn a "ChunkGranite" at (195, 152)
    And I spawn a "ChunkGranite" at (198, 152)
    And I spawn a "ChunkGranite" at (199, 152)
    And I spawn a "ChunkMarble" at (201, 152)
    And I spawn a "ChunkMarble" at (202, 152)
    And I spawn a "ChunkGranite" at (198, 152)
    And I spawn a "ChunkGranite" at (199, 152)
    And I spawn a "ChunkMarble" at (201, 152)
    And I spawn a "ChunkMarble" at (202, 152)
    And I spawn a "ChunkGranite" at (198, 152)
    And I spawn a "ChunkGranite" at (199, 152)
    And I spawn a "ChunkMarble" at (201, 152)
    And I spawn a "ChunkMarble" at (202, 152)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 3 - chunk stacks"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 4. Large pots with different food, and one with a lid: contents and material.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "podium"
    And Nelim's Pickle Tools: I am at the sanctuary "podium"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "podium" is emptied
    And a "ASNeolithicLargePot" is built at (192, 152)
    And a "ASNeolithicLargePot" is built at (194, 152)
    And a "ASNeolithicLargePot" is built at (196, 152)
    And a "ASNeolithicLargePot" is built at (198, 152)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (200, 152)
    And a "ASNeolithicLargePot" is built at (202, 152)
    And I spawn a "RawBerries" at (192, 152)
    And I spawn a "Milk" at (194, 152)
    And I spawn a "EggChickenUnfertilized" at (196, 152)
    And I spawn a "Kibble" at (198, 152)
    And I spawn a "Pemmican" at (200, 152)
    And I spawn a "RawBerries" at (202, 152)
    And I spawn a "Milk" at (202, 152)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 4 - large pots"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 5. Plinths of wood, granite and vacstone, each showing an item. Vacstone needs Odyssey and is skipped without it.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "podium"
    And Nelim's Pickle Tools: I am at the sanctuary "podium"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "podium" is emptied
    And a "ASNeolithicPlinthWoody" is built at (195, 152)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (197, 152)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (199, 152)
    And I spawn a "Gold" at (195, 152)
    And I spawn a "Silver" at (197, 152)
    And I spawn a "Jade" at (199, 152)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 5 - plinths"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 6. A stone from another mod beside granite: the generators build for every stone in the game, not for a list.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "podium"
    And Nelim's Pickle Tools: I am at the sanctuary "podium"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: the sanctuary "podium" is emptied
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (194, 152)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (196, 152)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (199, 152)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (201, 152)
    And I spawn a "RawBerries" at (194, 152)
    And I spawn a "ChunkGranite" at (196, 152)
    And I spawn a "ChunkKura_Andesite" at (201, 152)
    And I spawn a "ChunkGranite" at (196, 152)
    And I spawn a "ChunkKura_Andesite" at (201, 152)
    And I spawn a "ChunkGranite" at (196, 152)
    And I spawn a "ChunkKura_Andesite" at (201, 152)
    And I spawn a "RawBerries" at (199, 152)
    When I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 6 - a stone from another mod"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
