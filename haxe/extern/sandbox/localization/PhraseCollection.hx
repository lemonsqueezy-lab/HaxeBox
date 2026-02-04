package sandbox.localization;

/** Holds a bunch of localized phrases */
@:native("Sandbox.Localization.PhraseCollection")
extern class PhraseCollection {
    function new():Void;
    /** Get a simple phrase from the language */
    function GetPhrase(phrase:String, data:system.collections.generic.Dictionary<String,cs.system.Object>):String;
    /** Add a phrase to the language */
    function Set(key:String, value:String):Void;
}
