package sandbox.ui;

/** A collection of objects applied directly to a panel. See . */
@:native("Sandbox.UI.StyleSheetCollection")
final extern class StyleSheetCollection {
    /** Add a stylesheet directly */
    function Add(sheet:sandbox.ui.StyleSheet):Void;
    /** Returns all CSS variables from the owning panel and its ancestors. */
    function CollectVariables():system.collections.generic.IEnumerable<system.ValueTuple2<String,String>>;
    /** Load the stylesheet from a file. */
    function Load(filename:String, inheritVariables:Bool, failSilently:Bool):Void;
    /** Load the stylesheet from a string. */
    function Parse(stylesheet:String, inheritVariables:Bool):Void;
    /** Remove all stylesheets whose filename matches this wildcard glob. */
    overload function Remove(wildcardGlob:String):Void;
    overload function Remove(sheet:sandbox.ui.StyleSheet):Void;
}
