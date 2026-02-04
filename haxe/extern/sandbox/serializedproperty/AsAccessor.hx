package sandbox.serializedproperty;

@:native("Sandbox.SerializedProperty.AsAccessor")
final extern class AsAccessor {
    var String(default,set):String;

    private inline function set_String(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.String = {1}", this, __value);
    }

    var Vector2(default,set):Vector2;

    private inline function set_Vector2(value:Vector2):Vector2 {
        var __value:Vector2 = cast value;
        return untyped __cs__("{0}.Vector2 = {1}", this, __value);
    }

    var Vector3(default,set):Vector3;

    private inline function set_Vector3(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Vector3 = {1}", this, __value);
    }

    var Rotation(default,set):Rotation;

    private inline function set_Rotation(value:Rotation):Rotation {
        var __value:Rotation = cast value;
        return untyped __cs__("{0}.Rotation = {1}", this, __value);
    }

    var Angles(default,set):Angles;

    private inline function set_Angles(value:Angles):Angles {
        var __value:Angles = cast value;
        return untyped __cs__("{0}.Angles = {1}", this, __value);
    }

    var Float(default,set):Single;

    private inline function set_Float(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.Float = {1}", this, __value);
    }

    var Double(default,set):Float;

    private inline function set_Double(value:Float):Float {
        var __value:Float = cast value;
        return untyped __cs__("{0}.Double = {1}", this, __value);
    }

    var Int(default,set):Int;

    private inline function set_Int(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Int = {1}", this, __value);
    }

    var Long(default,set):haxe.Int64;

    private inline function set_Long(value:haxe.Int64):haxe.Int64 {
        var __value:haxe.Int64 = cast value;
        return untyped __cs__("{0}.Long = {1}", this, __value);
    }

    var Bool(default,set):Bool;

    private inline function set_Bool(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Bool = {1}", this, __value);
    }

}
