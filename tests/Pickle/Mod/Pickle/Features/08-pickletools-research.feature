# The shared research window steps of PickleTools (PickleTools/ResearchSteps), which choose a tab by def name, by label or by
# translation key. This feature is the part that reads the same in every language: a def name, and a key whose translation is the
# tab's label (Languages/*/Keyed/PickleTests.xml of this companion). The labels a player reads are asserted by `05` (French) and
# `07` (Russian), and the English one is shown by the capture below; the former features `09` and `10` only re-tested the shared
# tool's label matching in one language each, and would fail in the other language's pass, so they were removed.
#
# `@requires:nelim.pickletools.research`: every pass map of this suite stages the shared steps, and a run without them skips this
# feature instead of failing on undefined steps.
@requires:nelim.pickletools.research
Feature: the PickleTools research steps choose a tab by def name or by translation key

  Scenario: a tab by its def name, whatever the case
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab "asfadaptivestorage"
    Then Nelim's Pickle Tools: the research window is on the tab "ASFAdaptiveStorage"
    And Nelim's Pickle Tools: the research window lists the project "ASNeolithicNeolithicStorage" costing 400
    And Nelim's Pickle Tools: the research window lists the project "ASNeolithicNeolithicItemDisplay" costing 400
    When I close all dialogs

  Scenario: a vanilla tab by its def name
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab "Main"
    Then Nelim's Pickle Tools: the research window is on the tab "Main"
    And Nelim's Pickle Tools: the research window lists the project "Stonecutting"
    When I close all dialogs

  @review
  Scenario: a tab by a translation key, in whichever language the game runs in
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab keyed "ASNeolithicPickle_StorageTab"
    Then Nelim's Pickle Tools: the research window is on the tab "ASFAdaptiveStorage"
    And Nelim's Pickle Tools: the research window lists the project "ASNeolithicNeolithicStorage" costing 400
    And I take a screenshot "the research tab chosen by a translation key"
    When I close all dialogs
