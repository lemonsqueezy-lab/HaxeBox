package sandbox.upgraders;

/** This field is initialized by a named method, for use when hotloading. If no method name is given, the field is deliberately left uninitialized. */
@:native("Sandbox.Upgraders.InitializedByAttribute")
final extern class InitializedByAttribute {
    function new(methodName:String):Void;
    var MethodName(default,never):String;
    var TypeId(default,never):cs.system.Object;
}
