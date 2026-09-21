# The labels a player reads, in an English game: `-Language English` (the default). Played after `08`, see there.
@wip @pickletools
Feature: the PickleTools research steps choose a tab and a project by the label a player reads, in English

  Scenario: the storage tab and its project by their English labels
    Given the save "test-colony" is loaded
    When I open the PickleTools research tab "Storage"
    Then the PickleTools research window is on the tab "ASFAdaptiveStorage"
    And the PickleTools research window labels the tab "ASFAdaptiveStorage" as "Storage"
    And the PickleTools research window lists the project "Neolithic storage" costing 400
    When I close all dialogs
