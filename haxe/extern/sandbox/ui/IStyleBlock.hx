package sandbox.ui;

/** A CSS rule - ie ".chin { width: 100%; height: 100%; }" */
@:native("Sandbox.UI.IStyleBlock")
extern class IStyleBlock {
    /** The filename of the file containing this style block (or null if none) */
    var FileName(default,never):String;
    /** The absolute on disk filename for this style block (or null if not on disk) */
    var AbsolutePath(default,never):String;
    /** The line in the file containing this style block */
    var FileLine(default,never):Int;
    /** A list of selectors */
    var SelectorStrings(default,never):system.collections.generic.IEnumerable<String>;
    /** Get the list of raw style values */
    function GetRawValues():system.collections.generic.List<sandbox.ui.istyleblock.StyleProperty>;
    /** Update a raw style value */
    function SetRawValue(key:String, value:String, originalValue:String):Bool;
}
