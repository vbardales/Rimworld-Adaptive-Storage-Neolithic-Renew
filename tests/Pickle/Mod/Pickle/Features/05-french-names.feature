# The text assertions carry "when the language is French": they check only in a French pass and report "not applicable" in any other language
# (owner, 2026-10-08), so a pass of another language is no longer red by design.
Feature: French names on the current upstream architecture

  Scenario: the shared stone defs and hand-written buildings are translated
    Then Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicLargePotStone" has its label "grand pot" when the language is French
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicLargePotStone" has its description "Un grand pot taillé destiné au stockage des aliments périssables." when the language is French
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicPlinthStone" has its label "socle" when the language is French
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicPlinthStone" has its description "Un socle de pierre brute, orné de belles gravures, pour exposer des objets. Les objets exposés attirent l’attention, et leur beauté ne passe pas inaperçue." when the language is French
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicChunkStorage" has its label "amas" when the language is French
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicWoodPile" has its label "tas de bûches" when the language is French

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
    And I move the camera to (142, 155)
    And I wait 30 ticks
    Then I take a screenshot "the granite pot in French, named by the hover label"
    When I move the camera to (148, 155)
    And I wait 30 ticks
    Then I take a screenshot "the vacstone chunk stack in French, named by the hover label"

  @requires:Kura.ExtraStone
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
    Then Adaptive Storage Neolithic Renew: the research def "ASFAdaptiveStorage" has its label "Stockage" when the language is French
    And Adaptive Storage Neolithic Renew: the research def "ASNeolithicNeolithicStorage" has its label "stockage néolithique" when the language is French
    And Adaptive Storage Neolithic Renew: the research def "ASNeolithicNeolithicStorage" has its description "Construire des conteneurs simples et des moyens de stockage pour les matériaux de base." when the language is French
    And Adaptive Storage Neolithic Renew: the research def "ASNeolithicNeolithicItemDisplay" has its label "présentoir néolithique" when the language is French
    And Adaptive Storage Neolithic Renew: the research def "ASNeolithicNeolithicItemDisplay" has its description "Construire des socles simples, mais esthétiques pour exposer des objets." when the language is French

  @requires:nelim.pickletools.research
  @review
  Scenario: the framework's research tab reads Stockage and lists both projects
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab "ASFAdaptiveStorage"
    And I wait 30 ticks
    Then Nelim's Pickle Tools: the research window is on the tab "ASFAdaptiveStorage"
    And the Adaptive Storage Neolithic Renew research window labels the tab "ASFAdaptiveStorage" as "Stockage" when the language is French
    And Nelim's Pickle Tools: the research window lists the project "ASNeolithicNeolithicStorage" costing 400
    And Nelim's Pickle Tools: the research window lists the project "ASNeolithicNeolithicItemDisplay" costing 400
    And I take a screenshot "the research window on the storage tab, in French"
    When I close all dialogs
