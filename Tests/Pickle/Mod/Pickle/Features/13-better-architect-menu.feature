# The mod's own gated patch for Better Architect Menu (ferny.BetterArchitect, Workshop 3563882422), Mod/Patches/BetterArchitectMenu.xml.
# That mod ships its own patch for the ORIGINAL Adaptive Storage Neolithic, gated on the original's packageId, so it never fires with
# this mod; ours repeats the seven operations behind a PatchOperationFindMod on "Better Architect Menu".
# Used with  Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -DepMap wsl-deps.bam.map
#
# Green means each building def carries the Better Architect Menu category the patch gives it once that mod is loaded.
# Not covered: the stone variants built by the framework generators (their parents are not the patched ones), to read on the
# first run and, if they stay in the default category, to decide whether the patch must reach them.
@requires:ferny.BetterArchitect
Feature: Better Architect Menu files the storage buildings in its own categories

  Scenario: general storage, baskets and plinths
    Then Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicBasketWoody" has its designation category "Ferny_GeneralStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicBasketFabric" has its designation category "Ferny_GeneralStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicPlinthWoody" has its designation category "Ferny_GeneralStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicPlinthStone" has its designation category "Ferny_GeneralStorage"

  Scenario: resources storage, piles, bundles and stone stack
    Then Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicHayPile" has its designation category "Ferny_ResourcesStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicWoodPile" has its designation category "Ferny_ResourcesStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicTextileBundleFabric" has its designation category "Ferny_ResourcesStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicTextileBundleLeather" has its designation category "Ferny_ResourcesStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicChunkStorage" has its designation category "Ferny_ResourcesStorage"

  Scenario: food storage, large pots and the meal shelf
    Then Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicLargePot" has its designation category "Ferny_FoodStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicLargePotStone" has its designation category "Ferny_FoodStorage"
    And Adaptive Storage Neolithic Renew: the ThingDef "ASNeolithicMealShelf" has its designation category "Ferny_FoodStorage"
