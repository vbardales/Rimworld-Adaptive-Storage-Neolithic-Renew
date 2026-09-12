using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization;
using System.Xml;
using Verse;
using NeolithicRenew;

public static class TranslationChecks
{
    private static int checks;
    private static void Check(bool value, string message) { checks++; if (!value) throw new Exception(message); }
    private static T Empty<T>() { return (T)FormatterServices.GetUninitializedObject(typeof(T)); }
    private static ThingDef Thing(string name, string label)
    {
        var def = Empty<ThingDef>(); def.defName = name; def.label = label; return def;
    }
    public static int Run(string root)
    {
        checks = 0;
        foreach (var name in new[] { "English", "French", "Russian" })
        {
            var language = Empty<LoadedLanguage>();
            language.folderName = name;
            language.defInjections = new List<DefInjectionPackage>();
            language.keyedReplacements = new Dictionary<string, LoadedLanguage.KeyedReplacement>();
            var path = Path.Combine(root, "Mod/Languages/" + name + "/Keyed/Generated.xml");
            if (File.Exists(path))
            {
                var xml = new XmlDocument(); xml.Load(path);
                foreach (XmlNode node in xml.SelectNodes("/LanguageData/*"))
                    language.keyedReplacements.Add(node.Name, new LoadedLanguage.KeyedReplacement { value = node.InnerText });
            }
            var defs = new List<ThingDef>();
            foreach (var kind in new[] { "LargePot", "Plinth", "ChunkStorage" })
            {
                var chunk = Thing("ChunkTestStone", "bloc de pierre-test");
                var building = Thing("ASNeolithic" + kind + chunk.defName, "original label");
                building.description = "original description";
                building.costList = new List<ThingDefCountClass> { new ThingDefCountClass { thingDef = chunk, count = 2 } };
                defs.Add(building);
            }
            var unrelated = Thing("OtherModBuilding", "untouched"); defs.Add(unrelated);
            Func<string, string, string> translate = (key, chunk) => language.keyedReplacements[key].value.Replace("{CHUNK}", chunk);
            GeneratedTranslations.Apply(defs, language, translate);
            for (int i = 0; i < 3; i++)
            {
                Check(name == "French" ? defs[i].label.Contains("bloc de pierre-test") : defs[i].label == "original label", "Label language mismatch");
                Check(name == "French" ? defs[i].description != "original description" : defs[i].description == "original description", "Description language mismatch");
            }
            Check(unrelated.label == "untouched", "Unrelated def changed");
            if (name != "French") continue;
            var package = new DefInjectionPackage(typeof(ThingDef));
            var entry = new DefInjectionPackage.DefInjection { path = defs[0].defName + ".label", injected = true };
            package.injections.Add(entry.path, entry); language.defInjections.Add(package);
            defs[0].label = "custom translation";
            GeneratedTranslations.Apply(defs, language, translate);
            Check(defs[0].label == "custom translation", "Specific translation overwritten");
            entry.isPlaceholder = true;
            GeneratedTranslations.Apply(defs, language, translate);
            Check(defs[0].label != "custom translation", "Placeholder prevented fallback");
        }
        return checks;
    }
}
