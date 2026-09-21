# TESTING.md scenario 7, widened on 2026-09-21 after the first French pass showed the building names
# right and left everything else unseen. Only true in a French game, so the whole feature is `@wip`
# and skipped by a default run, where it would fail on English text. The wrapper refuses `-IncludeWip`
# without a filter (Pickle #26: it plays only the first feature), so aim at this file:
# `-Language French -Filter '05-french-names.feature' -IncludeWip`, and compare the scenarios played with the nine written.
#
# Why a running game is needed for any of it. The generated buildings are built at load time from
# every ChunkRockBase child, so no file on disk declares them and their French text comes from
# DefInjected keys naming defs that do not exist until the game makes them. The blueprints are made by
# vanilla from those same defs, later still. And the mod's own assembly patches
# `LoadedLanguage.InjectIntoData_BeforeImpliedDefs` precisely to land between the two. Nothing of
# that ordering survives outside a real load.
#
# `vaccolithe` is the game's own French for vacstone, from Odyssey's language files.
#
# A def whose name the framework also gives a GraphicsDef or a dropdown group - the basket, the hay pile, the
# meal shelf, the large pot,
# the plinth, both bundles - cannot be read by `def ... field ...`, which refuses an ambiguous name.
# Those are covered through the map instead, by the inspect pane, which reads the thing and not the def.
@wip
Feature: French names on the generated buildings

  @requires:Odyssey
  Scenario: the vacstone buildings read as vaccolithe
    Then def "ASNeolithicLargePotChunkVacstone" field "label" is "Grand pot en vaccolithe"
    And def "ASNeolithicPlinthChunkVacstone" field "label" is "socle en vaccolithe"
    And def "ASNeolithicChunkStorageChunkVacstone" field "label" is "Amas de vaccolithe"

  Scenario: a Core stone is French too
    Then def "ASNeolithicLargePotChunkGranite" field "label" is "Grand pot en granite"
    And def "ASNeolithicPlinthChunkGranite" field "label" is "socle en granite"
    And def "ASNeolithicChunkStorageChunkGranite" field "label" is "Amas de granite"

  # The descriptions, which the first French pass never displayed: the captures show labels only.
  Scenario: the descriptions are French, on generated buildings and on the wood pile
    Then def "ASNeolithicChunkStorageChunkGranite" field "description" is "Un tas de débris, constitué de morceaux et soutenant d'autres morceaux. Facile à réaliser et assez efficace comme couverture."
    And def "ASNeolithicLargePotChunkGranite" field "description" is "Un grand pot taillé destiné au stockage des aliments périssables."
    And def "ASNeolithicWoodPile" field "description" is "Quelques bûches à l'aspect brut jetées les unes sur les autres en un tas."

  Scenario: the wood pile is French
    Then def "ASNeolithicWoodPile" field "label" is "fagot"

  # The point of the mod's assembly, and the one thing no test outside the game can reach. Vanilla
  # builds a blueprint out of every buildable def and copies the label it finds, adding " (plan)" from
  # Core's French Keyed. The mod's Harmony postfix sits on LoadedLanguage.InjectIntoData_BeforeImpliedDefs,
  # so it must have replaced the generated building's label BEFORE vanilla got there. An English name
  # on the blueprint means the hook ran too late, or not at all.
  #
  # Pickle's def lookup does not see the implied `_Blueprint` defs (the English pass found none by name),
  # so the blueprint is placed on the map and read the way a player reads it: selected by the label it
  # shows, then named by the inspect pane.
  @review
  Scenario: the blueprint of a generated building carries its French name
    Given the save "test-colony" is loaded
    When I designate a "ASNeolithicLargePotChunkGranite" from (145, 155) to (145, 155)
    And I select "Grand pot en granite (plan)"
    And I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then the inspect pane shows "Grand pot en granite (plan)"
    And I take a screenshot "the blueprint of a granite pot, in French"

  @requires:Odyssey
  Scenario: the vacstone blueprint too, the stone the mod was never told about
    Given the save "test-colony" is loaded
    When I designate a "ASNeolithicLargePotChunkVacstone" from (145, 155) to (145, 155)
    And I select "Grand pot en vaccolithe (plan)"
    Then the inspect pane shows "Grand pot en vaccolithe (plan)"

  # TESTING.md scenario 4b, French half. A stone from a mod this one has never met has no bundled French entry, so its
  # buildings are translated by the mod's Harmony fallback, from six Keyed resources with the chunk's own label as a named
  # parameter. [K]Extra Stone ships no French, so the label it hands over stays English: "grand pot (andesite chunk)". Needs
  # the "stones" pass (`-DepMap wsl-deps.stones.map`); skipped without it.
  @requires:Kura.ExtraStone
  Scenario: the fallback translates the buildings of a stone the mod never met
    Then def "ASNeolithicLargePotChunkKura_Andesite" field "label" is "grand pot (andesite chunk)"
    And def "ASNeolithicPlinthChunkKura_Andesite" field "label" is "socle (andesite chunk)"
    And def "ASNeolithicChunkStorageChunkKura_Andesite" field "label" is "amas de blocs (andesite chunk)"
    And def "ASNeolithicLargePotChunkKura_Andesite" field "description" is "Un grand pot taillé destiné au stockage des aliments périssables."
    And def "ASNeolithicPlinthChunkKura_Andesite" field "description" is "Un socle brut avec de belles gravures pour exposer des objets."
    And def "ASNeolithicChunkStorageChunkKura_Andesite" field "description" is "Un empilement de blocs de pierre qui en soutiennent d'autres. Facile à réaliser et assez efficace comme couverture."

  # The same window as the vacstone blueprint above: the fallback runs in the same postfix, so a French name on this blueprint
  # says it landed before vanilla copied the label.
  @requires:Kura.ExtraStone
  @review
  Scenario: the blueprint of a third-party stone's pot carries the fallback's French name
    Given the save "test-colony" is loaded
    When I designate a "ASNeolithicLargePotChunkKura_Andesite" from (145, 155) to (145, 155)
    And I select "Grand pot (andesite chunk) (plan)"
    And I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then the inspect pane shows "Grand pot (andesite chunk) (plan)"
    And I take a screenshot "the blueprint of an andesite pot, in French, from the fallback"

  # TESTING.md scenario 2, the half of it the English pass could not reach.
  Scenario: the research projects and their text are French
    Then def "ASFAdaptiveStorage" field "label" is "Stockage"
    And def "ASNeolithicNeolithicStorage" field "label" is "stockage néolithique"
    And def "ASNeolithicNeolithicStorage" field "description" is "Construire des conteneurs simples et des moyens de stockage pour les matériaux de base."
    And def "ASNeolithicNeolithicItemDisplay" field "label" is "présentoir néolithique"
    And def "ASNeolithicNeolithicItemDisplay" field "description" is "Construire des socles simples, mais esthétiques pour exposer des objets."

  # The inspect pane reads the thing on the map, not the def, which is the only way to see the name of
  # a building whose defName the framework also gives a GraphicsDef. The stacked chunks are built from
  # a cost list rather than from stuff, so the thing's label is the def's label with nothing added.
  @review
  Scenario: a container on the map names itself in French
    Given the save "test-colony" is loaded
    And a "ASNeolithicChunkStorageChunkGranite" is built at (145, 155)
    When I spawn a "ChunkGranite" at (145, 155)
    And I select "Amas de granite"
    And I zoom all the way in
    And I move the camera to (145, 155)
    And I wait 30 ticks
    Then the inspect pane shows "Amas de granite"
    And I take a screenshot "the inspect pane on a granite chunk stack, in French"
