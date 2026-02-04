package sandbox.vr;

@:native("Sandbox.VR.VRInput")
extern class VRInput {
    /** The current relevant instance. */
    static var Current(default,never):sandbox.vr.VRInput;
    /** Get or set the player's scale in the world. If you set it to 2 the player will be twice as big. */
    var Scale(default,default):Single;
    /** Gets or sets where the center of the VR play area is in world space. */
    var Anchor(default,default):Transform;
    /** Returns true if SteamVR is drawing the controllers */
    var ControllersAreDrawing(default,never):Bool;
    /** Returns true if the left hand is dominant */
    var IsLeftHandDominant(default,never):Bool;
    /** Position and rotation of the Head Mounted Display in local space coordinates. */
    var Head(default,never):Transform;
    /** Information about the left hand input. */
    var LeftHand(default,never):sandbox.vr.VRController;
    /** Information about the right hand input. */
    var RightHand(default,never):sandbox.vr.VRController;
    /** A list of available trackers. */
    var TrackedObjects(default,never):system.collections.generic.IReadOnlyList<sandbox.vr.TrackedObject>;
}
