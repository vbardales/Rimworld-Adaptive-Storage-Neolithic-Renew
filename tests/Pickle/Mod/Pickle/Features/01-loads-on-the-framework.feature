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

  # TESTING.md scenario 2. The tab belongs to the framework, so a project pointing at it is the
  # cross-reference resolving; a missing tab is the framework's absence showing again. The cost and
  # the tech level are read here rather than in a unit test because the value the game ends up with
  # is what matters, not the one the XML asks for.
  Scenario: both projects sit in the framework's tab, at the cost the file asks for
    Then def "ASNeolithicNeolithicStorage" field "tab.defName" is "ASFAdaptiveStorage"
    And def "ASNeolithicNeolithicStorage" field "baseCost" is "400"
    And def "ASNeolithicNeolithicStorage" field "techLevel" is "Neolithic"
    And def "ASNeolithicNeolithicItemDisplay" field "tab.defName" is "ASFAdaptiveStorage"
    And def "ASNeolithicNeolithicItemDisplay" field "baseCost" is "400"
    And def "ASNeolithicNeolithicItemDisplay" field "techLevel" is "Neolithic"

  Scenario: loading a game with the mod raises no error
    Given the save "test-colony" is loaded
    Then no errors were logged

  # The rest of TESTING.md scenario 2: the window itself, with the framework's tab beside Main and Anomaly.
  # The scenario asserts only that the window opened. The capture shows that the tab exists and what it is
  # called, in each language; it does NOT show the two projects, which sit inside that tab, and opening
  # it takes a click on a button named by its label, which differs by language. That last step is a person's.
  @review
  Scenario: the research window opens, with the framework's tab in it
    Given the save "test-colony" is loaded
    When I open the "Research" tab
    And I wait 30 ticks
    Then window "MainTabWindow_Research" is open
    And I take a screenshot "the research window, with the storage tab beside main and anomaly"
    When I close all dialogs
    Then window "MainTabWindow_Research" is closed

  # The half the capture above leaves out: the two projects, which sit inside the framework's tab. The tab is a button in the
  # window and is clicked by the label the game shows for it, "Storage", so this scenario is English-only; its French twin,
  # which clicks "Stockage", is in `05`. Nothing asserts what the tab holds - no vanilla step reads the research tree - so the
  # capture is what shows "neolithic storage" and "neolithic item display" one above the other, each at 400, and it is a
  # person who reads it.
  @review
  Scenario: the framework's tab opens and shows the two projects
    Given the save "test-colony" is loaded
    When I open the "Research" tab
    And I click button "Storage"
    And I wait 30 ticks
    Then window "MainTabWindow_Research" is open
    And I take a screenshot "the storage tab of the research window, in English"
    When I close all dialogs
    Then window "MainTabWindow_Research" is closed
