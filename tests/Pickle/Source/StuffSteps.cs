using System.Linq;
using System.Threading.Tasks;
using RimWorks.Pickle;
using RimWorld;
using Verse;

namespace AdaptiveStorageNeolithicRenew.PickleSteps
{
    [PickleSteps]
    public class StuffSteps
    {
        [Then("def {string} does not exist")]
        public void DefDoesNotExist(PickleContext ctx, string defName)
        {
            // GetNamedSilentFail also resolves the back-compat aliases the save-migration patch registers for the old
            // per-stone defNames, so scan the database itself: only a real def counts as existing.
            ctx.Assert(!DefDatabase<ThingDef>.AllDefsListForReading.Any(def => def.defName == defName),
                "ThingDef '" + defName + "' still exists");
        }

        // Pickle's own "def {string} field ..." refuses a name shared by a ThingDef and a GraphicsDef (ASNeolithicPlinthStone).
        [Then("Adaptive Storage Neolithic Renew: the ThingDef {string} has its label {string}")]
        public void ThingDefLabel(PickleContext ctx, string defName, string expected)
        {
            var def = RequiredDef(ctx, defName);
            ctx.Assert(def.label == expected, "label of " + defName + " is '" + def.label + "', not '" + expected + "'");
        }

        [Then("Adaptive Storage Neolithic Renew: the ThingDef {string} has its description {string}")]
        public void ThingDefDescription(PickleContext ctx, string defName, string expected)
        {
            var def = RequiredDef(ctx, defName);
            ctx.Assert(def.description == expected,
                "description of " + defName + " is '" + def.description + "', not '" + expected + "'");
        }

        // Language-aware assertions (owner's request, 2026-10-08): a scenario that checks French or Russian text is red by design
        // in a pass of another language and hid a real red among the expected ones. These steps check the text only when the
        // active language is the one named; in any other language they pass at once and say so in the report (an attachment),
        // so a pass of the wrong language shows "not applicable" instead of a failure. The text check is the same as above.
        [Then("Adaptive Storage Neolithic Renew: the ThingDef {string} has its label {string} when the language is {word}")]
        public void ThingDefLabelIn(PickleContext ctx, string defName, string expected, string language)
        {
            if (NotApplicable(ctx, language)) return;
            ThingDefLabel(ctx, defName, expected);
        }

        [Then("Adaptive Storage Neolithic Renew: the ThingDef {string} has its description {string} when the language is {word}")]
        public void ThingDefDescriptionIn(PickleContext ctx, string defName, string expected, string language)
        {
            if (NotApplicable(ctx, language)) return;
            ThingDefDescription(ctx, defName, expected);
        }

        [Then("Adaptive Storage Neolithic Renew: the research def {string} has its label {string} when the language is {word}")]
        public void ResearchDefLabelIn(PickleContext ctx, string defName, string expected, string language)
        {
            if (NotApplicable(ctx, language)) return;
            var label = ResearchDefText(ctx, defName, false);
            ctx.Assert(label == expected, "label of " + defName + " is '" + label + "', not '" + expected + "'");
        }

        [Then("Adaptive Storage Neolithic Renew: the research def {string} has its description {string} when the language is {word}")]
        public void ResearchDefDescriptionIn(PickleContext ctx, string defName, string expected, string language)
        {
            if (NotApplicable(ctx, language)) return;
            var description = ResearchDefText(ctx, defName, true);
            ctx.Assert(description == expected, "description of " + defName + " is '" + description + "', not '" + expected + "'");
        }

        /// <summary>True, and noted in the report, when the active language is not the one the assertion is written for.</summary>
        internal static bool NotApplicable(PickleContext ctx, string language)
        {
            var active = LanguageDatabase.activeLanguage != null ? LanguageDatabase.activeLanguage.folderName : "(none)";
            if (string.Equals(active, language, System.StringComparison.OrdinalIgnoreCase)) return false;
            ctx.Attach("language guard", "not applicable: written for " + language + ", the active language is " + active);
            return true;
        }

        // A project (ResearchProjectDef) or a tab (ResearchTabDef) by defName: the framework's tab is the one the French text names.
        private static string ResearchDefText(PickleContext ctx, string defName, bool description)
        {
            var project = DefDatabase<ResearchProjectDef>.GetNamedSilentFail(defName);
            if (project != null) return description ? project.description : project.label;
            var tab = DefDatabase<ResearchTabDef>.GetNamedSilentFail(defName);
            ctx.Require(tab != null, "no research project or tab is named '" + defName + "'");
            return description ? null : tab.label;
        }

