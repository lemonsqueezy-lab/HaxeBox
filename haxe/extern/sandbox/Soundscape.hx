package sandbox;

/** A soundscape is used for environmental ambiance of a map by playing a set of random sounds at given intervals. */
@:native("Sandbox.Soundscape")
extern class Soundscape {
    function new():Void;
    /** All sound volumes in this soundscape will be scaled by this value. */
    var MasterVolume(default,default):RangedFloat;
    /** Sounds that are played constantly on a loop. */
    var LoopedSounds(default,default):system.collections.generic.List<sandbox.soundscape.LoopedSound>;
    /** Sounds that are played at intervals. */
    var StingSounds(default,default):system.collections.generic.List<sandbox.soundscape.StingSound>;
    /** True if this resource has changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Target type used for any action graphs contained in this resource. Defaults to this resource's type. */
    @:protected
    var ActionGraphTargetType(null,never):cs.system.Type;
    /** Target instance used for any action graphs contained in this resource. Defaults to this resource itself. */
    @:protected
    var ActionGraphTarget(null,never):cs.system.Object;
    /** The version of the component. Used by . */
    var ResourceVersion(default,never):Int;
    var IsValid(default,never):Bool;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function CreateAssetTypeIcon(width:Int, height:Int):sandbox.Bitmap;
}
