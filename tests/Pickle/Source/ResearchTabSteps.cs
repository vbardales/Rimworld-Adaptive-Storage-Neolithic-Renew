using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using RimWorks.Pickle;
using RimWorld;
using Verse;

// Written for the C# 5 compiler that ships with the .NET Framework, as Mod/Source is: Build.ps1 uses it.
namespace AdaptiveStorageNeolithicRenew.PickleSteps
{
    /// <summary>
    /// The framework's research tab, opened and read by def name.
    ///
    /// No vanilla Pickle step can do this. The research window draws its tabs as <c>TabRecord</c>s
    /// through <c>TabDrawer.DrawTabsOverflow</c>, which records no button tag, so
    /// <c>I click button "Storage"</c> failed with "no tags recorded this frame" (2026-09-21, English
    /// and French). These steps do what the tab's click does, without the pointer, and read what the
    /// window would list rather than the picture of it. The step texts carry the mod's name: Pickle
    /// loads every active suite's steps into one namespace, and two suites declaring the same text
    /// make healthy scenarios "Ambiguous step".
    /// </summary>
    [PickleSteps]
    public class ResearchTabSteps
    {
        private const BindingFlags Any = BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic;

        /// <summary>
        /// Opens the research window and runs the click action of the tab record built for that def.
        /// The record is the game's own: it sets the window's CurTab and updates the selected project,
        /// which is all a click does. By def name, so the language the game runs in is never involved.
        /// </summary>
        [When("I open the Adaptive Storage Neolithic Renew research tab {string}")]
        public async Task OpenTab(PickleContext ctx, string tabDefName)
        {
            var tab = DefDatabase<ResearchTabDef>.GetNamedSilentFail(tabDefName);
            ctx.Require(tab != null, string.Format("no research tab is named '{0}'; known: {1}", tabDefName,
                string.Join(", ", DefDatabase<ResearchTabDef>.AllDefsListForReading.Select(t => t.defName).ToArray())));

            Find.MainTabsRoot.SetCurrentTab(MainButtonDefOf.Research, false);

            // PostOpen builds the tab records; the window is added to the stack on the call above.
            await ctx.WaitUntil(() => Records(Window()).Count > 0, 10f);
            var window = Window();
            ctx.Require(window != null, "the research window did not open");

            var record = RecordOf(window, tab);
            ctx.Require(record != null, string.Format("the research window built no tab record for '{0}'; it built: {1}",
                tabDefName, DescribeRecords(window)));

            record.clickedAction();
            await ctx.WaitFrames(3);

            ctx.Attach("research tabs the window drew",
                DescribeRecords(window) + "\nselected: " + (window.CurTab == null ? "none" : window.CurTab.defName));
        }

        /// <summary>The window is on that tab, the tab is one it drew, and its contents are revealed.</summary>
        [Then("the Adaptive Storage Neolithic Renew research window is on the tab {string}")]
        public void OnTab(PickleContext ctx, string tabDefName)
        {
            var window = Window();
            ctx.Require(window != null, "the research window is not open");

            var current = window.CurTab;
            ctx.Assert(current != null && current.defName == tabDefName, string.Format(
                "the research window is on '{0}', not '{1}'", current == null ? "no tab" : current.defName, tabDefName));

            var record = RecordOf(window, current);
            ctx.Assert(record != null && record.Selected, string.Format(
                "the window drew no selected tab record for '{0}'; it drew: {1}", tabDefName, DescribeRecords(window)));

            // A tab whose info is not visible draws "not discovered" instead of its projects.
            ctx.Assert(Find.ResearchManager.TabInfoVisible(current), string.Format(
                "'{0}' is selected but its info is not visible: the window would draw the not-discovered text, not the projects", tabDefName));
        }

        /// <summary>
        /// The label the tab is drawn with, which is the one a player reads on it: the record is built
        /// from <c>tabDef.LabelCap</c> when the window opens, so this is the translation as the window
        /// got it, not the def's field read a second time. The step that names the language is the feature's.
        /// </summary>
        [Then("the Adaptive Storage Neolithic Renew research window labels the tab {string} as {string}")]
        public void LabelsTab(PickleContext ctx, string tabDefName, string label)
        {
            var window = Window();
            ctx.Require(window != null, "the research window is not open");
            var tab = DefDatabase<ResearchTabDef>.GetNamedSilentFail(tabDefName);
            ctx.Require(tab != null, string.Format("no research tab is named '{0}'", tabDefName));

            var record = RecordOf(window, tab);
            ctx.Require(record != null, string.Format("the research window built no tab record for '{0}'; it built: {1}",
                tabDefName, DescribeRecords(window)));
            ctx.Assert(record.label == label, string.Format("the tab '{0}' is labelled '{1}', not '{2}'",
                tabDefName, record.label, label));
        }

