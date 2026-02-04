package sandbox.maploader;

/** Holds key values for the map object */
@:native("Sandbox.MapLoader.ObjectEntry")
final extern class ObjectEntry {
    var TypeName(default,set):String;

    private inline function set_TypeName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.TypeName = {1}", this, __value);
    }

    var TargetName(default,set):String;

    private inline function set_TargetName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.TargetName = {1}", this, __value);
    }

    var ParentName(default,set):String;

    private inline function set_ParentName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ParentName = {1}", this, __value);
    }

    var Position(default,set):Vector3;

    private inline function set_Position(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Position = {1}", this, __value);
    }

    var Angles(default,set):Angles;

    private inline function set_Angles(value:Angles):Angles {
        var __value:Angles = cast value;
        return untyped __cs__("{0}.Angles = {1}", this, __value);
    }

    var Rotation(default,set):Rotation;

    private inline function set_Rotation(value:Rotation):Rotation {
        var __value:Rotation = cast value;
        return untyped __cs__("{0}.Rotation = {1}", this, __value);
    }

    var Scales(default,set):Vector3;

    private inline function set_Scales(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Scales = {1}", this, __value);
    }

    var Transform(default,set):Transform;

    private inline function set_Transform(value:Transform):Transform {
        var __value:Transform = cast value;
        return untyped __cs__("{0}.Transform = {1}", this, __value);
    }

    var WorldOrigin(default,set):Vector3;

    private inline function set_WorldOrigin(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.WorldOrigin = {1}", this, __value);
    }

    var Tags(default,set):sandbox.ITagSet;

    private inline function set_Tags(value:sandbox.ITagSet):sandbox.ITagSet {
        var __value:sandbox.ITagSet = cast value;
        return untyped __cs__("{0}.Tags = {1}", this, __value);
    }

    function GetResource<T>(key:String, defaultValue:T):T;
    function GetString(key:String, defaultValue:String):String;
    function GetValue<T>(key:String, defaultValue:T):T;
}
