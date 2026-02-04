package sandbox.ui;

/** Will automatically apply the named stylesheet to the Panel. */
@:native("Sandbox.UI.StyleSheetAttribute")
final extern class StyleSheetAttribute {
    function new(name:String):Void;
    var TypeId(default,never):cs.system.Object;
    var Name(default,default):String;
}
