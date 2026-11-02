using System.Collections.Generic;
using System.Threading.Tasks;
using RimWorks.Pickle;
using Verse;

// Written for the C# 5 compiler that ships with the .NET Framework, as the other file of this assembly is.
namespace AdaptiveStorageNeolithicRenew.PickleSteps
{
    /// <summary>
    /// The interface out of the way, for the pictures of the Workshop page (PUBLICATION.md, section 1).
    ///
    /// The game's own screenshot mode draws nothing but the windows that ask for it: the tab bar, the alerts, the colonist bar and
    /// the developer tools are not windows and disappear by themselves. What stays is Pickle's runner panel in the corner, which
    /// is a window and draws in screenshot mode, so it is turned off here and turned back on afterwards.
    ///
    /// The same mechanism as Work Studio's <c>I hide the interface around Work Studio's windows</c> (WorkStudio/Tests/Pickle/Source/
    /// ModSteps.cs), which the PickleTools index lists as copyable; this copy takes its own mod's name in the text, because Pickle
    /// loads every suite's steps into one namespace and two suites declaring the same text make healthy scenarios "Ambiguous step".
    /// The restore also runs after every scenario, so one that dies between the two steps does not leave the game without an interface.
    /// </summary>
    [PickleSteps]
    public class PublicationSteps
    {
        private static readonly List<Window> HiddenWindows = new List<Window>();
        private static bool screenshotModeWasActive;
        private static bool interfaceHidden;

        [When("I hide the interface for the Adaptive Storage Neolithic Renew Workshop captures")]
        public async Task HideInterface(PickleContext ctx)
        {
            var root = Find.UIRoot;
            ctx.Require(root != null, "no UIRoot: the game is not drawing anything to photograph");

            if (!interfaceHidden)
            {
                screenshotModeWasActive = root.screenshotMode.Active;
                interfaceHidden = true;
            }

            foreach (var window in Find.WindowStack.Windows)
            {
                var isPickle = window.GetType().Assembly.GetName().Name.StartsWith("RimWorks.Pickle",
                    System.StringComparison.OrdinalIgnoreCase);
                if (isPickle && window.drawInScreenshotMode)
                {
                    window.drawInScreenshotMode = false;
                    HiddenWindows.Add(window);
                }
            }

            root.screenshotMode.Active = true;
            await ctx.WaitFrames(3);
        }

        [When("I bring the interface back after the Adaptive Storage Neolithic Renew Workshop captures")]
        public async Task ShowInterface(PickleContext ctx)
        {
            Restore();
            await ctx.WaitFrames(3);
        }

        [AfterScenario]
        public void RestoreAfterScenario(PickleContext ctx)
        {
            Restore();
        }

        private static void Restore()
        {
            foreach (var window in HiddenWindows)
            {
                window.drawInScreenshotMode = true;
            }

            HiddenWindows.Clear();

            var root = Find.UIRoot;
            if (interfaceHidden && root != null && !screenshotModeWasActive)
            {
                root.screenshotMode.Active = false;
            }

            interfaceHidden = false;
        }
    }
}
