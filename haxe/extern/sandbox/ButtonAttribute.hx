package sandbox;

/** When added to a method - the inspector will show a button for it. */
@:native("Sandbox.ButtonAttribute")
extern class ButtonAttribute {
    function new(value:String, icon:String):Void;
    var Icon(default,default):String;
    var Title(default,default):String;
    var TypeId(default,never):cs.system.Object;
}
