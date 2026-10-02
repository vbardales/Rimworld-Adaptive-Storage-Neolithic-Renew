# The pictures of the Workshop page, PUBLICATION.md section 1, in the order to upload them. They are not the review captures of `03`: those
# show the whole colony around the container, the game's interface and a wide frame, and a Workshop page sells nothing with that.
#
# Gallery series (owner's rule of 2026-10-02: a gallery capture is a staged photograph, not a default screenshot). The story: the storehouse
# of a neolithic camp, from the pantry to the display shelf. One common set links the six pictures: the empty south pavilion of PickleTools'
# disposable nelim-zen-meadow-studio fixture (wood posts, straw matting, shelves, meadow beyond the walls), two torch lamps at its back corners,
# the hour at noon, the weather clear, the camera at the game's closest zoom. Each scenario sets the set, photographs, and the next one starts from
# a fresh preparation of the studio.
# then hides the interface for the length of the picture with this suite's own step (the game's
# screenshot mode, Pickle's runner panel taken out of it) and brings it back. A scenario that dies between the two still gets the
# interface back, from an [AfterScenario]. Nothing asserts about the image: a person opens each one, and a passing scenario says only
# that the route ran.
#
# `@requires:nelim.pickletools.screenshotstudio`: only the pass of `-DepMap wsl-deps.workshop.map` stages the screenshot studio and
# plays this feature; every other pass skips it. Aim at this file with `-Filter '11-workshop-captures.feature'`. The plinth scenario
# also needs Odyssey and the last one the stone mod, both present in that map.
#
# The camera stays centred at (125, 96), the middle of the pavilion floor, at maximum zoom. A Workshop crop may cut
# a building or its contents at an edge; the icon composition takes priority, as documented in PUBLICATION.md.
@requires:nelim.pickletools.screenshotstudio
@workshop
@review
Feature: the pictures of the Workshop page

  # 1. The whole set at once, each container with something in it: the mod's one idea in a single picture.
  Scenario: the whole set, each container holding something
    Given the save "nelim-zen-meadow-studio" is loaded
    And Nelim's Pickle Tools: the flower meadow studio is prepared
    And I set the hour to 12
    And I set the weather to "Clear"
    And I clear the rectangle from (118, 94) to (132, 98)
    And a "TorchLamp" is built at (118, 98)
    And a "TorchLamp" is built at (132, 98)
    And a "ASNeolithicWoodPile" is built at (118, 96)
    And a "ASNeolithicHayPile" is built at (120, 96)
    And a "ASNeolithicMealShelf" is built at (122, 96)
    And a "ASNeolithicTextileBundleFabric" is built at (124, 96)
    And a "ASNeolithicBasketWoody" is built at (126, 96)
    And a "ASNeolithicBasketFabric" is built at (128, 96)
    And a "ASNeolithicLargePot" is built at (130, 96)
    And a "ASNeolithicPlinthWoody" is built at (132, 96)
    When I spawn a "WoodLog" at (118, 96)
    And I spawn a "Hay" at (120, 96)
    And I spawn a "MealSimple" at (122, 96)
    And I spawn a "Cloth" at (124, 96)
    And I spawn a "Cloth" at (126, 96)
    And I spawn a "Steel" at (126, 96)
    And I spawn a "Cloth" at (128, 96)
    And I spawn a "Steel" at (128, 96)
    And I spawn a "RawBerries" at (130, 96)
    And I spawn a "Gold" at (132, 96)
    And I zoom all the way in
    And I move the camera to (125, 96)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 1 - the whole set"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 2. The idea, isolated: a basket empty, with one item, full.
  Scenario: a wooden basket, empty, with one item and full, side by side
    Given the save "nelim-zen-meadow-studio" is loaded
    And Nelim's Pickle Tools: the flower meadow studio is prepared
    And I set the hour to 12
    And I set the weather to "Clear"
    And I clear the rectangle from (118, 94) to (132, 98)
    And a "TorchLamp" is built at (118, 98)
    And a "TorchLamp" is built at (132, 98)
    And a "ASNeolithicBasketWoody" is built at (122, 96)
    And a "ASNeolithicBasketWoody" is built at (124, 96)
    And a "ASNeolithicBasketWoody" is built at (126, 96)
    When I spawn a "Cloth" at (124, 96)
    And I spawn a "Cloth" at (126, 96)
    And I spawn a "Steel" at (126, 96)
    And I zoom all the way in
    And I move the camera to (125, 96)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 2 - a basket fills up"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 3. A stack of chunks at one, two and six chunks, and a marble one: the sprite follows the load and the colour follows the stone.
  Scenario: granite chunk stacks at one, two and six chunks, and a marble one
    Given the save "nelim-zen-meadow-studio" is loaded
    And Nelim's Pickle Tools: the flower meadow studio is prepared
    And I set the hour to 12
    And I set the weather to "Clear"
    And I clear the rectangle from (118, 94) to (132, 98)
    And a "TorchLamp" is built at (118, 98)
    And a "TorchLamp" is built at (132, 98)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (118, 96)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (121, 96)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (124, 96)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (127, 96)
    When I spawn a "ChunkGranite" at (118, 96)
    And I spawn a "ChunkGranite" at (121, 96)
    And I spawn a "ChunkGranite" at (121, 96)
    And I spawn a "ChunkGranite" at (124, 96)
    And I spawn a "ChunkGranite" at (124, 96)
    And I spawn a "ChunkGranite" at (124, 96)
    And I spawn a "ChunkGranite" at (125, 96)
    And I spawn a "ChunkGranite" at (125, 96)
    And I spawn a "ChunkGranite" at (125, 96)
    And I spawn a "ChunkMarble" at (127, 96)
    And I spawn a "ChunkMarble" at (127, 96)
    And I spawn a "ChunkMarble" at (127, 96)
    And I spawn a "ChunkMarble" at (128, 96)
    And I spawn a "ChunkMarble" at (128, 96)
    And I spawn a "ChunkMarble" at (128, 96)
    And I zoom all the way in
    And I move the camera to (125, 96)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 3 - chunk stacks"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 4. Large pots with different food, and one with a lid: contents and material.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "nelim-zen-meadow-studio" is loaded
    And Nelim's Pickle Tools: the flower meadow studio is prepared
    And I set the hour to 12
    And I set the weather to "Clear"
    And I clear the rectangle from (118, 94) to (132, 98)
    And a "TorchLamp" is built at (118, 98)
    And a "TorchLamp" is built at (132, 98)
    And a "ASNeolithicLargePot" is built at (118, 96)
    And a "ASNeolithicLargePot" is built at (120, 96)
    And a "ASNeolithicLargePot" is built at (122, 96)
    And a "ASNeolithicLargePot" is built at (124, 96)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (126, 96)
    And a "ASNeolithicLargePot" is built at (128, 96)
    When I spawn a "RawBerries" at (118, 96)
    And I spawn a "Milk" at (120, 96)
    And I spawn a "EggChickenUnfertilized" at (122, 96)
    And I spawn a "Kibble" at (124, 96)
    And I spawn a "Pemmican" at (126, 96)
    And I spawn a "RawBerries" at (128, 96)
    And I spawn a "Milk" at (128, 96)
    And I zoom all the way in
    And I move the camera to (125, 96)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 4 - large pots"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 5. Plinths of wood, granite and vacstone, each showing an item. Vacstone needs Odyssey and is skipped without it.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item
    Given the save "nelim-zen-meadow-studio" is loaded
    And Nelim's Pickle Tools: the flower meadow studio is prepared
    And I set the hour to 12
    And I set the weather to "Clear"
    And I clear the rectangle from (118, 94) to (132, 98)
    And a "TorchLamp" is built at (118, 98)
    And a "TorchLamp" is built at (132, 98)
    And a "ASNeolithicPlinthWoody" is built at (122, 96)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (124, 96)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (126, 96)
    When I spawn a "Gold" at (122, 96)
    And I spawn a "Silver" at (124, 96)
    And I spawn a "Jade" at (126, 96)
    And I zoom all the way in
    And I move the camera to (125, 96)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 5 - plinths"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 6. A stone from another mod beside granite: the generators build for every stone in the game, not for a list.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "nelim-zen-meadow-studio" is loaded
    And Nelim's Pickle Tools: the flower meadow studio is prepared
    And I set the hour to 12
    And I set the weather to "Clear"
    And I clear the rectangle from (118, 94) to (132, 98)
    And a "TorchLamp" is built at (118, 98)
    And a "TorchLamp" is built at (132, 98)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (120, 96)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (122, 96)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (126, 96)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (128, 96)
    When I spawn a "RawBerries" at (120, 96)
    And I spawn a "ChunkGranite" at (122, 96)
    And I spawn a "ChunkGranite" at (122, 96)
    And I spawn a "ChunkGranite" at (122, 96)
    And I spawn a "RawBerries" at (126, 96)
    And I spawn a "ChunkKura_Andesite" at (128, 96)
    And I spawn a "ChunkKura_Andesite" at (128, 96)
    And I spawn a "ChunkKura_Andesite" at (128, 96)
    And I zoom all the way in
    And I move the camera to (125, 96)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 6 - a stone from another mod"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
