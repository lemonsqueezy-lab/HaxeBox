package sandbox;

@:native("Sandbox.WrappedPropertyGet`1")
final extern class WrappedPropertyGet<T> {
    var Value(default,set):T;

    private inline function set_Value(value:T):T {
        var __value:T = cast value;
        return untyped __cs__("{0}.Value = {1}", this, __value);
    }

    var Object(default,set):cs.system.Object;

    private inline function set_Object(value:cs.system.Object):cs.system.Object {
        var __value:cs.system.Object = cast value;
        return untyped __cs__("{0}.Object = {1}", this, __value);
    }

    var IsStatic(default,set):Bool;

    private inline function set_IsStatic(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsStatic = {1}", this, __value);
    }

    var TypeName(default,set):String;

    private inline function set_TypeName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.TypeName = {1}", this, __value);
    }

    var PropertyName(default,set):String;

    private inline function set_PropertyName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.PropertyName = {1}", this, __value);
    }

    var MemberIdent(default,set):Int;

    private inline function set_MemberIdent(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MemberIdent = {1}", this, __value);
    }

    var Attributes(default,set):Array<system.Attribute>;

    private inline function set_Attributes(value:Array<system.Attribute>):Array<system.Attribute> {
        var __value:Array<system.Attribute> = cast value;
        return untyped __cs__("{0}.Attributes = {1}", this, __value);
    }

    function GetAttribute<U>():U;
}
