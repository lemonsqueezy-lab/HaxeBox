package sandbox;

/** Allows access to translated phrases, allowing the translation of gamemodes etc */
@:native("Sandbox.Language")
final extern class Language {
    /** The abbreviation for the language the user wants. This is set by the user in the options menu. */
    static var SelectedCode(default,never):String;
    /** Information about the current selected language. Will default to English if the current language isn't found. */
    static var Current(default,never):sandbox.localization.LanguageInformation;
    /** Look up a phrase */
    static function GetPhrase(textToken:String, data:system.collections.generic.Dictionary<String,cs.system.Object>):String;
}
