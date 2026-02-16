package sandbox;

/** Verlet integration-based rope physics simulation component. */
@:native("Sandbox.VerletRope")
extern class VerletRope extends sandbox.Component {
    function new():Void;
    /** The GameObject the end of the rope attaches to. */
    var Attachment(default,default):sandbox.GameObject;
    /** The LineRenderer used to visualize the rope. */
    var LinkedRenderer(default,default):sandbox.LineRenderer;
    /** Additional slack, added to the rope length. */
    var Slack(default,default):Single;
    /** Number of segments in the rope. Higher values increase visual fidelity and collision accuracy but quickly reduce performance. */
    var SegmentCount(default,default):Int;
    /** Radius of the rope for collision detection. */
    var Radius(default,default):Single;
    /** Controls the rope's length directly, will override the initial length and slack will not be applied. When set to 0, the rope's initial length between attachment points is used. */
    var LengthOverride(default,default):Single;
    /** Rope stiffness factor. Higher values make the rope more rigid. */
    var Stiffness(default,default):Single;
    /** Dampens rope movement. Higher values make the rope settle faster. */
    var DampingFactor(default,default):Single;
    /** Controls how easily the rope bends. Lower values allow more bending, higher values make it stiffer. */
    var SoftBendFactor(default,default):Single;
    @:protected function OnDestroy():Void;
    @:protected function OnDirty():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnUpdate():Void;
}
