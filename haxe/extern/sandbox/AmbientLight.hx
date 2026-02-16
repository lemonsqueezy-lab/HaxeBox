package sandbox;

/** Adds an ambient light to the scene, applied globally. */
@:native("Sandbox.AmbientLight")
extern class AmbientLight extends sandbox.Component {
    function new():Void;
    /** Ambient light color outside of all light probes. */
    var Color(default,default):Color;
}
