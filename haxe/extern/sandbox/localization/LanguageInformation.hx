package sandbox.localization;

@:native("Sandbox.Localization.LanguageInformation")
extern class LanguageInformation {
    function new(title:String, abbreviation:String, parent:String, rightToLeft:Bool):Void;
    /** Title of the localization language. */
    var Title(default,never):String;
    /** ISO 639-1 code of the language, with optional ISO 3166-1 alpha-2 country specifiers. (for example "en-GB" for British English) */
    var Abbreviation(default,never):String;
    /** If set, the of the parent language. For example, Pirate English is based on English. */
    var Parent(default,never):String;
    /** Whether the language is typed right to left, such as the Arabic language. */
    var RightToLeft(default,never):Bool;
}
