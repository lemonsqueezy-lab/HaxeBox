package sandbox;

/** Add a space above this property */
@:native("Sandbox.SpaceAttribute")
final extern class SpaceAttribute extends system.Attribute {
    function new(height:Single):Void;
    var Height(default,default):Single;
}
