package sandbox.ui;

/** Will automatically apply the named stylesheet to the Panel. */
@:native("Sandbox.UI.StyleSheetAttribute")
final extern class StyleSheetAttribute extends system.Attribute {
    function new(name:String):Void;
    var Name(default,default):String;
}