        [Given("I clear the rectangle from \\({int}, {int}\\) to \\({int}, {int}\\)")]
        public void ClearRectangle(PickleContext ctx, int minX, int minZ, int maxX, int maxZ)
        {
            var map = Find.CurrentMap;
            ctx.Require(map != null, "no map is loaded");
            for (var x = minX; x <= maxX; x++)
            for (var z = minZ; z <= maxZ; z++)
                foreach (var thing in new IntVec3(x, 0, z).GetThingList(map).ToList())
                    thing.Destroy(DestroyMode.Vanish);
        }

        [Given("a {string} made from {string} is built at \\({int}, {int}\\)")]
        [When("a {string} made from {string} is built at \\({int}, {int}\\)")]
        public void Build(PickleContext ctx, string defName, string stuffName, int x, int z)
        {
            var def = RequiredDef(ctx, defName);
            var stuff = RequiredDef(ctx, stuffName);
            ctx.Require(def.MadeFromStuff, defName + " is not made from stuff");
            ctx.Require(def.stuffCategories != null && stuff.stuffProps != null &&
                def.stuffCategories.Any(category => stuff.stuffProps.categories.Contains(category)),
                stuffName + " is not valid stuff for " + defName);

            var thing = ThingMaker.MakeThing(def, stuff);
            GenSpawn.Spawn(thing, new IntVec3(x, 0, z), Find.CurrentMap);
            ctx.Attach("spawned stuffed building", thing.LabelCap + " (" + defName + ", stuff " + stuffName + ")");
        }

        [Then("a {string} made from {string} is at \\({int}, {int}\\)")]
        public void StuffedThingIsAt(PickleContext ctx, string defName, string stuffName, int x, int z)
        {
            var thing = ThingAt(defName, stuffName, x, z);
            ctx.Assert(thing != null, defName + " made from " + stuffName + " is not at (" + x + ", " + z + ")");
        }

        [Then("a {string} made from {string} at \\({int}, {int}\\) is labelled {string}")]
        public void StuffedThingLabel(PickleContext ctx, string defName, string stuffName, int x, int z, string label)
        {
            var thing = ThingAt(defName, stuffName, x, z);
            ctx.Require(thing != null, defName + " made from " + stuffName + " is not at (" + x + ", " + z + ")");
            ctx.Assert(thing.LabelCap == label, "label is '" + thing.LabelCap + "', not '" + label + "'");
        }

        [When("I designate a {string} made from {string} at \\({int}, {int}\\)")]
        public async Task Designate(PickleContext ctx, string defName, string stuffName, int x, int z)
        {
            var def = RequiredDef(ctx, defName);
            var stuff = RequiredDef(ctx, stuffName);
            GenConstruct.PlaceBlueprintForBuild(def, new IntVec3(x, 0, z), Find.CurrentMap, Rot4.North,
                Faction.OfPlayer, stuff, null, null, false);
            await ctx.WaitFrames(1);
        }

        [Then("a blueprint for {string} made from {string} is at \\({int}, {int}\\)")]
        public void BlueprintIsAt(PickleContext ctx, string defName, string stuffName, int x, int z)
        {
            var cell = new IntVec3(x, 0, z);
            var blueprints = cell.GetThingList(Find.CurrentMap).OfType<Blueprint_Build>().ToList();
            var blueprint = blueprints.FirstOrDefault(candidate =>
                candidate.def.entityDefToBuild != null && candidate.def.entityDefToBuild.defName == defName &&
                candidate.EntityToBuildStuff() != null && candidate.EntityToBuildStuff().defName == stuffName);
            ctx.Assert(blueprint != null, "blueprint for " + defName + " made from " + stuffName +
                " is not at (" + x + ", " + z + "); blueprints there: " + string.Join(", ", blueprints.Select(candidate =>
                    (candidate.def.entityDefToBuild != null ? candidate.def.entityDefToBuild.defName : candidate.def.defName) +
                    "/" + (candidate.EntityToBuildStuff() != null ? candidate.EntityToBuildStuff().defName : "no stuff")).ToArray()));
        }

        private static ThingDef RequiredDef(PickleContext ctx, string name)
        {
            var def = DefDatabase<ThingDef>.GetNamedSilentFail(name);
            ctx.Require(def != null, "no ThingDef is named '" + name + "'");
            return def;
        }

        private static Thing ThingAt(string defName, string stuffName, int x, int z)
        {
            return new IntVec3(x, 0, z).GetThingList(Find.CurrentMap).FirstOrDefault(thing =>
                thing.def.defName == defName && thing.Stuff != null && thing.Stuff.defName == stuffName);
        }
    }
}
