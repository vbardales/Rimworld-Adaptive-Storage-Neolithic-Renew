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
            ctx.Assert(DefDatabase<ThingDef>.GetNamedSilentFail(defName) == null,
                "ThingDef '" + defName + "' still exists");
        }

        [Given("a {string} made from {string} is built at ({int}, {int})")]
        [When("a {string} made from {string} is built at ({int}, {int})")]
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

        [Then("a {string} made from {string} is at ({int}, {int})")]
        public void StuffedThingIsAt(PickleContext ctx, string defName, string stuffName, int x, int z)
        {
            var thing = ThingAt(defName, stuffName, x, z);
            ctx.Assert(thing != null, defName + " made from " + stuffName + " is not at (" + x + ", " + z + ")");
        }

        [Then("a {string} made from {string} at ({int}, {int}) is labelled {string}")]
        public void StuffedThingLabel(PickleContext ctx, string defName, string stuffName, int x, int z, string label)
        {
            var thing = ThingAt(defName, stuffName, x, z);
            ctx.Require(thing != null, defName + " made from " + stuffName + " is not at (" + x + ", " + z + ")");
            ctx.Assert(thing.LabelCap == label, "label is '" + thing.LabelCap + "', not '" + label + "'");
        }

        [When("I designate a {string} made from {string} at ({int}, {int})")]
        public async Task Designate(PickleContext ctx, string defName, string stuffName, int x, int z)
        {
            var def = RequiredDef(ctx, defName);
            var stuff = RequiredDef(ctx, stuffName);
            GenConstruct.PlaceBlueprintForBuild(def, new IntVec3(x, 0, z), Find.CurrentMap, Rot4.North,
                Faction.OfPlayer, stuff, null, null, false);
            await ctx.WaitFrames(1);
        }

        [Then("a blueprint for {string} made from {string} is at ({int}, {int})")]
        public void BlueprintIsAt(PickleContext ctx, string defName, string stuffName, int x, int z)
        {
            var cell = new IntVec3(x, 0, z);
            var blueprint = cell.GetThingList(Find.CurrentMap).OfType<Blueprint_Build>().FirstOrDefault(candidate =>
                candidate.def.entityDefToBuild != null && candidate.def.entityDefToBuild.defName == defName &&
                candidate.Stuff != null && candidate.Stuff.defName == stuffName);
            ctx.Assert(blueprint != null, "blueprint for " + defName + " made from " + stuffName +
                " is not at (" + x + ", " + z + ")");
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
