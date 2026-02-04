package sandbox;

/** Provides ability to generate animations for a at runtime. See */
@:native("Sandbox.AnimationBuilder")
final extern class AnimationBuilder {
    /** The name of the animation. */
    var Name(default,default):String;
    /** The frames per second of the animation. */
    var FrameRate(default,default):Single;
    /** This animation loops. */
    var Looping(default,default):Bool;
    /** This animation "adds" to the base result. */
    var Delta(default,default):Bool;
    /** This animation disables interpolation between frames. */
    var DisableInterpolation(default,default):Bool;
    /** The number of frames in the animation. */
    var FrameCount(default,never):Int;
    /** Add bone transforms for a frame of animation. */
    overload function AddFrame(boneTransforms:system.Span<Transform>):sandbox.AnimationBuilder;
    overload function AddFrame(boneTransforms:system.collections.generic.List<Transform>):sandbox.AnimationBuilder;
    /** Sets whether the animation adds to the base result. */
    function WithDelta(delta:Bool):sandbox.AnimationBuilder;
    /** Sets the frames per second of the animation. */
    function WithFrameRate(frameRate:Single):sandbox.AnimationBuilder;
    /** Sets whether interpolation between frames is disabled. */
    function WithInterpolationDisabled(disableInterpolation:Bool):sandbox.AnimationBuilder;
    /** Sets whether the animation loops. */
    function WithLooping(looping:Bool):sandbox.AnimationBuilder;
    /** Sets the name of the animation. */
    function WithName(name:String):sandbox.AnimationBuilder;
}
