package sandbox;

/** Represents a volume of fog in a scene, contributing to volumetric fog effects set on . */
@:native("Sandbox.SceneFogVolume")
final extern class SceneFogVolume {
    function new(world:sandbox.SceneWorld, transform:Transform, boundingBox:BBox, fogStrength:Single, falloffExponent:Single):Void;
    /** The position and rotation of the fog volume in the scene. */
    var Transform(default,default):Transform;
    /** Defines the spatial boundaries of the fog volume. */
    var BoundingBox(default,default):BBox;
    /** The intensity of the fog. Higher values indicate denser fog. */
    var FogStrength(default,default):Single;
    /** Controls how quickly the fog fades at the edges of the volume. Higher values give sharper transitions. */
    var FalloffExponent(default,default):Single;
    var IsValid(default,never):Bool;
    /** Delete this fog volume. You shouldn't access it anymore. */
    function Delete():Void;
}
