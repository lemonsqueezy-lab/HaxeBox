package sandbox;

/** Add a header above this property */
@:native("Sandbox.HeaderAttribute")
final extern class HeaderAttribute extends system.Attribute {
    function new(header:String):Void;
    var Title(default,default):String;
}
