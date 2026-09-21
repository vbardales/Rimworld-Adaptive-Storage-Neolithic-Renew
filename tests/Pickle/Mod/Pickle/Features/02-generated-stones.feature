# TESTING.md scenario 4, the one the paper checks cannot reach. Three patches build one large pot,
# one plinth and one chunk stack per stone chunk in the game, then patch the framework's
# GraphicsDefs to point at them. Vacstone did not exist when the mod was written; it is picked up
# only because the xpath matches every child of ChunkRockBase rather than a list of names.
#
# The defs are counted by name because no vanilla step reads an architect menu dropdown. What the
# steps can say is that every generated def exists and that one of each kind can be built and
# spawned without an error, which is where a broken GraphicsDef binding shows up.
Feature: the stone variants are generated at load time

  Scenario: each of the five Core stones gets a pot, a plinth and a chunk stack
    Then def "ASNeolithicLargePotChunkGranite" exists
    And def "ASNeolithicPlinthChunkGranite" exists
    And def "ASNeolithicChunkStorageChunkGranite" exists
    And def "ASNeolithicLargePotChunkSandstone" exists
    And def "ASNeolithicPlinthChunkSandstone" exists
    And def "ASNeolithicChunkStorageChunkSandstone" exists
    And def "ASNeolithicLargePotChunkLimestone" exists
    And def "ASNeolithicPlinthChunkLimestone" exists
    And def "ASNeolithicChunkStorageChunkLimestone" exists
    And def "ASNeolithicLargePotChunkSlate" exists
    And def "ASNeolithicPlinthChunkSlate" exists
    And def "ASNeolithicChunkStorageChunkSlate" exists
    And def "ASNeolithicLargePotChunkMarble" exists
    And def "ASNeolithicPlinthChunkMarble" exists
    And def "ASNeolithicChunkStorageChunkMarble" exists

  # With Odyssey active there are six stones and eighteen buildings; without it, five and fifteen,
  # and that is correct rather than a bug. Exactly five with Odyssey means the generation matched
  # on something narrower than it should.
  @requires:Odyssey
  Scenario: with Odyssey, vacstone is picked up without the mod having been told about it
    Then def "ASNeolithicLargePotChunkVacstone" exists
    And def "ASNeolithicPlinthChunkVacstone" exists
    And def "ASNeolithicChunkStorageChunkVacstone" exists

  # Vanilla makes a blueprint and a frame out of every buildable def, after the patches have run, and a
  # blueprint on the map is that def in use. The first run of this scenario looked the blueprint defs up
  # by name (`<defName>_Blueprint`) and found none: Pickle's def lookup does not see them, so the
  # blueprint is placed instead, which is also what a player does. Placing one skips the research.
  Scenario: a blueprint can be placed for a generated building and for a hand-written one
    Given the save "test-colony" is loaded
    When I designate a "ASNeolithicLargePotChunkGranite" from (140, 155) to (140, 155)
    And I designate a "ASNeolithicPlinthChunkGranite" from (144, 155) to (144, 155)
    And I designate a "ASNeolithicChunkStorageChunkGranite" from (148, 155) to (148, 155)
    And I designate a "ASNeolithicLargePot" from (152, 155) to (152, 155)
    And I designate a "ASNeolithicWoodPile" from (156, 155) to (156, 155)
    Then a blueprint for "ASNeolithicLargePotChunkGranite" is at (140, 155)
    And a blueprint for "ASNeolithicPlinthChunkGranite" is at (144, 155)
    And a blueprint for "ASNeolithicChunkStorageChunkGranite" is at (148, 155)
    And a blueprint for "ASNeolithicLargePot" is at (152, 155)
    And a blueprint for "ASNeolithicWoodPile" is at (156, 155)
    And no errors were logged

  @requires:Odyssey
  Scenario: and for the vacstone buildings
    Given the save "test-colony" is loaded
    When I designate a "ASNeolithicLargePotChunkVacstone" from (140, 155) to (140, 155)
    And I designate a "ASNeolithicChunkStorageChunkVacstone" from (148, 155) to (148, 155)
    Then a blueprint for "ASNeolithicLargePotChunkVacstone" is at (140, 155)
    And a blueprint for "ASNeolithicChunkStorageChunkVacstone" is at (148, 155)
    And no errors were logged

  Scenario: one generated building of each kind can be placed without an error
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotChunkGranite" is built at (140, 155)
    And a "ASNeolithicPlinthChunkGranite" is built at (144, 155)
    And a "ASNeolithicChunkStorageChunkGranite" is built at (148, 155)
    Then a "ASNeolithicLargePotChunkGranite" is at (140, 155)
    And a "ASNeolithicPlinthChunkGranite" is at (144, 155)
    And a "ASNeolithicChunkStorageChunkGranite" is at (148, 155)
    And no errors were logged

  @requires:Odyssey
  Scenario: the vacstone buildings can be placed without an error
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotChunkVacstone" is built at (140, 155)
    And a "ASNeolithicPlinthChunkVacstone" is built at (144, 155)
    And a "ASNeolithicChunkStorageChunkVacstone" is built at (148, 155)
    Then a "ASNeolithicChunkStorageChunkVacstone" is at (148, 155)
    And no errors were logged
