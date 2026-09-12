using System;
using System.Collections.Generic;
using HarmonyLib;
using Verse;

namespace NeolithicRenew
{
    public sealed class TranslationMod : Mod
    {
        public TranslationMod(ModContentPack content) : base(content)
        {
            new Harmony("nelim.adaptivestorageneolithic.translations").Patch(
                AccessTools.Method(typeof(LoadedLanguage), "InjectIntoData_BeforeImpliedDefs"),
                postfix: new HarmonyMethod(typeof(GeneratedTranslations), "AfterInjection"));
        }
    }

    public static class GeneratedTranslations
    {
        // Run after stone translations, before vanilla copies labels to blueprints/frames.
        public static void AfterInjection(LoadedLanguage __instance)
        {
            Apply(DefDatabase<ThingDef>.AllDefsListForReading, __instance,
                delegate(string key, string chunk) { return key.Translate(chunk.Named("CHUNK")).ToString(); });
        }

        public static void Apply(IEnumerable<ThingDef> defs, LoadedLanguage language,
            Func<string, string, string> translate)
        {
            // English already has native Def text. Other languages opt in through Keyed files.
            if (language.folderName == "English") return;
            var injected = new HashSet<string>(StringComparer.Ordinal);
            foreach (var package in language.defInjections)
                if (package.defType == typeof(ThingDef))
                    foreach (var entry in package.injections.Values)
                        if (entry.injected && !entry.isPlaceholder)
                            injected.Add(entry.normalizedPath ?? entry.path);

            foreach (var def in defs)
            {
                if (def.costList == null || def.costList.Count != 1) continue;
                var chunk = def.costList[0].thingDef;
                if (chunk == null || String.IsNullOrEmpty(chunk.label)) continue;
                foreach (var kind in new[] { "LargePot", "Plinth", "ChunkStorage" })
                {
                    if (def.defName != "ASNeolithic" + kind + chunk.defName) continue;
                    foreach (var field in new[] { "label", "description" })
                    {
                        if (injected.Contains(def.defName + "." + field)) continue;
                        var key = "ASNeolithic.Generated." + kind + "." + field;
                        LoadedLanguage.KeyedReplacement replacement;
                        if (!language.keyedReplacements.TryGetValue(key, out replacement)
                            || replacement.isPlaceholder || String.IsNullOrWhiteSpace(replacement.value)) continue;
                        var text = translate(key, chunk.label);
                        if (field == "label") def.label = text;
                        else def.description = text;
                    }
                    def.ClearCachedData();
                    break;
                }
            }
        }
    }
}
