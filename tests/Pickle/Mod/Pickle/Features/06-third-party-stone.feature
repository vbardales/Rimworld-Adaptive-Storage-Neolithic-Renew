# The building defs consume ASFStoneChunks, so a third-party chunk joins the system through
# its stuff category rather than through a generated def or a translation hook.
@requires:KExtraStone
Feature: a third-party stone works as building material

  Scenario: the shared stone buildings remain the only building defs
    Then def "ASNeolithicLargePotStone" exists
    And def "ASNeolithicPlinthStone" exists
    And def "ASNeolithicChunkStorage" exists
    And def "ASNeolithicLargePotChunkKura_Andesite" does not exist

  @review
  Scenario: a stone the mod never listed can build all three variants
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (140, 155)
    And a "ASNeolithicPlinthStone" made from "ChunkKura_Andesite" is built at (144, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (148, 155)
    Then a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is at (140, 155)
    And a "ASNeolithicPlinthStone" made from "ChunkKura_Andesite" is at (144, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is at (148, 155)
    And no errors were logged
    When I zoom all the way in
    And I move the camera to (144, 155)
    And I wait 30 ticks
    Then I take a screenshot "the third-party andesite stone used by the shared building defs"
