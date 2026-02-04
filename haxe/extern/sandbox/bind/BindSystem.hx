package sandbox.bind;

/** Data bind system, bind properties to each other. */
@:native("Sandbox.Bind.BindSystem")
extern class BindSystem {
    /** The debug name given to this system (ie Tools, Client, Server) */
    var Name(default,default):String;
    /** If true we'll throttle time between link change checks. This should always be enabled in game, for performance reasons. */
    var ThrottleUpdates(default,never):Bool;
    /** If true we'll catch and remove exceptions when testing links instead of propagating them to the Tick call. */
    var CatchExceptions(default,never):Bool;
    /** The current amount of active links */
    var LinkCount(default,never):Int;
    /** A helper to create binds between two properties (or whatever you want) */
    var Build(default,never):sandbox.bind.Builder;
    function FindAttributes<T>(obj:T, property:String):Array<system.Attribute>;
    /** Call a tick with no timer limits, forcing all pending actions to be actioned */
    function Flush():Void;
    /** Should be called every frame. Will run through the links and check for changes, then action those changes. Will also remove dead links. */
    function Tick():Void;
}
