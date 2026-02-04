package;

/** Represents a 4x4 matrix. */
@:native("Matrix")
final extern class Matrix {
    function new(m11:Single, m12:Single, m13:Single, m14:Single, m21:Single, m22:Single, m23:Single, m24:Single, m31:Single, m32:Single, m33:Single, m34:Single, m41:Single, m42:Single, m43:Single, m44:Single):Void;
    /** Returns the multiplicative identity matrix. */
    static var Identity(default,never):Matrix;
    /** Returns inverse of this matrix. */
    var Inverted(default,never):Matrix;
    var M11(default,set):Single;

    private inline function set_M11(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M11 = {1}", this, __value);
    }

    var M12(default,set):Single;

    private inline function set_M12(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M12 = {1}", this, __value);
    }

    var M13(default,set):Single;

    private inline function set_M13(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M13 = {1}", this, __value);
    }

    var M14(default,set):Single;

    private inline function set_M14(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M14 = {1}", this, __value);
    }

    var M21(default,set):Single;

    private inline function set_M21(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M21 = {1}", this, __value);
    }

    var M22(default,set):Single;

    private inline function set_M22(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M22 = {1}", this, __value);
    }

    var M23(default,set):Single;

    private inline function set_M23(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M23 = {1}", this, __value);
    }

    var M24(default,set):Single;

    private inline function set_M24(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M24 = {1}", this, __value);
    }

    var M31(default,set):Single;

    private inline function set_M31(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M31 = {1}", this, __value);
    }

    var M32(default,set):Single;

    private inline function set_M32(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M32 = {1}", this, __value);
    }

    var M33(default,set):Single;

    private inline function set_M33(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M33 = {1}", this, __value);
    }

    var M34(default,set):Single;

    private inline function set_M34(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M34 = {1}", this, __value);
    }

    var M41(default,set):Single;

    private inline function set_M41(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M41 = {1}", this, __value);
    }

    var M42(default,set):Single;

    private inline function set_M42(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M42 = {1}", this, __value);
    }

    var M43(default,set):Single;

    private inline function set_M43(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M43 = {1}", this, __value);
    }

    var M44(default,set):Single;

    private inline function set_M44(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.M44 = {1}", this, __value);
    }

    static function CreateMatrix3D(matrix:Array<Single>):Matrix;
    static function CreateObliqueProjection(cameraTransform:Transform, clipPlane:sandbox.Plane, projectionMatrix:Matrix):Matrix;
    /** Create a projection matrix. The matrix will be in the correct format for the engine. */
    static function CreateProjection(zNear:Single, zFar:Single, fovX:Single, aspectRatio:Single, clipSpace:Null<Vector4>):Matrix;
    static overload function CreateRotation(rot:Rotation):Matrix;
    static overload function CreateRotation(angles:Vector3):Matrix;
    static overload function CreateRotationX(degrees:Single):Matrix;
    static overload function CreateRotationX(degrees:Single, center:Vector3):Matrix;
    static overload function CreateRotationY(degrees:Single):Matrix;
    static overload function CreateRotationY(degrees:Single, center:Vector3):Matrix;
    static overload function CreateRotationZ(degrees:Single):Matrix;
    static overload function CreateRotationZ(degrees:Single, center:Vector3):Matrix;
    static overload function CreateScale(scales:Vector3):Matrix;
    static overload function CreateScale(scales:Vector3, centerPoint:Vector3):Matrix;
    static function CreateSkew(skew:Vector2):Matrix;
    static function CreateSkewX(degrees:Single):Matrix;
    static function CreateSkewY(degrees:Single):Matrix;
    static function CreateTranslation(vec:Vector3):Matrix;
    static function CreateWorld(position:Vector3, forward:Vector3, up:Vector3):Matrix;
    overload function Equals(o:Matrix):Bool;
    overload function Equals(obj:cs.system.Object):Bool;
    function GetHashCode():Int;
    /** Performs linear interpolation from one matrix to another. */
    static function Lerp(ma:Matrix, mb:Matrix, frac:Single):Matrix;
    /** Performs spherical interpolation from one matrix to another. */
    static function Slerp(ma:Matrix, mb:Matrix, frac:Single):Matrix;
    /** Formats the matrix and returns it as a string. */
    function ToString():String;
    /** Transforms a vector by a 4x4 matrix */
    overload function Transform(v:Vector2):Vector2;
    overload function Transform(v:Vector3):Vector3;
    overload function Transform(v:Vector4):Vector4;
    /** Transforms a normal vector by a specified 4x4 matrix */
    function TransformNormal(v:Vector3):Vector3;
    /** Returns transposed version of this matrix, meaning columns in this matrix become rows in the returned matrix and rows in this matrix become columns in the returned one. */
    function Transpose():Matrix;
}
