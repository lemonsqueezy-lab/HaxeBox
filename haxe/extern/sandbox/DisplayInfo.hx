package sandbox;

/** Collects all the relevant info (such as description, name, icon, etc) from attributes and other sources about a type or type member. */
@:native("Sandbox.DisplayInfo")
final extern class DisplayInfo {
    var ClassName(default,set):String;

    private inline function set_ClassName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.ClassName = {1}", this, __value);
    }

    var Namespace(default,set):String;

    private inline function set_Namespace(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Namespace = {1}", this, __value);
    }

    var Fullname(default,set):String;

    private inline function set_Fullname(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Fullname = {1}", this, __value);
    }

    var Name(default,set):String;

    private inline function set_Name(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Name = {1}", this, __value);
    }

    var Description(default,set):String;

    private inline function set_Description(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Description = {1}", this, __value);
    }

    var Group(default,set):String;

    private inline function set_Group(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Group = {1}", this, __value);
    }

    var ReadOnly(default,set):Bool;

    private inline function set_ReadOnly(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.ReadOnly = {1}", this, __value);
    }

    var Icon(default,set):String;

    private inline function set_Icon(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Icon = {1}", this, __value);
    }

    var Order(default,set):Int;

    private inline function set_Order(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.Order = {1}", this, __value);
    }

    var Browsable(default,set):Bool;

    private inline function set_Browsable(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.Browsable = {1}", this, __value);
    }

    var Placeholder(default,set):String;

    private inline function set_Placeholder(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Placeholder = {1}", this, __value);
    }

    var Alias(default,set):Array<String>;

    private inline function set_Alias(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.Alias = {1}", this, __value);
    }

    var Tags(default,set):Array<String>;

    private inline function set_Tags(value:Array<String>):Array<String> {
        var __value:Array<String> = cast value;
        return untyped __cs__("{0}.Tags = {1}", this, __value);
    }

    /** Retrieves display info about a given objects type. */
    static function For(t:cs.system.Object, inherit:Bool):sandbox.DisplayInfo;
    /** Returns display info for each member of an enumeration type. */
    static overload function ForEnumValues<T>():Array<system.ValueTuple2<T,sandbox.DisplayInfo>>;
    static overload function ForEnumValues(t:cs.system.Type):Array<sandbox.DisplayInfo>;
    /** Retrieves display info about a given member or type. */
    static function ForMember(t:system.reflection.MemberInfo, inherit:Bool):sandbox.DisplayInfo;
    /** Retrieves display info about a given type. */
    static function ForType(t:cs.system.Type, inherit:Bool):sandbox.DisplayInfo;
    /** Returns whether this type or member has given tag. () */
    function HasTag(t:String):Bool;
}
