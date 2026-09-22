Feature: Russian translations load from the correctly cased folder

  Scenario: the shared stone defs are translated in Russian
    Then def "ASNeolithicLargePotStone" field "label" is "Большой горшок"
    And def "ASNeolithicPlinthStone" field "label" is "Подиум"
    And def "ASNeolithicChunkStorage" field "label" is "Куча"
    And def "ASNeolithicChunkStorage" field "description" is "Куча, состоящая из обломков и поддерживающая другие обломки. Легко сделать и довольно эффективена в качестве укрытия."

  @requires:Odyssey
  @review
  Scenario: granite and vacstone can be used while Russian is active
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (142, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkVacstone" is built at (148, 155)
    Then a "ASNeolithicLargePotStone" made from "ChunkGranite" is at (142, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkVacstone" is at (148, 155)
    And no errors were logged
    When I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "the granite pot and vacstone chunk stack in Russian"
