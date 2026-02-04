package sandbox;

/** Add a space above this property */
@:native("Sandbox.SpaceAttribute")
final extern class SpaceAttribute {
    function new(height:Single):Void;
    var Height(default,default):Single;
    var TypeId(default,never):cs.system.Object;
}
