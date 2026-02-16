package sandbox;

/** A directional scene light that is used to mimic sun light in a . Direction is controlled by this objects' . */
@:native("Sandbox.SceneDirectionalLight")
final extern class SceneDirectionalLight extends sandbox.SceneLight {
    function new(sceneWorld:sandbox.SceneWorld, rotation:Rotation, color:Color):Void;
    /** Ambient light color outside of all light probes. */
    var SkyColor(default,default):Color;
    /** Control number of shadow cascades */
    var ShadowCascadeCount(default,default):Int;
    /** Set the max distance of the shadow cascade */
    function SetCascadeDistanceScale(distance:Single):Void;
}
