package sandbox.vr;

/** Updates this GameObject's transform based on a given tracked object (e.g. left controller, HMD). */
@:native("Sandbox.VR.VRTrackedObject")
extern class VRTrackedObject extends sandbox.Component {
    function new():Void;
    /** Which tracked object should we use to update the transform? */
    var PoseSource(default,default):sandbox.vr.vrtrackedobject.PoseSources;
    /** Which pose type to use (only applies to hand controllers, not the head). Grip is centered on the palm, Aim points forward for aiming/pointing. */
    var PoseType(default,default):sandbox.vr.vrtrackedobject.PoseTypes;
    /** Which parts of the transform should be updated? (eg. rotation, position) */
    var TrackingType(default,default):sandbox.vr.vrtrackedobject.TrackingTypes;
    /** If this is checked, then the transform used will be relative to the VR anchor (rather than an absolute world position). */
    var UseRelativeTransform(default,default):Bool;
    @:protected function OnPreRender():Void;
    @:protected function OnUpdate():Void;
}
