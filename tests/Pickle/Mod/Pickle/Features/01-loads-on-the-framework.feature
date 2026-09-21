# TESTING.md scenarios 1, 2 and 3. The mod is declarative: 46 of its 71 defs are framework
# GraphicsDefs, so what can fail is a parent that does not resolve, and that fails in the log
# before any scenario runs. A def that exists is the proof that its parent resolved.
#
# This is a real load, which the standalone tests cannot be: they expand the templates with their
# own helper and run the shipped generator outside the game, never through the game's patch
# pipeline and the framework's loading. Everything here is a Pickle vanilla step; no assembly.
Feature: the mod loads on top of the Adaptive Storage Framework

  Scenario: the framework is active and loads before the mod
    Then mod "nelim.adaptivestorageneolithic" is loaded
    And mod "adaptive.storage.framework" is loaded
    And mod "adaptive.storage.framework" loads before "nelim.adaptivestorageneolithic"

  # A hand-written building shares its defName with the framework GraphicsDef that draws it, so the
  # def is named by type: "is defined by mod" refuses an ambiguous name (found on the first run).
  Scenario: the nine hand-written buildings exist
    Then def "ASNeolithicBasketWoody" of type "ThingDef" exists
    And def "ASNeolithicBasketFabric" of type "ThingDef" exists
    And def "ASNeolithicHayPile" of type "ThingDef" exists
    And def "ASNeolithicWoodPile" of type "ThingDef" exists
    And def "ASNeolithicLargePot" of type "ThingDef" exists
    And def "ASNeolithicMealShelf" of type "ThingDef" exists
    And def "ASNeolithicTextileBundleFabric" of type "ThingDef" exists
    And def "ASNeolithicTextileBundleLeather" of type "ThingDef" exists
    And def "ASNeolithicPlinthWoody" of type "ThingDef" exists

  Scenario: the framework's GraphicsDefs that draw them exist
    Then def "ASNeolithicBasketWoody" of type "GraphicsDef" exists
    And def "ASNeolithicBasketFabric" of type "GraphicsDef" exists
    And def "ASNeolithicHayPile" of type "GraphicsDef" exists
    And def "ASNeolithicMealShelf" of type "GraphicsDef" exists
    And def "ASNeolithicPlinthWoody" of type "GraphicsDef" exists
    And def "ASNeolithicTextileBundleFabric" of type "GraphicsDef" exists
    And def "ASNeolithicTextileBundleLeather" of type "GraphicsDef" exists

  Scenario: the two research projects exist
    Then def "ASNeolithicNeolithicStorage" of type "ResearchProjectDef" exists
    And def "ASNeolithicNeolithicItemDisplay" of type "ResearchProjectDef" exists

  Scenario: loading a game with the mod raises no error
    Given the save "test-colony" is loaded
    Then no errors were logged