        /// <summary>
        /// The project is one the window lists on its current tab: in the visible projects, whose tab
        /// is the selected one, not hidden, at the cost the mod's file asks for. Read off the same
        /// list <c>ListProjects</c> draws from, so a project missing here is missing on screen.
        /// </summary>
        [Then("the Adaptive Storage Neolithic Renew research window lists the project {string} costing {int}")]
        public void ListsProject(PickleContext ctx, string projectDefName, int cost)
        {
            var window = Window();
            ctx.Require(window != null, "the research window is not open");
            ctx.Require(window.CurTab != null, "the research window has no current tab");

            var project = DefDatabase<ResearchProjectDef>.GetNamedSilentFail(projectDefName);
            ctx.Require(project != null, string.Format("no research project is named '{0}'", projectDefName));

            var listed = ListedOnCurrentTab(window);
            ctx.Attach("projects listed on " + window.CurTab.defName, Describe(listed));

            ctx.Assert(project.tab == window.CurTab, string.Format(
                "'{0}' belongs to the tab '{1}', not to '{2}'", projectDefName,
                project.tab == null ? "none" : project.tab.defName, window.CurTab.defName));
            ctx.Assert(listed.Contains(project), string.Format(
                "the window does not list '{0}' on '{1}'; it lists: {2}", projectDefName, window.CurTab.defName,
                string.Join(", ", listed.Select(p => p.defName).ToArray())));
            ctx.Assert(!project.IsHidden, string.Format("'{0}' is listed but hidden", projectDefName));
            ctx.Assert(Math.Abs(project.Cost - cost) < 0.01f, string.Format(
                "'{0}' costs {1}, not {2}", projectDefName, project.Cost, cost));
        }

        /// <summary>
        /// Two projects at one coordinate are drawn one on top of the other. TESTING.md scenario 2 says
        /// "one above the other"; this catches the case where they are not. What it cannot say is
        /// whether the layout is good: the capture is for that.
        /// </summary>
        [Then("the Adaptive Storage Neolithic Renew research window draws no two of its projects on the same spot")]
        public void NoOverlap(PickleContext ctx)
        {
            var window = Window();
            ctx.Require(window != null, "the research window is not open");
            var listed = ListedOnCurrentTab(window);
            ctx.Attach("projects listed on " + window.CurTab.defName, Describe(listed));

            for (var i = 0; i < listed.Count; i++)
            {
                for (var j = i + 1; j < listed.Count; j++)
                {
                    var same = Math.Abs(listed[i].ResearchViewX - listed[j].ResearchViewX) < 0.01f &&
                               Math.Abs(listed[i].ResearchViewY - listed[j].ResearchViewY) < 0.01f;
                    ctx.Assert(!same, string.Format("'{0}' and '{1}' are both drawn at ({2}, {3})",
                        listed[i].defName, listed[j].defName, listed[i].ResearchViewX, listed[i].ResearchViewY));
                }
            }
        }

        // ---------------------------------------------------------------- what the window holds

        private static MainTabWindow_Research Window()
        {
            return Find.WindowStack == null ? null : Find.WindowStack.WindowOfType<MainTabWindow_Research>();
        }

        /// <summary>The window's private list of tab records: <c>tabs</c>, filled by PostOpen.</summary>
        private static List<TabRecord> Records(MainTabWindow_Research window)
        {
            var result = new List<TabRecord>();
            if (window == null)
            {
                return result;
            }

            var field = typeof(MainTabWindow_Research).GetField("tabs", Any);
            if (field == null)
            {
                throw new InvalidOperationException("MainTabWindow_Research.tabs no longer exists: update the step");
            }

            var list = field.GetValue(window) as IEnumerable;
            if (list != null)
            {
                foreach (var item in list)
                {
                    result.Add((TabRecord)item);
                }
            }

            return result;
        }

        /// <summary>The record's <c>def</c> is a public field of a private nested class, hence reflection.</summary>
        private static ResearchTabDef DefOf(TabRecord record)
        {
            var field = record.GetType().GetField("def", Any);
            if (field == null)
            {
                throw new InvalidOperationException(record.GetType().Name + ".def no longer exists: update the step");
            }

            return (ResearchTabDef)field.GetValue(record);
        }

        private static TabRecord RecordOf(MainTabWindow_Research window, ResearchTabDef tab)
        {
            return Records(window).FirstOrDefault(r => DefOf(r) == tab);
        }

        private static string DescribeRecords(MainTabWindow_Research window)
        {
            return string.Join(", ", Records(window).Select(r =>
                string.Format("{0} (label '{1}'{2})", DefOf(r).defName, r.label, r.Selected ? ", selected" : "")).ToArray());
        }

        /// <summary>What <c>ListProjects</c> iterates: the visible projects whose tab is the current one.</summary>
        private static List<ResearchProjectDef> ListedOnCurrentTab(MainTabWindow_Research window)
        {
            return window.VisibleResearchProjects.Where(p => p.tab == window.CurTab).ToList();
        }

        private static string Describe(List<ResearchProjectDef> projects)
        {
            return string.Join("\n", projects.Select(p => string.Format("{0}: '{1}', cost {2}, at ({3}, {4}), {5}",
                p.defName, p.LabelCap, p.Cost, p.ResearchViewX, p.ResearchViewY, p.techLevel)).ToArray());
        }
    }
}
