# The shared research window steps of PickleTools (PickleTools/ResearchSteps), which choose a tab by def name, by label or by
# translation key. This feature is the part that reads the same in every language: a def name, and a key whose translation is the
# tab's label (Languages/*/Keyed/PickleTests.xml of this companion). `09` reads the labels in English, `10` in French.
#
# `@wip @pickletools`: skipped by a default pass, which does not stage the steps. They are played in a pass of their own,
# `-DepMap wsl-deps.avec-pickletools.map -Filter 08-pickletools-research.feature -IncludeWip`, then `-Then 09...` (English) or
# `-Then 10...` (French) under the same hold of the lock.
@wip @pickletools
Feature: the PickleTools research steps choose a tab by def name or by translation key

  Scenario: a tab by its def name, whatever the case
    Given the save "test-colony" is loaded
    When I open the PickleTools research tab "asfadaptivestorage"
    Then the PickleTools research window is on the tab "ASFAdaptiveStorage"
    And the PickleTools research window lists the project "ASNeolithicNeolithicStorage" costing 400
    And the PickleTools research window lists the project "ASNeolithicNeolithicItemDisplay" costing 400
    When I close all dialogs

  Scenario: a vanilla tab by its def name
    Given the save "test-colony" is loaded
    When I open the PickleTools research tab "Main"
    Then the PickleTools research window is on the tab "Main"
    And the PickleTools research window lists the project "Stonecutting"
    When I close all dialogs

  @review
  Scenario: a tab by a translation key, in whichever language the game runs in
    Given the save "test-colony" is loaded
    When I open the PickleTools research tab keyed "ASNeolithicPickle_StorageTab"
    Then the PickleTools research window is on the tab "ASFAdaptiveStorage"
    And the PickleTools research window lists the project "ASNeolithicNeolithicStorage" costing 400
    And I take a screenshot "the research tab chosen by a translation key"
    When I close all dialogs
