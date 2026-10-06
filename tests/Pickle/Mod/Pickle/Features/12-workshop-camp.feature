# DRAFT of 2026-10-06, not played yet, tagged @wip so that no normal pass picks it up (play it with -IncludeWip, -DepMap wsl-deps.camp.map).
# A second Workshop series for this mod, in the spirit of PUBLISHING.md's gallery rules of 2026-10-06: magazine photographs of one story,
# with living things in them, a place that tells something, and the author (this suite) choosing place, time, composition and manner.
#
# The story: "Noon at the camp". A small neolithic camp on the bare earth clearing of Nelim's tribe (named place bare-clearing, centre
# (195, 152), a 14 x 14 square of plain brown earth with no roof, so natural daylight): a campfire in the middle, two torches, stools, and the
# mod's storage laid out as a camp would have it, wood and hay by the fire, baskets and pots on the shady side, the plinths of the tribe's
# treasures in front of the chief's place. People and animals come and go. Time unfolds in the game: every picture starts at noon and waits 5
# more game minutes than the one before (12:00 to 12:25; 2 500 ticks make an hour, so about 208 ticks per 5 minutes, plus 60 ticks to settle).
# Daytime animals and people only.
#
# Shot plan (place; frame; time; subject; living things; what the picture says):
#   1. 12:00 wide: the whole camp (cells (188, 146) to (202, 158) fill 85 % of the screen). Fire lit, storage on three sides. Ayla stands
#      by the fire in a dyed tribal tunic, Doka stands further off; a dog lies near the fire. "The camp is awake."
#   2. 12:05 close: the baskets (cells (189, 153) to (196, 158)). Empty, one item, full. Ayla, in a bright dyed tunic that answers the wood,
#      stands behind the baskets; a squirrel waits at the edge. "What goes in, shows."
#   3. 12:10 medium: wood pile, hay pile and the chunk stacks by the fire (cells (189, 146) to (202, 152)). Doka stands at the stacks in
#      a dark tunic against the pale stone; a hare nibbles at the hay. "Fuel and stone, stacked as they come."
#   4. 12:15 medium: the large pots near the fire (cells (190, 153) to (202, 158)). Doka tends them, the dog sits by Ayla. "Food for noon."
#   5. 12:20 medium: the plinths in front of the chief's stool (cells (191, 146) to (201, 151)). The chief (Tahu) in a dyed headdress and
#      tunic stands behind the plinths; a peacock spreads its tail. "The tribe's treasures."
#   6. 12:25 medium: the stone pots and stacks of the other mod beside granite (cells (189, 153) to (200, 158)). A cat sleeps between them.
#      "Every stone, in its place."
# Review rule: after the run, open every picture and compare it with the line above; redo the one that does not say what it should.
#
# TO VERIFY ON A PROBE RUN (written from memory of the game, not played): the colonist kind "Colonist", the apparel defNames
# "Apparel_TribalA" and "Apparel_TribalHeaddress", the decor defNames "Campfire", "TorchLamp", "Stool", the extent of bare-clearing
# (x 188 to 201, z 145 to 158), that the step texts below exist as written in PickleTools/docs/STAGING.md (parentheses without backslash),
# and how the colonist steps behave with the studio's single colonist (`the other colonists are out of frame`).
#
# `@requires:nelim.pickletools.screenshotstudio`: only the pass of `-DepMap wsl-deps.camp.map` stages the studio and the fixture. Odyssey for
# picture 5 (vacstone), the stone mod for picture 6.
@requires:nelim.pickletools.screenshotstudio
@wip
@workshop
@review
Feature: the camp pictures of the Workshop page

  # 1. Noon at the camp, wide: the whole set around the fire.
  Scenario: the whole camp at noon
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (191, 150)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (191, 150) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (199, 150)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (199, 150) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" at (193, 154)
    And Nelim's Pickle Tools: I place the decor "Stool" at (197, 154)
    And a "ASNeolithicWoodPile" is built at (192, 148)
    And a "ASNeolithicHayPile" is built at (194, 148)
    And a "ASNeolithicMealShelf" is built at (197, 148)
    And a "ASNeolithicTextileBundleFabric" is built at (199, 148)
    And a "ASNeolithicBasketWoody" is built at (190, 154)
    And a "ASNeolithicBasketFabric" is built at (190, 156)
    And a "ASNeolithicLargePot" is built at (200, 154)
    And a "ASNeolithicLargePot" is built at (200, 156)
    And a "ASNeolithicPlinthWoody" is built at (195, 146)
    And I spawn a "WoodLog" at (192, 148)
    And I spawn a "Hay" at (194, 148)
    And I spawn a "MealSimple" at (197, 148)
    And I spawn a "Cloth" at (199, 148)
    And I spawn a "Cloth" at (190, 154)
    And I spawn a "Steel" at (190, 156)
    And I spawn a "RawBerries" at (200, 154)
    And I spawn a "Milk" at (200, 156)
    And I spawn a "Gold" at (195, 146)
    And Nelim's Pickle Tools: a colonist "Ayla" of kind "Colonist" exists
    And "Ayla" wears "Apparel_TribalA" dyed rgb (196, 78, 52)
    And "Ayla" stands at (196, 151) facing West
    And Nelim's Pickle Tools: a colonist "Doka" of kind "Colonist" exists
    And "Doka" wears "Apparel_TribalA" dyed rgb (45, 62, 80)
    And "Doka" stands at (193, 156) facing North
    And Nelim's Pickle Tools: the other colonists are out of frame
    And Nelim's Pickle Tools: I frame the cells (188, 146) to (202, 158) filling 85 percent of the screen
    When I wait 60 ticks
    And Nelim's Pickle Tools: an adult animal of kind "LabradorRetriever" named "Biscuit" is spawned at (197, 153)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 1 - the whole camp at noon"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 2. The baskets, close: empty, one item, full, with Ayla behind them.
  Scenario: three baskets, empty, with one item and full, and Ayla behind them
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And a "ASNeolithicBasketWoody" is built at (190, 155)
    And a "ASNeolithicBasketWoody" is built at (192, 155)
    And a "ASNeolithicBasketWoody" is built at (194, 155)
    And I spawn a "Cloth" at (192, 155)
    And I spawn a "Cloth" at (194, 155)
    And I spawn a "Steel" at (194, 155)
    And Nelim's Pickle Tools: a colonist "Ayla" of kind "Colonist" exists
    And "Ayla" wears "Apparel_TribalA" dyed rgb (230, 170, 40)
    And "Ayla" stands at (194, 157) facing North
    And Nelim's Pickle Tools: the other colonists are out of frame
    And Nelim's Pickle Tools: I frame the cells (189, 153) to (196, 158) filling 85 percent of the screen
    When I wait 268 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Squirrel" named "Noisette" is spawned at (196, 155)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 2 - three baskets"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 3. Fuel and stone by the fire, Doka at the stacks, a hare at the hay.
  Scenario: wood and hay piles and granite stacks at one, two and six chunks, and a marble one
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And a "ASNeolithicWoodPile" is built at (190, 148)
    And a "ASNeolithicHayPile" is built at (192, 148)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (194, 149)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (196, 149)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (198, 149)
    And a "ASNeolithicChunkStorage" made from "ChunkMarble" is built at (200, 149)
    And I spawn a "WoodLog" at (190, 148)
    And I spawn a "Hay" at (192, 148)
    And I spawn a "ChunkGranite" at (194, 149)
    And I spawn a "ChunkGranite" at (196, 149)
    And I spawn a "ChunkGranite" at (196, 149)
    And I spawn a "ChunkGranite" at (198, 149)
    And I spawn a "ChunkGranite" at (199, 149)
    And I spawn a "ChunkGranite" at (198, 149)
    And I spawn a "ChunkGranite" at (199, 149)
    And I spawn a "ChunkGranite" at (198, 149)
    And I spawn a "ChunkGranite" at (199, 149)
    And I spawn a "ChunkMarble" at (200, 149)
    And Nelim's Pickle Tools: a colonist "Doka" of kind "Colonist" exists
    And "Doka" wears "Apparel_TribalA" dyed rgb (45, 62, 80)
    And "Doka" stands at (197, 151) facing North
    And Nelim's Pickle Tools: the other colonists are out of frame
    And Nelim's Pickle Tools: I frame the cells (189, 146) to (202, 152) filling 85 percent of the screen
    When I wait 477 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Hare" named "Pomme" is spawned at (193, 150)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 3 - fuel and stone"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 4. Food for noon: the pots near the fire, Doka tending them, the dog beside Ayla.
  Scenario: large pots with different food, and a lidded one holding two kinds
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And a "ASNeolithicLargePot" is built at (191, 156)
    And a "ASNeolithicLargePot" is built at (193, 156)
    And a "ASNeolithicLargePot" is built at (195, 156)
    And a "ASNeolithicLargePot" is built at (197, 156)
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (199, 156)
    And a "ASNeolithicLargePot" is built at (201, 156)
    And I spawn a "RawBerries" at (191, 156)
    And I spawn a "Milk" at (193, 156)
    And I spawn a "EggChickenUnfertilized" at (195, 156)
    And I spawn a "Kibble" at (197, 156)
    And I spawn a "Pemmican" at (199, 156)
    And I spawn a "RawBerries" at (201, 156)
    And I spawn a "Milk" at (201, 156)
    And Nelim's Pickle Tools: a colonist "Doka" of kind "Colonist" exists
    And "Doka" wears "Apparel_TribalA" dyed rgb (45, 62, 80)
    And "Doka" stands at (196, 154) facing South
    And Nelim's Pickle Tools: a colonist "Ayla" of kind "Colonist" exists
    And "Ayla" wears "Apparel_TribalA" dyed rgb (196, 78, 52)
    And "Ayla" stands at (199, 154) facing West
    And Nelim's Pickle Tools: the other colonists are out of frame
    And Nelim's Pickle Tools: I frame the cells (190, 153) to (202, 158) filling 85 percent of the screen
    When I wait 685 ticks
    And Nelim's Pickle Tools: an adult animal of kind "LabradorRetriever" named "Biscuit" is spawned at (200, 154)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 4 - food for noon"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 5. The tribe's treasures: three plinths in front of the chief, a peacock spreading its tail. Vacstone needs Odyssey.
  @requires:Odyssey
  Scenario: plinths of wood, granite and vacstone, each showing an item, and the chief behind them
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" at (195, 147)
    And a "ASNeolithicPlinthWoody" is built at (193, 149)
    And a "ASNeolithicPlinthStone" made from "ChunkGranite" is built at (195, 149)
    And a "ASNeolithicPlinthStone" made from "ChunkVacstone" is built at (197, 149)
    And I spawn a "Gold" at (193, 149)
    And I spawn a "Silver" at (195, 149)
    And I spawn a "Jade" at (197, 149)
    And Nelim's Pickle Tools: a colonist "Tahu" of kind "Colonist" exists
    And "Tahu" wears "Apparel_TribalA" dyed rgb (120, 40, 110)
    And "Tahu" wears "Apparel_TribalHeaddress" dyed rgb (230, 190, 60)
    And "Tahu" stands at (195, 147) facing South
    And Nelim's Pickle Tools: the other colonists are out of frame
    And Nelim's Pickle Tools: I frame the cells (191, 146) to (201, 151) filling 85 percent of the screen
    When I wait 893 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Peacock" named "Eclat" is spawned at (199, 149)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 5 - the tribe's treasures"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed

  # 6. Every stone, in its place: the pots and stacks of another mod's stone beside granite, a cat asleep between them.
  @requires:Kura.ExtraStone
  Scenario: the pot and the chunk stack of a stone from another mod, beside granite
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I am at the sanctuary "bare-clearing"
    And I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I place the decor "Campfire" at (195, 152)
    And Nelim's Pickle Tools: the decor "Campfire" at (195, 152) is lit
    And a "ASNeolithicLargePotStone" made from "ChunkGranite" is built at (190, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkGranite" is built at (192, 155)
    And a "ASNeolithicLargePotStone" made from "ChunkKura_Andesite" is built at (196, 155)
    And a "ASNeolithicChunkStorage" made from "ChunkKura_Andesite" is built at (198, 155)
    And I spawn a "RawBerries" at (190, 155)
    And I spawn a "ChunkGranite" at (192, 155)
    And I spawn a "ChunkKura_Andesite" at (198, 155)
    And I spawn a "ChunkGranite" at (192, 155)
    And I spawn a "ChunkKura_Andesite" at (198, 155)
    And I spawn a "ChunkGranite" at (192, 155)
    And I spawn a "ChunkKura_Andesite" at (198, 155)
    And I spawn a "RawBerries" at (196, 155)
    And Nelim's Pickle Tools: the other colonists are out of frame
    And Nelim's Pickle Tools: I frame the cells (189, 153) to (200, 158) filling 85 percent of the screen
    When I wait 1102 ticks
    And Nelim's Pickle Tools: an adult animal of kind "Cat" named "Mie" is spawned at (194, 155)
    And I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: studio presentation mode is enabled
    Then I take a screenshot "camp 6 - every stone in its place"
    When I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures
    And Nelim's Pickle Tools: the decor is removed
