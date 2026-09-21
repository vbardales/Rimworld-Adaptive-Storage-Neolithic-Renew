# The labels a player reads, in an English game: `-Language English` (the default). Played after `08`, see there.
@wip @pickletools
Feature: the PickleTools research steps choose a tab and a project by the label a player reads, in English

  Scenario: the storage tab and its project by their English labels
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab "Storage"
    Then Nelim's Pickle Tools: the research window is on the tab "ASFAdaptiveStorage"
    And Nelim's Pickle Tools: the research window labels the tab "ASFAdaptiveStorage" as "Storage"
    And Nelim's Pickle Tools: the research window lists the project "Neolithic storage" costing 400
    When I close all dialogs
