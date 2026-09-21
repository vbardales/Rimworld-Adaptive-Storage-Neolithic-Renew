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

  # The rest of TESTING.md scenario 2: the window itself, on the framework's tab, with the two projects in it.
  #
  # No vanilla step can open that tab. A click on its label ("Storage") failed on 2026-09-21, in English and in
  # French: `tag 'btn:Storage' not found; known tags: no tags recorded this frame`. The cause, read off the
  # game's MainTabWindow_Research: it draws its tabs as TabRecords through TabDrawer.DrawTabsOverflow, which
  # records no button tag. The step below is this suite's own (Source/ResearchTabSteps.cs, built into
  # Mod/Pickle/Assemblies): it opens the window and runs the click action of the tab record the window
  # built for that def, so the tab is chosen by defName and the language is never involved. The steps that
  # follow read what the window would list (its visible projects whose tab is the selected one), not the picture.
  # The picture is the capture, for a person to judge. The label the tab is drawn with is not asserted here, so this
  # scenario plays in every language (the default pass includes French); `05` asserts it in French, and the capture
  # shows it in the language of the pass.
  #
  # `Then window ... is open` is a vanilla step and stays, so the window is proved open by the game's own
  # window stack and not only by the step that opened it.
  @review
  Scenario: the framework's research tab, opened by its defName, lists both projects
    Given the save "test-colony" is loaded
    When I open the Adaptive Storage Neolithic Renew research tab "ASFAdaptiveStorage"
    And I wait 30 ticks
    Then window "MainTabWindow_Research" is open
    And the Adaptive Storage Neolithic Renew research window is on the tab "ASFAdaptiveStorage"
    And the Adaptive Storage Neolithic Renew research window lists the project "ASNeolithicNeolithicStorage" costing 400
    And the Adaptive Storage Neolithic Renew research window lists the project "ASNeolithicNeolithicItemDisplay" costing 400
    And the Adaptive Storage Neolithic Renew research window draws no two of its projects on the same spot
    And I take a screenshot "the research window on the storage tab, with the two neolithic projects"
    When I close all dialogs
    Then window "MainTabWindow_Research" is closed
