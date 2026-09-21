# TESTING.md scenario 7. Only true in a French game, so it is tagged @wip and skipped by a default
# run, where it would fail on English text. Run the suite a second time with the language set to
# French (`-Language French` on scripts/Run-PickleWsl.ps1) and include @wip scenarios, then compare
# the number of scenarios played with the number of features discovered before trusting the
# result: an include-wip pass has once selected almost nothing while reporting success.
#
# The three vacstone buildings are generated at load time, so no file on disk declares them; their
# names come from DefInjected keys that name generated defs. If the generation half-worked, this is
# where English labels turn up among the French ones. "vaccolithe" is the game's own French for
# vacstone, taken from Odyssey's language files.
#
# What this does not reach: a stone from a third-party mod, whose generated building has no bundled
# French entry and is translated by the Harmony fallback in the mod's assembly. That needs a stone
# mod staged beside the suite (TESTING.md scenario 4b) and is left to the manual run.
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
