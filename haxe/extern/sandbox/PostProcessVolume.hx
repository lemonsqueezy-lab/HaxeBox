package sandbox;

/** A volume that defines a region in the scene where post processing effects will be applied. */
@:native("Sandbox.PostProcessVolume")
extern class PostProcessVolume extends sandbox.volumes.VolumeComponent {
    function new():Void;
    /** Higher priority volumes override lower priority ones. The default priority is 0. */
    var Priority(default,default):Int;
    /** Allows fading in and out */
    var BlendWeight(default,default):Single;
    /** Distance from the edge of the volume where blending starts. 0 means hard edge, higher values create softer transitions. */
    var BlendDistance(default,default):Single;
    /** Preview the post processing when this object is selected in the editor, or when the editor camera is inside the volume. */
    var EditorPreview(default,default):Bool;
    /** Get weight based on position */
    function GetWeight(pos:Vector3):Single;
}
