# TESTING.md scenario 4b, the only test in that file that can catch a regression rather than an installation mistake, and the
# case players will actually hit: a stone from a mod this one has never met. Vacstone proves the generators pick up what
# Odyssey adds, but Odyssey is official content that keeps the game's own conventions.
#
# Run in the "stones" pass, which stages [K]Extra Stone beside the suite (`-DepMap wsl-deps.stones.map`). Without it every
# scenario here is skipped by `@requires`, which is why the tag sits on the feature and not on each scenario. The stone is
# Kura_Andesite: its chunk is `ChunkKura_Andesite`, labelled `andesite chunk`, and so the generated defNames are
# `ASNeolithicLargePotChunkKura_Andesite` and its two siblings.
#
# Language-neutral, or English: the French half is in `05`, since it needs a French game. An English game shows what the
# generator writes natively: the label is the chunk's label plus the kind.
@requires:Kura.ExtraStone
Feature: a stone from a mod this one has never met

  Scenario: the generators built a pot, a plinth and a chunk stack for it
    Then def "ASNeolithicLargePotChunkKura_Andesite" exists
    And def "ASNeolithicPlinthChunkKura_Andesite" exists
    And def "ASNeolithicChunkStorageChunkKura_Andesite" exists

  # The generated name is the chunk's own label plus the kind. A label that came out raw (its defName) or untinted would be
  # the interpolation finding the node and not the field, a bug of this mod that would hit every third-party stone alike.
  Scenario: the labels are the stone's own, in English
    Then def "ASNeolithicLargePotChunkKura_Andesite" field "label" is "andesite chunk large pot"
    And def "ASNeolithicPlinthChunkKura_Andesite" field "label" is "andesite chunk plinth"

  Scenario: a stone the mod never listed can be built and placed without an error
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotChunkKura_Andesite" is built at (140, 155)
    And a "ASNeolithicPlinthChunkKura_Andesite" is built at (144, 155)
    And a "ASNeolithicChunkStorageChunkKura_Andesite" is built at (148, 155)
    Then a "ASNeolithicLargePotChunkKura_Andesite" is at (140, 155)
    And a "ASNeolithicPlinthChunkKura_Andesite" is at (144, 155)
    And a "ASNeolithicChunkStorageChunkKura_Andesite" is at (148, 155)
    And no errors were logged

  # The pot must be tinted the stone's own colour, (112,118,118), a cool grey, and must not look like the granite one taken in
  # `03`. Nothing here asserts the colour: a person compares the two captures.
  @review
  Scenario: the pot and the chunk stack of the new stone, with their contents
    Given the save "test-colony" is loaded
    And a "ASNeolithicLargePotChunkKura_Andesite" is built at (145, 155)
    And a "ASNeolithicChunkStorageChunkKura_Andesite" is built at (150, 155)
    When I spawn a "RawBerries" at (145, 155)
    And I spawn a "ChunkKura_Andesite" at (150, 155)
    And I spawn a "ChunkKura_Andesite" at (150, 155)
    And I spawn a "ChunkKura_Andesite" at (150, 155)
    And I zoom all the way in
    And I move the camera to (147, 155)
    And I wait 30 ticks
    Then I take a screenshot "an andesite pot and chunk stack, a stone from another mod"
