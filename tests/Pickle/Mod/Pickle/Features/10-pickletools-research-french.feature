# The labels a player reads, in a French game: `-Language French`. Played after `08`, see there. "Principal" is what the Main tab
# is called in French, so this is the case where the label and the def name differ.
@wip @pickletools
Feature: the PickleTools research steps choose a tab and a project by the label a player reads, in French

  Scenario: the storage tab and its project by their French labels
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab "Stockage"
    Then Nelim's Pickle Tools: the research window is on the tab "ASFAdaptiveStorage"
    And Nelim's Pickle Tools: the research window labels the tab "ASFAdaptiveStorage" as "Stockage"
    And Nelim's Pickle Tools: the research window lists the project "Stockage néolithique" costing 400
    When I close all dialogs

  Scenario: the Main tab by its French label
    Given the save "test-colony" is loaded
    When Nelim's Pickle Tools: I open the research tab "Principal"
    Then Nelim's Pickle Tools: the research window is on the tab "Main"
    When I close all dialogs
