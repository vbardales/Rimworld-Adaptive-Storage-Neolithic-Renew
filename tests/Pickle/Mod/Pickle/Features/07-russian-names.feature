# TESTING.md scenario 8, which was written as "this test cannot run on Windows". The Russian translation once lived in a folder
# spelled `Definjected`, lowercase i. RimWorld reads the literal string `DefInjected`, so on NTFS the misspelling worked by
# accident, and on a case-sensitive filesystem the whole translation was dropped with nothing written to the log. The folder has
# been renamed; only a case-sensitive filesystem proves it, and the WSL game lives on ext4, which is one.
#
# So this feature is that test: in a Russian game, on ext4, the labels are Russian. A translation the game did not find leaves the
# English source text, so every assertion below would fail on it, which is exactly what the bug looked like before. The staging
# copies the mod from Windows with its folder names as they are on disk, so the run is only as good as those names.
#
# `@wip`, skipped by a default run where it would fail on English text. Aim at this file, in Russian:
# `-Language Russian -Filter '07-russian-names.feature' -IncludeWip`, then compare the scenarios played with the five written.
#
# Six of these texts - the vacstone pot, plinth and chunk stack, label and description - were written by Claude from Odyssey's own
# Russian term, вакуумит, and have not been reviewed by a Russian speaker. Asserting them checks that they are found and read,
# not that they are good Russian. A stone from another mod has no Russian entry and stays in English on purpose; not tested here.
@wip
Feature: Russian names, on a case-sensitive filesystem

  Scenario: the generated stone buildings are Russian
    Then def "ASNeolithicLargePotChunkGranite" field "label" is "Большой горшок из гранита"
    And def "ASNeolithicPlinthChunkGranite" field "label" is "Подиум из гранита"
    And def "ASNeolithicChunkStorageChunkGranite" field "label" is "Куча гранитных обломков"
    And def "ASNeolithicLargePotChunkGranite" field "description" is "Большой резной горшок, предназначенный для хранения скоропортящихся продуктов."

  @requires:Odyssey
  Scenario: the vacstone buildings are Russian, with Odyssey's own term
    Then def "ASNeolithicLargePotChunkVacstone" field "label" is "Большой горшок из вакуумита"
    And def "ASNeolithicPlinthChunkVacstone" field "label" is "Подиум из вакуумита"
    And def "ASNeolithicChunkStorageChunkVacstone" field "label" is "Куча обломков вакуумита"
    And def "ASNeolithicChunkStorageChunkVacstone" field "description" is "Куча, состоящая из обломков и поддерживающая другие обломки. Легко сделать и довольно эффективна в качестве укрытия."

  Scenario: a hand-written building and the research are Russian
    Then def "ASNeolithicWoodPile" field "label" is "Поленница"
    And def "ASFAdaptiveStorage" field "label" is "Хранилища"
    And def "ASNeolithicNeolithicStorage" field "label" is "Примитивные хранилища"
    And def "ASNeolithicNeolithicStorage" field "description" is "Создавайте примитивные контейнеры и средства хранения основных материалов."
    And def "ASNeolithicNeolithicItemDisplay" field "label" is "Примитивные подиумы"

  # The map, read as a player reads it: the stacked chunks are built from a cost list, so the thing's label is the def's label with
  # nothing added, and the inspect pane shows the Russian one.
  @review
  Scenario: a container on the map names itself in Russian
    Given the save "test-colony" is loaded
    And a "ASNeolithicChunkStorageChunkGranite" is built at (145, 155)
    When I spawn a "ChunkGranite" at (145, 155)
    And I select "Куча гранитных обломков"
    And I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then the inspect pane shows "Куча гранитных обломков"
    And I take a screenshot "the inspect pane on a granite chunk stack, in Russian"

  Scenario: loading a game in Russian raises no error
    Given the save "test-colony" is loaded
    Then no errors were logged
