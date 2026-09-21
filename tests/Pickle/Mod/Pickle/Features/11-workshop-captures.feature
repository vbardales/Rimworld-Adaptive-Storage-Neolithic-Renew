# The pictures of the Workshop page, PUBLICATION.md section 1, in the order to upload them. They are not the review captures of `03`: those
# show the whole colony around the container, the game's interface and a wide frame, and a Workshop page sells nothing with that.
#
# Each scenario builds its own scene on open ground of the test colony, sets the hour to noon and the weather to clear, puts the camera
# on the scene at the closest zoom, then hides the interface for the length of the picture with this suite's own step (the game's
# screenshot mode, Pickle's runner panel taken out of it) and brings it back. A scenario that dies between the two still gets the
# interface back, from an [AfterScenario]. Nothing asserts about the image: a person opens each one, and a passing scenario says only
# that the route ran.
#
# `@wip`, so a default pass skips it. Aim at this file: `-Filter '11-workshop-captures.feature' -IncludeWip`. The last scenario needs the
# stone mod of the "stones" pass (`-DepMap wsl-deps.stones.map`) and is skipped without it.
#
# The closest zoom of the game gives about 45 px per cell, so a row of containers fills a third of the width of a 1920 frame: the pictures
# are to be cropped to their subject, outside the game, before they go up. That is a step for a person, and is said in PUBLICATION.md.
@wip
@workshop
@review
Feature: the pictures of the Workshop page

  # 1. The whole set at once, each container with something in it: the mod's one idea in a single picture.
  Scenario: the whole set, each container holding something
    Given the save "test-colony" is loaded
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicWoodPile" is built at (140, 155)
    And a "ASNeolithicHayPile" is built at (142, 155)
    And a "ASNeolithicMealShelf" is built at (144, 155)
    And a "ASNeolithicTextileBundleFabric" is built at (146, 155)
    And a "ASNeolithicBasketWoody" is built at (148, 155)
    And a "ASNeolithicBasketFabric" is built at (150, 155)
    And a "ASNeolithicLargePot" is built at (152, 155)
    And a "ASNeolithicPlinthWoody" is built at (154, 155)
    When I spawn a "WoodLog" at (140, 155)
    And I spawn a "Hay" at (142, 155)
    And I spawn a "MealSimple" at (144, 155)
    And I spawn a "Cloth" at (146, 155)
    And I spawn a "Cloth" at (148, 155)
    And I spawn a "Steel" at (148, 155)
    And I spawn a "Cloth" at (150, 155)
    And I spawn a "Steel" at (150, 155)
    And I spawn a "RawBerries" at (152, 155)
    And I spawn a "Gold" at (154, 155)
    And I zoom all the way in
    And I move the camera to (147, 155)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 1 - the whole set"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 2. The idea, isolated: a basket empty, with one item, full.
  Scenario: a wooden basket, empty, with one item and full, side by side
    Given the save "test-colony" is loaded
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicBasketWoody" is built at (144, 155)
    And a "ASNeolithicBasketWoody" is built at (146, 155)
    And a "ASNeolithicBasketWoody" is built at (148, 155)
    When I spawn a "Cloth" at (146, 155)
    And I spawn a "Cloth" at (148, 155)
    And I spawn a "Steel" at (148, 155)
    And I zoom all the way in
    And I move the camera to (146, 155)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 2 - a basket fills up"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 3. A stack of chunks at one, two and six chunks, and a marble one: the sprite follows the load and the colour follows the stone.
  Scenario: granite chunk stacks at one, two and six chunks, and a marble one
    Given the save "test-colony" is loaded
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicChunkStorageChunkGranite" is built at (140, 155)
    And a "ASNeolithicChunkStorageChunkGranite" is built at (143, 155)
    And a "ASNeolithicChunkStorageChunkGranite" is built at (146, 155)
    And a "ASNeolithicChunkStorageChunkMarble" is built at (149, 155)
    When I spawn a "ChunkGranite" at (140, 155)
    And I spawn a "ChunkGranite" at (143, 155)
    And I spawn a "ChunkGranite" at (143, 155)
    And I spawn a "ChunkGranite" at (146, 155)
    And I spawn a "ChunkGranite" at (146, 155)
    And I spawn a "ChunkGranite" at (146, 155)
    And I spawn a "ChunkGranite" at (147, 155)
    And I spawn a "ChunkGranite" at (147, 155)
    And I spawn a "ChunkGranite" at (147, 155)
    And I spawn a "ChunkMarble" at (149, 155)
    And I spawn a "ChunkMarble" at (149, 155)
    And I spawn a "ChunkMarble" at (149, 155)
    And I spawn a "ChunkMarble" at (150, 155)
    And I spawn a "ChunkMarble" at (150, 155)
    And I spawn a "ChunkMarble" at (150, 155)
    And I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 3 - chunk stacks"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 4. Large pots with different food, and one with a lid: contents and material.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "test-colony" is loaded
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicLargePot" is built at (140, 155)
    And a "ASNeolithicLargePot" is built at (142, 155)
    And a "ASNeolithicLargePot" is built at (144, 155)
    And a "ASNeolithicLargePot" is built at (146, 155)
    And a "ASNeolithicLargePotChunkGranite" is built at (148, 155)
    And a "ASNeolithicLargePot" is built at (150, 155)
    When I spawn a "RawBerries" at (140, 155)
    And I spawn a "Milk" at (142, 155)
    And I spawn a "EggChickenUnfertilized" at (144, 155)
    And I spawn a "Kibble" at (146, 155)
    And I spawn a "Pemmican" at (148, 155)
    And I spawn a "RawBerries" at (150, 155)
    And I spawn a "Milk" at (150, 155)
    And I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 4 - large pots"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 5. Plinths of wood, granite and vacstone, each showing an item. Vacstone needs Odyssey and is skipped without it.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item
    Given the save "test-colony" is loaded
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicPlinthWoody" is built at (144, 155)
    And a "ASNeolithicPlinthChunkGranite" is built at (146, 155)
    And a "ASNeolithicPlinthChunkVacstone" is built at (148, 155)
    When I spawn a "Gold" at (144, 155)
    And I spawn a "Silver" at (146, 155)
    And I spawn a "Jade" at (148, 155)
    And I zoom all the way in
    And I move the camera to (146, 155)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 5 - plinths"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures

  # 6. A stone from another mod beside granite: the generators build for every stone in the game, not for a list.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "test-colony" is loaded
    And I set the hour to 12
    And I set the weather to "Clear"
    And a "ASNeolithicLargePotChunkGranite" is built at (142, 155)
    And a "ASNeolithicChunkStorageChunkGranite" is built at (144, 155)
    And a "ASNeolithicLargePotChunkKura_Andesite" is built at (148, 155)
    And a "ASNeolithicChunkStorageChunkKura_Andesite" is built at (150, 155)
    When I spawn a "RawBerries" at (142, 155)
    And I spawn a "ChunkGranite" at (144, 155)
    And I spawn a "ChunkGranite" at (144, 155)
    And I spawn a "ChunkGranite" at (144, 155)
    And I spawn a "RawBerries" at (148, 155)
    And I spawn a "ChunkKura_Andesite" at (150, 155)
    And I spawn a "ChunkKura_Andesite" at (150, 155)
    And I spawn a "ChunkKura_Andesite" at (150, 155)
    And I zoom all the way in
    And I move the camera to (146, 155)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 6 - a stone from another mod"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
