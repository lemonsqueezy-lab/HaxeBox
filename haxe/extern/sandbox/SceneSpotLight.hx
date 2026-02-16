package sandbox;

/** A simple spot light scene object for use in a . */
@:native("Sandbox.SceneSpotLight")
final extern class SceneSpotLight extends sandbox.SceneLight {
    overload function new(world:sandbox.SceneWorld):Void;
    overload function new(world:sandbox.SceneWorld, position:Vector3, color:Color):Void;
    /** The inner cone of the spotlight, in half angle degrees. */
    var ConeInner(default,default):Single;
    /** The outer cone of the spotlight, in half angle degrees */
    var ConeOuter(default,default):Single;
    var FallOff(default,default):Single;
}
