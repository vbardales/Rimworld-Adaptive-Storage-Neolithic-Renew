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

  Scenario: the nine hand-written buildings exist and are this mod's
    Then def "ASNeolithicBasketWoody" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicBasketFabric" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicHayPile" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicWoodPile" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicLargePot" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicMealShelf" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicTextileBundleFabric" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicTextileBundleLeather" is defined by mod "nelim.adaptivestorageneolithic"
    And def "ASNeolithicPlinthWoody" is defined by mod "nelim.adaptivestorageneolithic"

  Scenario: the two research projects exist
    Then def "ASNeolithicNeolithicStorage" of type "ResearchProjectDef" exists
    And def "ASNeolithicNeolithicItemDisplay" of type "ResearchProjectDef" exists

  Scenario: loading a game with the mod raises no error
    Given the save "test-colony" is loaded
    Then no errors were logged
