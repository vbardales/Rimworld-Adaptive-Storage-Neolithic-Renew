Feature: French names on the current upstream architecture

  Scenario: the shared stone defs and hand-written buildings are translated
    Then def "ASNeolithicLargePotStone" field "label" is "grand pot"
    And def "ASNeolithicLargePotStone" field "description" is "Un grand pot taillé destiné au stockage des aliments périssables."
    And def "ASNeolithicPlinthStone" field "label" is "socle"
    And def "ASNeolithicPlinthStone" field "description" is "Un socle en granite brut avec de belles gravures pour exposer des objets."
    And def "ASNeolithicChunkStorage" field "label" is "amas"
    And def "ASNeolithicWoodPile" field "label" is "fagot"

  @requires:Odyssey
  @review
  Scenario: granite and vacstone remain visible as the material in French
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (142, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkVacstone" is built at (148, 155)
    Then a "ASNeolithicLargePotStone" made from "ChunkGranite" is at (142, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkVacstone" is at (148, 155)
    And no errors were logged
    When I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "the granite pot and vacstone chunk stack in French"

  @requires:KExtraStone
  @review
  Scenario: a third-party stone remains visible as the material in French
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (145, 155)
    Then a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is at (145, 155)
    And no errors were logged
    When I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then I take a screenshot "the third-party andesite pot in French"

  Scenario: the research projects and their text are French
    Then def "ASFAdaptiveStorage" field "label" is "Stockage"
    And def "ASNeolithicNeolithicStorage" field "label" is "stockage néolithique"
    And def "ASNeolithicNeolithicStorage" field "description" is "Construire des conteneurs simples et des moyens de stockage pour les matériaux de base."
    And def "ASNeolithicNeolithicItemDisplay" field "label" is "présentoir néolithique"
    And def "ASNeolithicNeolithicItemDisplay" field "description" is "Construire des socles simples, mais esthétiques pour exposer des objets."

  @requires:nelim.pickletools.research
  @review
  Scenario: the framework's research tab reads Stockage and lists both projects
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab "ASFAdaptiveStorage"
    And I wait 30 ticks
    Then Nelim's Pickle Tools: the research window is on the tab "ASFAdaptiveStorage"
    And Nelim's Pickle Tools: the research window labels the tab "ASFAdaptiveStorage" as "Stockage"
    And Nelim's Pickle Tools: the research window lists the project "ASNeolithicNeolithicStorage" costing 400
    And Nelim's Pickle Tools: the research window lists the project "ASNeolithicNeolithicItemDisplay" costing 400
    And I take a screenshot "the research window on the storage tab, in French"
    When I close all dialogs
