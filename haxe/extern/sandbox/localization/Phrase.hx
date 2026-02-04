package sandbox.localization;

/** A translated string. ie "Hello World". It might also have variables, ie "Hello {PlayerName}". Todo support for conditionals and plurals */
@:native("Sandbox.Localization.Phrase")
extern class Phrase {
    /** Create a SmartString from a phrase. */
    function new(value:String):Void;
    /** Render with no data - basically just returns Value */
    overload function Render():String;
    overload function Render(data:system.collections.generic.Dictionary<String,cs.system.Object>):String;
}
