package sandbox;

@:native("Sandbox.WrappedMethod`1")
final extern class WrappedMethod<T> {
    var Resume(default,set):system.Func1<T>;

    private inline function set_Resume(value:system.Func1<T>):system.Func1<T> {
        var __value:system.Func1<T> = cast value;
        return untyped __cs__("{0}.Resume = {1}", this, __value);
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

    var MethodName(default,set):String;

    private inline function set_MethodName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.MethodName = {1}", this, __value);
    }

    var MethodIdentity(default,set):Int;

    private inline function set_MethodIdentity(value:Int):Int {
        var __value:Int = cast value;
        return untyped __cs__("{0}.MethodIdentity = {1}", this, __value);
    }

    var GenericArguments(default,set):Array<cs.system.Type>;

    private inline function set_GenericArguments(value:Array<cs.system.Type>):Array<cs.system.Type> {
        var __value:Array<cs.system.Type> = cast value;
        return untyped __cs__("{0}.GenericArguments = {1}", this, __value);
    }

    var Attributes(default,set):Array<system.Attribute>;

    private inline function set_Attributes(value:Array<system.Attribute>):Array<system.Attribute> {
        var __value:Array<system.Attribute> = cast value;
        return untyped __cs__("{0}.Attributes = {1}", this, __value);
    }

    function GetAttribute<U>():U;
}
