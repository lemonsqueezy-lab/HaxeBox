package sandbox;

@:native("Sandbox.GameTransform")
extern class GameTransform {
    var GameObject(default,never):sandbox.GameObject;
    var Proxy(default,default):sandbox.TransformProxy;
    /** The current interpolated local transform. */
    var InterpolatedLocal(default,never):Transform;
    /** The current local transform. */
    var Local(default,default):Transform;
    /** The current world transform. */
    var World(default,default):Transform;
    /** The position in world coordinates. */
    var Position(default,default):Vector3;
    /** The rotation in world coordinates. */
    var Rotation(default,default):Rotation;
    /** The scale in world coordinates. */
    var Scale(default,default):Vector3;
    /** Position in local coordinates. */
    var LocalPosition(default,default):Vector3;
    /** Rotation in local coordinates. */
    var LocalRotation(default,default):Rotation;
    /** Scale in local coordinates. */
    var LocalScale(default,default):Vector3;
    var OnTransformChanged(default,default):system.Action;
    /** Clear any interpolation and force us to reach our final destination immediately. If we own this object we'll tell other clients to clear interpolation too when they receive the next network update from us. */
    function ClearInterpolation():Void;
    function ClearLerp():Void;
    /** Disable the proxy temporarily */
    function DisableProxy():system.IDisposable;
    function LerpTo(target:Transform, frac:Single):Void;
}
