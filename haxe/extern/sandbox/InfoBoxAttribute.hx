package sandbox;

/** Draw a box with information above this property */
@:native("Sandbox.InfoBoxAttribute")
final extern class InfoBoxAttribute {
    function new(message:String, icon:String, tint:sandbox.EditorTint):Void;
    /** Message to display */
    var Message(default,default):String;
    /** The icon to show (material icons) */
    var Icon(default,default):String;
    /** The color of this info box. Helps group things, helps things to stand out. Defaults to blue. */
    var Tint(default,default):sandbox.EditorTint;
    var TypeId(default,never):cs.system.Object;
}
