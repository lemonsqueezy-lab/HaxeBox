package sandbox.ui;

/** A CSS rule - ie ".chin { width: 100%; height: 100%; }" */
@:native("Sandbox.UI.StyleBlock")
final extern class StyleBlock {
    function new():Void;
    /** A list of appropriate selectors for this block (ie ".button") */
    var Selectors(default,never):Array<sandbox.ui.StyleSelector>;
    /** A list of selectors for this block */
    var SelectorStrings(default,never):system.collections.generic.IEnumerable<String>;
    /** The filename of the file containing this style block (or null if none) */
    var FileName(default,never):String;
    /** The absolute on disk filename for this style block (or null if not on disk) */
    var AbsolutePath(default,never):String;
    /** The line in the file containing this style block */
    var FileLine(default,never):Int;
    var Styles(default,default):sandbox.ui.Styles;
    /** Get the list of raw style values */
    function GetRawValues():system.collections.generic.List<sandbox.ui.istyleblock.StyleProperty>;
    /** Update a raw style value */
    function SetRawValue(key:String, value:String, originalValue:String):Bool;
    function SetSelector(selector:String, parent:sandbox.ui.StyleBlock):Bool;
    /** Test whether target passes our selector tests. We use forceFlag to do alternate tests for flags like ::before and ::after. It's basically added to the target's pseudo class list for the test. */
    function Test(target:sandbox.ui.IStyleTarget, forceFlag:sandbox.ui.PseudoClass):sandbox.ui.StyleSelector;
    /** Tests a few broadphase conditions to build a list of feasible styleblocks tailored for a panel. */
    function TestBroadphase(target:sandbox.ui.IStyleTarget):Bool;
}
