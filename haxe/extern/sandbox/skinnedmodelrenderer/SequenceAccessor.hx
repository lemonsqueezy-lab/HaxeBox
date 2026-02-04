package sandbox.skinnedmodelrenderer;

@:native("Sandbox.SkinnedModelRenderer.SequenceAccessor")
final extern class SequenceAccessor {
    var Duration(default,never):Single;
    var IsFinished(default,never):Bool;
    var TimeNormalized(default,default):Single;
    var Time(default,default):Single;
    var SequenceNames(default,never):system.collections.generic.IReadOnlyList<String>;
    var Name(default,default):String;
    var Looping(default,default):Bool;
    var Blending(default,default):Bool;
    /** Control playback rate of sequence. */
    var PlaybackRate(default,default):Single;
}
