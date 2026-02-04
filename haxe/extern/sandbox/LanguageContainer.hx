package sandbox;

/** A container for the current language, allowing access to translated phrases and language information. */
@:native("Sandbox.LanguageContainer")
extern class LanguageContainer {
    /** The abbreviation for the language the user wants. This is set by the user in the options menu. */
    var SelectedCode(default,never):String;
    /** Information about the current selected language. Will default to English if the current language isn't found. */
    var Current(default,never):sandbox.localization.LanguageInformation;
    /** Look up a phrase */
    function GetPhrase(textToken:String, data:system.collections.generic.Dictionary<String,cs.system.Object>):String;
}
