# Current upstream uses three buildings made from the ASFStoneChunks stuff category.
# These scenarios prove Core, Odyssey and third-party chunks can be used without generating per-stone defs.
Feature: stone buildings use stone chunks as construction material

  Scenario: the three stone buildings use the framework stone-chunk category
    Then def "ASNeolithicLargePotStone" exists
    And def "ASNeolithicPlinthStone" exists
    And def "ASNeolithicChunkStorage" exists
    And def "ASNeolithicLargePotChunkGranite" does not exist
    And def "ASNeolithicPlinthChunkGranite" does not exist
    And def "ASNeolithicChunkStorageChunkGranite" does not exist

  @review
  Scenario: granite blueprints can be placed beside the wooden entries
    Given the save "test-colony" is loaded
    When I designate a "ASNeolithicLargePotStone" made from "ChunkGranite" at (140, 155)
    And I designate a "ASNeolithicPlinthStone" made from "ChunkGranite" at (144, 155)
    And I designate a "ASNeolithicChunkStorage" made from "ChunkGranite" at (148, 155)
    And I designate a "ASNeolithicLargePot" from (152, 155) to (152, 155)
    And I designate a "ASNeolithicWoodPile" from (156, 155) to (156, 155)
    Then a blueprint for "ASNeolithicLargePotStone" made from "ChunkGranite" is at (140, 155)
    And a blueprint for "ASNeolithicPlinthStone" made from "ChunkGranite" is at (144, 155)
    And a blueprint for "ASNeolithicChunkStorage" made from "ChunkGranite" is at (148, 155)
    And a blueprint for "ASNeolithicLargePot" is at (152, 155)
    And a blueprint for "ASNeolithicWoodPile" is at (156, 155)
    And no errors were logged
    When I zoom all the way in
    And I move the camera to (148, 155)
    And I wait 30 ticks
    Then I take a screenshot "the stone-as-stuff and wooden architect entries as blueprints"

  Scenario: granite buildings of all three kinds can be spawned
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (140, 155)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (144, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (148, 155)
    Then a "ASNeolithicLargePotStone" made from "ChunkGranite" is at (140, 155)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is at (144, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is at (148, 155)
    And no errors were logged

  @requires:Odyssey
  @review
  Scenario: vacstone works as material without a dedicated generated def
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotStone" made from "ChunkVacstone" is built at (140, 155)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (144, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkVacstone" is built at (148, 155)
    Then a "ASNeolithicLargePotStone" made from "ChunkVacstone" is at (140, 155)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is at (144, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkVacstone" is at (148, 155)
    And no errors were logged
    When I zoom all the way in
    And I move the camera to (144, 155)
    And I wait 30 ticks
    Then I take a screenshot "the vacstone buildings using the shared stone defs"
