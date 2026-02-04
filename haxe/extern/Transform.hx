package;

/** A struct containing a position, rotation and scale. This is commonly used in engine to describe entity position, bone position and scene object position. */
@:native("Transform")
final extern class Transform {
    overload function new():Void;
    overload function new(pos:Vector3):Void;
    overload function new(position:Vector3, rotation:Rotation, scale:Single):Void;
    overload function new(position:Vector3, rotation:Rotation, scale:Vector3):Void;
    /** A uniform scale component. Generally the scale is uniform, and we'll just access the .x component. */
    var UniformScale(default,set):Single;

    private inline function set_UniformScale(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.UniformScale = {1}", this, __value);
    }

    var Forward(default,never):Vector3;
    var Backward(default,never):Vector3;
    var Up(default,never):Vector3;
    var Down(default,never):Vector3;
    var Right(default,never):Vector3;
    var Left(default,never):Vector3;
    /** Returns true if position, scale and rotation are valid */
    var IsValid(default,never):Bool;
    /** Return a ray from this transform, which goes from the center along the Forward */
    var ForwardRay(default,never):Ray;
    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Scale(default,set):Vector3;

    private inline function set_Scale(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Scale = {1}", this, __value);
    }

    var Rotation(default,set):Rotation;

    private inline function set_Rotation(value:Rotation):Rotation {
        var __value:Rotation = cast value;
        return untyped __cs__("{0}.Rotation = {1}", this, __value);
    }

    static var Zero(default,never):Transform;
    function Add(position:Vector3, worldSpace:Bool):Transform;
    function AlmostEqual(tx:Transform, delta:Single):Bool;
    /** Concatenate (add together) the 2 given transforms and return a new resulting transform. */
    static function Concat(parent:Transform, local:Transform):Transform;
    overload function Equals(o:Transform):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    static function Lerp(a:Transform, b:Transform, t:Single, clamp:Bool):Transform;
    function LerpTo(target:Transform, t:Single, clamp:Bool):Transform;
    function Mirror(plane:sandbox.Plane):Transform;
    function NormalToLocal(worldNormal:Vector3):Vector3;
    function NormalToWorld(localNormal:Vector3):Vector3;
    /** Given a string, try to convert this into a transform. The format is "px,py,pz,rx,ry,rz,rw". */
    static function Parse(str:String):Transform;
    function PointToLocal(worldPoint:Vector3):Vector3;
    function PointToWorld(localPoint:Vector3):Vector3;
    function RotateAround(center:Vector3, rot:Rotation):Transform;
    function RotationToLocal(worldRot:Rotation):Rotation;
    function RotationToWorld(localRotation:Rotation):Rotation;
    function ToLocal(child:Transform):Transform;
    /** Formats the Transform into a string "pos, rot, scale" */
    function ToString():String;
    function ToWorld(child:Transform):Transform;
    overload function WithPosition(position:Vector3):Transform;
    overload function WithPosition(position:Vector3, rotation:Rotation):Transform;
    function WithRotation(rotation:Rotation):Transform;
    /** Return this transform with a new scale. */
    overload function WithScale(scale:Single):Transform;
    overload function WithScale(scale:Vector3):Transform;
}
