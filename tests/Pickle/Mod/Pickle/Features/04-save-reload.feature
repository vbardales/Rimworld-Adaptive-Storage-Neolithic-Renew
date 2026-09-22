# TESTING.md scenario 11. Sprite state that is derived rather than stored has to rebuild on load,
# and that only survives a real save and a real reload. "the save round trips" fails on a scribe
# error; the assertions after "I save and reload" check that the buildings and their contents came
# back where they were; the capture is for a person to look at the redrawn containers.
#
# The reload is a Pickle vanilla step, so the fixture's own colonists and map go through it too.
@review
Feature: containers survive a save and a reload

  Background:
    Given the save "test-colony" is loaded

  Scenario: a filled basket and a loaded chunk stack come back as they were
    Given a "ASNeolithicBasketWoody" is built at (145, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (150, 155)
    And I spawn a "Cloth" at (145, 155)
    And I spawn a "Steel" at (145, 155)
    And I spawn a "ChunkGranite" at (150, 155)
    And I spawn a "ChunkGranite" at (150, 155)
    And I spawn a "ChunkGranite" at (150, 155)
    Then the save round trips
    When I save and reload
    Then a "ASNeolithicBasketWoody" is at (145, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is at (150, 155)
    And a "Cloth" is at (145, 155)
    And a "Steel" is at (145, 155)
    And a "ChunkGranite" is at (150, 155)
    And no errors were logged
    When I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "wooden basket after a reload"
    When I move the camera to (150, 155)
    And I wait 30 ticks
    Then I take a screenshot "granite chunk stack after a reload"
