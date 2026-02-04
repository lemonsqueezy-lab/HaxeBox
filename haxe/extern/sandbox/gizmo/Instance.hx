package sandbox.gizmo;

/** Holds the backend state for a Gizmo scope. This allows us to have multiple different gizmo states (for multiple views, multiple windows, game and editor) and push them as the current active state whenever needed. */
@:native("Sandbox.Gizmo.Instance")
extern class Instance {
    function new():Void;
    /** If true, we'll draw some debug information */
    var Debug(default,default):Bool;
    /** If true we'll enable hitbox debugging */
    var DebugHitboxes(default,default):Bool;
    /** The SceneWorld this instance is writing to. This world exists only for this instance. You need to add this world to your camera for it to render (!) */
    var World(default,default):sandbox.SceneWorld;
    /** The previous input state */
    var PreviousInput(default,never):sandbox.gizmo.Inputs;
    /** This frame's created (or re-used) objects */
    var Selection(default,default):sandbox.SelectionSystem;
    /** The current control mode. This is generally implementation specific. We tend to use "mouse" and "firstperson". */
    var ControlMode(default,default):String;
    /** Some global settings accessible to the gizmos. Your implementation generally lets your users set up these things to their preference, and the gizmos should try to obey them. */
    var Settings(default,default):sandbox.gizmo.SceneSettings;
    var Input(default,default):sandbox.gizmo.Inputs;
    /** Called when the scene changes and we don't want to inherit a bunch of values. We might want to just target some specific values here instead of clearing the log. */
    function Clear():Void;
    /** Destroy this instance, clean up any created resources/scene objects, destroy the world. */
    function Dispose():Void;
    /** Generic storage for whatever you want to do. You're responsible for not spamming into this and cleaning up after yourself. */
    function GetValue<T>(name:String):T;
    /** Push this instance as the global Gizmo state. All Gizmo calls during this scope will use this instance. */
    function Push():system.IDisposable;
    function SetValue<T>(name:String, value:T):Void;
    /** Set all of the state's cursor positions to this value. This stomps previous values which will effectively clear any deltas. This should be used prior to starting a loop. */
    function StompCursorPosition(position:Vector2):Void;
}
