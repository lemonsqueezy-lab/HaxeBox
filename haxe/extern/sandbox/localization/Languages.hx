package sandbox.localization;

/** A list of supported languages and metadata surrounding them */
@:native("Sandbox.Localization.Languages")
final extern class Languages {
    /** Enumerate all languages, in no particular order */
    static var List(default,never):system.collections.generic.IEnumerable<sandbox.localization.LanguageInformation>;
    /** Find a language by shortname, or full name */
    static function Find(key:String):sandbox.localization.LanguageInformation;
}
