# TESTING.md scenarios 5 and 6, and the reason the mod exists: every container shows what is inside
# it. If this fails, nothing else being right matters.
#
# Nothing here asserts about the image. Whether the first item sits IN the basket, drawn above its
# base and offset upward, whether two items are arranged in a circle instead of piled on one point,
# whether a stack of chunks swaps its sprite at one, two and six chunks: those are judgements about
# a picture. What the suite buys is that they are made on the same scene, framed the same way, after
# every change. Green means the route ran, never that the picture is right - a person opens the
# captures.
#
# Every scenario builds its own container on a fixed cell of the test colony and spawns the items
# into that cell. An item spawned on a storage building's cell is expected to be held by it, which is the
# state the framework draws from (to confirm on the first run); hauling would add a colonist and a wait for nothing the pictures
# show. The framework redraws on its own schedule, hence the wait before every capture.
#
# These are review captures, not the Workshop page's: those need their own scene, without the
# colony around, and are prepared at the prepublished step.
@review
Feature: what a container shows of its contents

  Background:
    Given the save "test-colony" is loaded

  # A basket takes two items per cell. The empty basket must draw as a basket, the first item must
  # appear in it, the second joins it. Two different items, so that a merge into one stack cannot
  # pass for a second item.
  Scenario: a wooden basket, empty, then with one item, then full
    Given a "ASNeolithicBasketWoody" is built at (145, 155)
    And I zoom all the way in
    And I move the camera to (145, 155)
    When I wait 30 ticks
    Then I take a screenshot "wooden basket, empty"
    When I spawn a "Cloth" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "wooden basket, one item"
    When I spawn a "Steel" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "wooden basket, full"

  # A separate GraphicsDef on a separate texture.
  Scenario: a fabric basket, empty, then full
    Given a "ASNeolithicBasketFabric" is built at (145, 155)
    And I zoom all the way in
    And I move the camera to (145, 155)
    When I wait 30 ticks
    Then I take a screenshot "fabric basket, empty"
    When I spawn a "Cloth" at (145, 155)
    And I spawn a "Steel" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "fabric basket, full"

  Scenario: a large pot holding raw food
    Given a "ASNeolithicLargePot" is built at (145, 155)
    And I zoom all the way in
    And I move the camera to (145, 155)
    When I wait 30 ticks
    Then I take a screenshot "large pot, empty"
    When I spawn a "RawBerries" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "large pot, berries"

  # The chunk stack does the opposite of the basket: it hides its contents and swaps its own sprite
  # at thresholds written into the GraphicsDef, one chunk stage 1, two stage 2, six stage 3. It
  # holds three per cell across two cells, so six is its full load. Chunks are spawned onto the
  # building's two cells, three each.
  Scenario: a granite chunk stack at one, two and six chunks
    Given a "ASNeolithicChunkStorageChunkGranite" is built at (145, 155)
    And I zoom all the way in
    And I move the camera to (146, 155)
    When I spawn a "ChunkGranite" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "granite chunk stack, one chunk"
    When I spawn a "ChunkGranite" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "granite chunk stack, two chunks"
    When I spawn a "ChunkGranite" at (145, 155)
    And I spawn a "ChunkGranite" at (146, 155)
    And I spawn a "ChunkGranite" at (146, 155)
    And I spawn a "ChunkGranite" at (146, 155)
    And I wait 30 ticks
    Then I take a screenshot "granite chunk stack, six chunks"

  # The stack takes its colour from what is in it: a granite stack and a marble stack must not be
  # the same grey.
  Scenario: a marble chunk stack at full load, to compare with the granite one
    Given a "ASNeolithicChunkStorageChunkMarble" is built at (145, 155)
    And I zoom all the way in
    And I move the camera to (146, 155)
    When I spawn a "ChunkMarble" at (145, 155)
    And I spawn a "ChunkMarble" at (145, 155)
    And I spawn a "ChunkMarble" at (145, 155)
    And I spawn a "ChunkMarble" at (146, 155)
    And I spawn a "ChunkMarble" at (146, 155)
    And I spawn a "ChunkMarble" at (146, 155)
    And I wait 30 ticks
    Then I take a screenshot "marble chunk stack, six chunks"

  Scenario: a plinth displaying a single item
    Given a "ASNeolithicPlinthWoody" is built at (145, 155)
    And I zoom all the way in
    And I move the camera to (145, 155)
    When I spawn a "Gold" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "wooden plinth displaying gold"

  @requires:Odyssey
  Scenario: a vacstone plinth, the one stone that did not exist when the mod was written
    Given a "ASNeolithicPlinthChunkVacstone" is built at (145, 155)
    And I zoom all the way in
    And I move the camera to (145, 155)
    When I spawn a "Gold" at (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "vacstone plinth displaying gold"

  # The remaining hand-written containers, one capture each, so that a GraphicsDef bound to the
  # wrong texture or an itemGraphics block that is not read shows up on the one that has it.
  Scenario: the piles, the shelf and the bundle, each with something in it
    Given a "ASNeolithicWoodPile" is built at (140, 155)
    And a "ASNeolithicHayPile" is built at (143, 155)
    And a "ASNeolithicMealShelf" is built at (146, 155)
    And a "ASNeolithicTextileBundleFabric" is built at (149, 155)
    When I spawn a "WoodLog" at (140, 155)
    And I spawn a "Hay" at (143, 155)
    And I spawn a "MealSimple" at (146, 155)
    And I spawn a "Cloth" at (149, 155)
    And I zoom all the way in
    And I move the camera to (144, 155)
    And I wait 30 ticks
    Then I take a screenshot "wood pile, hay pile, meal shelf and textile bundle, each holding one thing"
