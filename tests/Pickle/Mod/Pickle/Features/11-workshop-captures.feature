# The pictures of the Workshop page, PUBLICATION.md section 1, in the order to upload them. They are not the review captures of `03`: those
# show the whole colony around the container, the game's interface and a wide frame, and a Workshop page sells nothing with that.
#
# Each scenario builds its own scene over the upper-right orange area of the central emblem in PickleTools'
# disposable nelim-zen-meadow-studio fixture, sets the hour to noon and the weather to clear, frames
# the emblem at the game's closest zoom,
# then hides the interface for the length of the picture with this suite's own step (the game's
# screenshot mode, Pickle's runner panel taken out of it) and brings it back. A scenario that dies between the two still gets the
# interface back, from an [AfterScenario]. Nothing asserts about the image: a person opens each one, and a passing scenario says only
# that the route ran.
#
# `@wip`, so a default pass skips it. Aim at this file: `-Filter '11-workshop-captures.feature' -IncludeWip`. The last scenario needs the
# stone mod of the "stones" pass (`-DepMap wsl-deps.stones.map`) and is skipped without it.
#
# The camera stays centred at (132, 132) on the upper-right orange area at maximum zoom. A Workshop crop may cut
# a building or its contents at an edge; the icon composition takes priority, as documented in PUBLICATION.md.
@wip
@workshop
@review
Feature: the pictures of the Workshop page

  # 1. The whole set at once, each container with something in it: the mod's one idea in a single picture.
  Scenario: the whole set, each container holding something
    Given the save "nelim-zen-meadow-studio" is loaded
    And Nelim's Pickle Tools: the flower meadow studio is prepared
    And I set the hour to 12
    And I set the weather to "Clear"
    And I clear the rectangle from (123, 123) to (142, 142)
    And a "ASNeolithicWoodPile" is built at (126, 132)
    And a "ASNeolithicHayPile" is built at (128, 132)
    And a "ASNeolithicMealShelf" is built at (130, 132)
    And a "ASNeolithicTextileBundleFabric" is built at (132, 132)
    And a "ASNeolithicBasketWoody" is built at (134, 132)
    And a "ASNeolithicBasketFabric" is built at (136, 132)
    And a "ASNeolithicLargePot" is built at (138, 132)
    And a "ASNeolithicPlinthWoody" is built at (140, 132)
    When I spawn a "WoodLog" at (126, 132)
    And I spawn a "Hay" at (128, 132)
    And I spawn a "MealSimple" at (130, 132)
    And I spawn a "Cloth" at (132, 132)
    And I spawn a "Cloth" at (134, 132)
    And I spawn a "Steel" at (134, 132)
    And I spawn a "Cloth" at (136, 132)
    And I spawn a "Steel" at (136, 132)
    And I spawn a "RawBerries" at (138, 132)
    And I spawn a "Gold" at (140, 132)
    And I zoom all the way in
    And I move the camera to (132, 132)
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
    And I clear the rectangle from (123, 123) to (142, 142)
    And a "ASNeolithicBasketWoody" is built at (130, 132)
    And a "ASNeolithicBasketWoody" is built at (132, 132)
    And a "ASNeolithicBasketWoody" is built at (134, 132)
    When I spawn a "Cloth" at (132, 132)
    And I spawn a "Cloth" at (134, 132)
    And I spawn a "Steel" at (134, 132)
    And I zoom all the way in
    And I move the camera to (132, 132)
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
    And I clear the rectangle from (123, 123) to (142, 142)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (126, 132)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (129, 132)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (132, 132)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (135, 132)
    When I spawn a "ChunkGranite" at (126, 132)
    And I spawn a "ChunkGranite" at (129, 132)
    And I spawn a "ChunkGranite" at (129, 132)
    And I spawn a "ChunkGranite" at (132, 132)
    And I spawn a "ChunkGranite" at (132, 132)
    And I spawn a "ChunkGranite" at (132, 132)
    And I spawn a "ChunkGranite" at (133, 132)
    And I spawn a "ChunkGranite" at (133, 132)
    And I spawn a "ChunkGranite" at (133, 132)
    And I spawn a "ChunkMarble" at (135, 132)
    And I spawn a "ChunkMarble" at (135, 132)
    And I spawn a "ChunkMarble" at (135, 132)
    And I spawn a "ChunkMarble" at (136, 132)
    And I spawn a "ChunkMarble" at (136, 132)
    And I spawn a "ChunkMarble" at (136, 132)
    And I zoom all the way in
    And I move the camera to (132, 132)
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
    And I clear the rectangle from (123, 123) to (142, 142)
    And a "ASNeolithicLargePot" is built at (126, 132)
    And a "ASNeolithicLargePot" is built at (128, 132)
    And a "ASNeolithicLargePot" is built at (130, 132)
    And a "ASNeolithicLargePot" is built at (132, 132)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (134, 132)
    And a "ASNeolithicLargePot" is built at (136, 132)
    When I spawn a "RawBerries" at (126, 132)
    And I spawn a "Milk" at (128, 132)
    And I spawn a "EggChickenUnfertilized" at (130, 132)
    And I spawn a "Kibble" at (132, 132)
    And I spawn a "Pemmican" at (134, 132)
    And I spawn a "RawBerries" at (136, 132)
    And I spawn a "Milk" at (136, 132)
    And I zoom all the way in
    And I move the camera to (132, 132)
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
    And I clear the rectangle from (123, 123) to (142, 142)
    And a "ASNeolithicPlinthWoody" is built at (130, 132)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (132, 132)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (134, 132)
    When I spawn a "Gold" at (130, 132)
    And I spawn a "Silver" at (132, 132)
    And I spawn a "Jade" at (134, 132)
    And I zoom all the way in
    And I move the camera to (132, 132)
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
    And I clear the rectangle from (123, 123) to (142, 142)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (128, 132)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (130, 132)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (134, 132)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (136, 132)
    When I spawn a "RawBerries" at (128, 132)
    And I spawn a "ChunkGranite" at (130, 132)
    And I spawn a "ChunkGranite" at (130, 132)
    And I spawn a "ChunkGranite" at (130, 132)
    And I spawn a "RawBerries" at (134, 132)
    And I spawn a "ChunkKura_Andesite" at (136, 132)
    And I spawn a "ChunkKura_Andesite" at (136, 132)
    And I spawn a "ChunkKura_Andesite" at (136, 132)
    And I zoom all the way in
    And I move the camera to (132, 132)
    And I wait 60 ticks
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    Then I take a screenshot "workshop 6 - a stone from another mod"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
