# TESTING.md scenario 7, widened on 2026-09-21 after the first French pass showed the building names
# right and left everything else unseen. Only true in a French game, so the whole feature is `@wip`
# and skipped by a default run, where it would fail on English text. Run it with
# `-Language French -IncludeWip`, then compare the scenarios played with the number written: an
# include-wip pass has once selected almost nothing while reporting success.
#
# Why a running game is needed for any of it. The generated buildings are built at load time from
# every ChunkRockBase child, so no file on disk declares them and their French text comes from
# DefInjected keys naming defs that do not exist until the game makes them. The blueprints and the
# frames are made by vanilla from those same defs, later still. And the mod's own assembly patches
# `LoadedLanguage.InjectIntoData_BeforeImpliedDefs` precisely to land between the two. Nothing of
# that ordering survives outside a real load.
#
# `vaccolithe` is the game's own French for vacstone, from Odyssey's language files.
#
# A def whose name the framework also gives a GraphicsDef - the basket, the hay pile, the meal shelf,
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
  Scenario: the descriptions are French, on a generated building and on a hand-written one
    Then def "ASNeolithicChunkStorageChunkGranite" field "description" is "Un tas de débris, constitué de morceaux et soutenant d'autres morceaux. Facile à réaliser et assez efficace comme couverture."
    And def "ASNeolithicLargePotChunkGranite" field "description" is "Un grand pot taillé destiné au stockage des aliments périssables."
    And def "ASNeolithicLargePot" field "description" is "Un grand pot taillé destiné au stockage des aliments périssables."
    And def "ASNeolithicWoodPile" field "description" is "Quelques bûches à l'aspect brut jetées les unes sur les autres en un tas."

  Scenario: the two unambiguous hand-written buildings are French
    Then def "ASNeolithicLargePot" field "label" is "grand pot"
    And def "ASNeolithicWoodPile" field "label" is "fagot"

  # The point of the mod's assembly, and the one thing no test outside the game can reach. Vanilla
  # builds a blueprint and a frame out of every buildable def and copies the label it finds, adding
  # " (plan)" and " (construction)" from Core's French Keyed. The mod's Harmony postfix sits on
  # LoadedLanguage.InjectIntoData_BeforeImpliedDefs, so it must have replaced the generated building's
  # label BEFORE vanilla got there. An English name here means the hook ran too late, or not at all.
  Scenario: the blueprint and the frame carry the French name of a generated building
    Then def "ASNeolithicLargePotChunkGranite_Blueprint" field "label" is "Grand pot en granite (plan)"
    And def "ASNeolithicLargePotChunkGranite_Frame" field "label" is "Grand pot en granite (construction)"
    And def "ASNeolithicChunkStorageChunkGranite_Blueprint" field "label" is "Amas de granite (plan)"

  @requires:Odyssey
  Scenario: the vacstone blueprint and frame too, the stone the mod was never told about
    Then def "ASNeolithicLargePotChunkVacstone_Blueprint" field "label" is "Grand pot en vaccolithe (plan)"
    And def "ASNeolithicLargePotChunkVacstone_Frame" field "label" is "Grand pot en vaccolithe (construction)"

  # A hand-written building takes the same road, but its French comes from a plain DefInjected file
  # rather than from the hook, so this one says the file is read, not that the hook ran.
  Scenario: a hand-written building's blueprint is French as well
    Then def "ASNeolithicLargePot_Blueprint" field "label" is "grand pot (plan)"
    And def "ASNeolithicLargePot_Frame" field "label" is "grand pot (construction)"

  # TESTING.md scenario 2, the half of it the English pass could not reach.
  Scenario: the research projects and their text are French
    Then def "ASNeolithicNeolithicStorage" field "label" is "stockage néolithique"
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
